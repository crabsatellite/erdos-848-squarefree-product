import Erdos848.TailHighRootFourthPower

namespace Erdos848

/-!
# Sharp uniform coefficient for retained root supports

The four possible support primes below `17` are exactly `3, 7, 11, 13`.
Enumerating their sixteen subsets gives

`16 ^ card small ≤ 22 * prod small`.

Every support prime outside this set is at least `17` and therefore pays its
own factor `16`.  Consequently the former coefficient `16^4` can be
replaced by `22`.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private def highRootSmallPrimes : Finset Nat := {3, 7, 11, 13}

private theorem highRootSmallSubset_bound
    (small : Finset Nat)
    (hsub : small ⊆ highRootSmallPrimes) :
    16 ^ small.card ≤ 22 * small.prod id := by
  classical
  have hfinite :
      ∀ s ∈ highRootSmallPrimes.powerset,
        16 ^ s.card ≤ 22 * s.prod id := by
    decide
  exact hfinite small (Finset.mem_powerset.mpr hsub)

private theorem highRootLargeFinset_pow_le_prod
    (large : Finset Nat)
    (hlarge : ∀ p ∈ large, 16 ≤ p) :
    16 ^ large.card ≤ large.prod id := by
  classical
  induction large using Finset.induction_on with
  | empty => simp
  | @insert p rest hp ih =>
      have hpSixteen : 16 ≤ p := hlarge p (by simp)
      have hrest : ∀ q ∈ rest, 16 ≤ q := by
        intro q hq
        exact hlarge q (by simp [hq])
      have hproduct := Nat.mul_le_mul hpSixteen (ih hrest)
      simpa [Finset.card_insert_of_notMem hp,
        Finset.prod_insert hp, pow_succ,
        mul_comm, mul_left_comm, mul_assoc] using hproduct

theorem highRoot_sixteen_pow_length_le_twentyTwo_mul_prod
    {support : List Nat}
    (hprimes : ∀ p, p ∈ support → FiveMillionSupportPrime p)
    (hnodup : support.Nodup) :
    16 ^ support.length ≤ 22 * support.prod := by
  classical
  let all := support.toFinset
  let small := all.filter fun p => p < 17
  let large := all.filter fun p => ¬ p < 17
  have hsmallSubset :
      small ⊆ highRootSmallPrimes := by
    intro p hp
    have hpParts : p ∈ support ∧ p < 17 := by
      have := Finset.mem_filter.mp hp
      exact ⟨List.mem_toFinset.mp this.1, this.2⟩
    have hpList :=
      highRoot_small_prime_mem
        (hprimes p hpParts.1) hpParts.2
    simpa [highRootSmallPrimes] using hpList
  have hsmall :
      16 ^ small.card ≤ 22 * small.prod id :=
    highRootSmallSubset_bound small hsmallSubset
  have hlarge :
      16 ^ large.card ≤ large.prod id := by
    apply highRootLargeFinset_pow_le_prod
    intro p hp
    have hpNot : ¬ p < 17 := (Finset.mem_filter.mp hp).2
    omega
  have hlength :
      small.card + large.card = all.card := by
    simpa [small, large] using
      Finset.card_filter_add_card_filter_not
        (s := all) (fun p => p < 17)
  have hprod :
      small.prod id * large.prod id = all.prod id := by
    simpa [small, large] using
      Finset.prod_filter_mul_prod_filter_not all
        (fun p => p < 17) id
  calc
    16 ^ support.length =
        16 ^ small.card * 16 ^ large.card := by
      rw [← List.toFinset_card_of_nodup hnodup, ← hlength, pow_add]
    _ ≤ (22 * small.prod id) * large.prod id :=
      Nat.mul_le_mul hsmall hlarge
    _ = 22 * all.prod id := by
      rw [← hprod]
      ring
    _ = 22 * support.prod := by
      simpa [all] using congrArg (fun x : Nat => 22 * x)
        (List.prod_toFinset id hnodup)

theorem fiveMillionPivotSupport_sixteen_pow_length_le_twentyTwo
    (pivot : Nat) :
    16 ^ (fiveMillionPivotSupport pivot).length ≤
      22 * (fiveMillionPivotSupport pivot).prod := by
  exact highRoot_sixteen_pow_length_le_twentyTwo_mul_prod
    (fiveMillionPivotSupport_primes pivot)
    (fiveMillionPivotSupport_increasing pivot).nodup

theorem fiveMillionPivotSupport_scaled_two_pow_four_le
    (pivot : Nat) :
    (6 * 2 ^ (fiveMillionPivotSupport pivot).length) ^ 4 ≤
      13 ^ 4 * (fiveMillionPivotSupport pivot).prod := by
  have hbase :=
    fiveMillionPivotSupport_sixteen_pow_length_le_twentyTwo pivot
  calc
    (6 * 2 ^ (fiveMillionPivotSupport pivot).length) ^ 4 =
        6 ^ 4 *
          (2 ^ (fiveMillionPivotSupport pivot).length) ^ 4 := by
      rw [mul_pow]
    _ = 6 ^ 4 *
          16 ^ (fiveMillionPivotSupport pivot).length := by
      have hpow :
          (2 ^ (fiveMillionPivotSupport pivot).length) ^ 4 =
            16 ^ (fiveMillionPivotSupport pivot).length := by
        calc
          (2 ^ (fiveMillionPivotSupport pivot).length) ^ 4 =
              2 ^ ((fiveMillionPivotSupport pivot).length * 4) := by
            rw [pow_mul]
          _ = 2 ^ (4 * (fiveMillionPivotSupport pivot).length) := by
            congr 1
            omega
          _ = (2 ^ 4) ^ (fiveMillionPivotSupport pivot).length := by
            rw [pow_mul]
          _ = 16 ^ (fiveMillionPivotSupport pivot).length := by norm_num
      rw [hpow]
    _ ≤ 6 ^ 4 *
        (22 * (fiveMillionPivotSupport pivot).prod) :=
      Nat.mul_le_mul_left (6 ^ 4) hbase
    _ ≤ 13 ^ 4 *
        (fiveMillionPivotSupport pivot).prod := by
      calc
        6 ^ 4 * (22 * (fiveMillionPivotSupport pivot).prod) =
            (6 ^ 4 * 22) *
              (fiveMillionPivotSupport pivot).prod := by ring
        _ ≤ 13 ^ 4 * (fiveMillionPivotSupport pivot).prod :=
          Nat.mul_le_mul_right
            (fiveMillionPivotSupport pivot).prod (by norm_num)

theorem two_pow_fiveMillionPivotSupport_cast_le_sharp
    {pivot N : Nat}
    (hproduct : (fiveMillionPivotSupport pivot).prod ≤ N) :
    ((2 ^ (fiveMillionPivotSupport pivot).length : Nat) : Rat) ≤
      (13 / 6 : Rat) * (Nat.sqrt (Nat.sqrt N) + 1) := by
  let q := Nat.sqrt (Nat.sqrt N) + 1
  have hNFirst :
      N < (Nat.sqrt N + 1) * (Nat.sqrt N + 1) := by
    simpa [Nat.succ_eq_add_one] using Nat.lt_succ_sqrt N
  have hSqrt :
      Nat.sqrt N < q * q := by
    simpa [q, Nat.succ_eq_add_one] using Nat.lt_succ_sqrt (Nat.sqrt N)
  have hSqrtSucc : Nat.sqrt N + 1 ≤ q * q := by omega
  have hNFourth : N < q ^ 4 := by
    calc
      N < (Nat.sqrt N + 1) * (Nat.sqrt N + 1) := hNFirst
      _ ≤ (q * q) * (q * q) :=
        Nat.mul_le_mul hSqrtSucc hSqrtSucc
      _ = q ^ 4 := by ring
  have hscaledBase :=
    fiveMillionPivotSupport_scaled_two_pow_four_le pivot
  have hscaled :
      (6 * 2 ^ (fiveMillionPivotSupport pivot).length) ^ 4 <
        (13 * q) ^ 4 := by
    calc
      (6 * 2 ^ (fiveMillionPivotSupport pivot).length) ^ 4 ≤
          13 ^ 4 * (fiveMillionPivotSupport pivot).prod :=
        hscaledBase
      _ ≤ 13 ^ 4 * N := Nat.mul_le_mul_left (13 ^ 4) hproduct
      _ < 13 ^ 4 * q ^ 4 :=
        Nat.mul_lt_mul_of_pos_left hNFourth (by positivity)
      _ = (13 * q) ^ 4 := by ring
  have hlinear :
      6 * 2 ^ (fiveMillionPivotSupport pivot).length < 13 * q :=
    (Nat.pow_lt_pow_iff_left (by norm_num : 4 ≠ 0)).mp hscaled
  have hlinearQ :
      (6 : Rat) *
          (2 ^ (fiveMillionPivotSupport pivot).length : Nat) ≤
        13 * q := by
    exact_mod_cast hlinear.le
  dsimp [q] at hlinearQ ⊢
  norm_num at hlinearQ ⊢
  linarith

#print axioms highRoot_sixteen_pow_length_le_twentyTwo_mul_prod
#print axioms fiveMillionPivotSupport_scaled_two_pow_four_le
#print axioms two_pow_fiveMillionPivotSupport_cast_le_sharp

end Erdos848
