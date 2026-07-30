import Erdos848.TailFiveMillionActualSupportCore

namespace Erdos848

/-!
# A uniform fourth-power bound for retained root supports

The finite hybrid root tables use the fact that fewer than nine retained
support primes can occur below two billion.  That fact is not suitable for an
unbounded tail.  This module replaces it by a uniform inequality.

Only `3, 7, 11, 13` can be retained support primes below `17`.  Every later
prime pays one factor `16`, so the fourth power of the usual `2^k` odd-root
count is bounded by `16^4` times the support product.  This is the algebraic
core of the eventual `N^(1/4)` root envelope; it contains no numerical
certificate and no asymptotic premise.
-/

def highRootSmallCount (support : List Nat) : Nat :=
  (support.filter fun p => decide (p < 17)).length

lemma highRoot_sixteen_pow_length_le_small_mul_prod
    {support : List Nat}
    (hpos : ∀ p, p ∈ support → 0 < p) :
    16 ^ support.length ≤
      16 ^ highRootSmallCount support * support.prod := by
  induction support with
  | nil =>
      simp [highRootSmallCount]
  | cons p rest ih =>
      have hp : 0 < p := hpos p (by simp)
      have hrest : ∀ q, q ∈ rest → 0 < q := by
        intro q hq
        exact hpos q (by simp [hq])
      have hi := ih hrest
      by_cases hsmall : p < 17
      · have hfactor : 16 ≤ 16 * p := by
          calc
            16 = 16 * 1 := by simp
            _ ≤ 16 * p := Nat.mul_le_mul_left 16 (by omega)
        have hstep :=
          Nat.mul_le_mul hfactor hi
        simpa [highRootSmallCount, hsmall, pow_succ,
          mul_assoc, mul_comm, mul_left_comm] using hstep
      · have hp16 : 16 ≤ p := by omega
        have hstep :=
          Nat.mul_le_mul hp16 hi
        simpa [highRootSmallCount, hsmall, pow_succ,
          mul_assoc, mul_comm, mul_left_comm] using hstep

lemma highRoot_small_prime_mem
    {p : Nat} (hp : FiveMillionSupportPrime p) (hsmall : p < 17) :
    p ∈ ([3, 7, 11, 13] : List Nat) := by
  have hpTwo : 2 ≤ p := hp.1.two_le
  have hpNeFive : p ≠ 5 := hp.2.2
  have hpNeNine : p ≠ 9 := by
    intro h
    subst p
    norm_num [FiveMillionSupportPrime] at hp
  have hpNeFifteen : p ≠ 15 := by
    intro h
    subst p
    norm_num [FiveMillionSupportPrime] at hp
  have hpOdd : Odd p := hp.2.1
  obtain ⟨k, hk⟩ := hpOdd
  simp only [List.mem_cons]
  omega

lemma highRoot_smallCount_le_four
    {support : List Nat}
    (hprimes : ∀ p, p ∈ support → FiveMillionSupportPrime p)
    (hnodup : support.Nodup) :
    highRootSmallCount support ≤ 4 := by
  let small := support.filter fun p => decide (p < 17)
  have hsmallNodup : small.Nodup := hnodup.filter _
  have hsubset :
      small.toFinset ⊆ ({3, 7, 11, 13} : Finset Nat) := by
    intro p hp
    have hpSmallList : p ∈ small := List.mem_toFinset.mp hp
    have hparts : p ∈ support ∧ p < 17 := by
      simpa [small] using hpSmallList
    simpa using
      highRoot_small_prime_mem (hprimes p hparts.1) hparts.2
  have hcard := Finset.card_le_card hsubset
  rw [List.toFinset_card_of_nodup hsmallNodup] at hcard
  simpa [small, highRootSmallCount] using hcard

theorem highRoot_two_pow_four_le
    {support : List Nat}
    (hprimes : ∀ p, p ∈ support → FiveMillionSupportPrime p)
    (hnodup : support.Nodup) :
    (2 ^ support.length) ^ 4 ≤ 16 ^ 4 * support.prod := by
  have hbase :=
    highRoot_sixteen_pow_length_le_small_mul_prod
      (support := support) (fun p hp => (hprimes p hp).1.pos)
  have hcount := highRoot_smallCount_le_four hprimes hnodup
  calc
    (2 ^ support.length) ^ 4 = 16 ^ support.length := by
      rw [← pow_mul, show 16 = 2 ^ 4 by norm_num, ← pow_mul]
      congr 1
      omega
    _ ≤ 16 ^ highRootSmallCount support * support.prod := hbase
    _ ≤ 16 ^ 4 * support.prod :=
      Nat.mul_le_mul_right support.prod
        (Nat.pow_le_pow_right (by norm_num) hcount)

theorem fiveMillionPivotSupport_two_pow_four_le
    (pivot : Nat) :
    (2 ^ (fiveMillionPivotSupport pivot).length) ^ 4 ≤
      16 ^ 4 * (fiveMillionPivotSupport pivot).prod := by
  apply highRoot_two_pow_four_le
  · exact fiveMillionPivotSupport_primes pivot
  · exact (fiveMillionPivotSupport_increasing pivot).nodup

def highRootFourthCeiling (N : Nat) : Nat :=
  16 * (Nat.sqrt (Nat.sqrt N) + 1)

theorem highRootFourthCeiling_monotone :
    Monotone highRootFourthCeiling := by
  intro left right hle
  unfold highRootFourthCeiling
  gcongr

lemma highRoot_lt_fourthCeiling_of_fourth_le
    {root N : Nat}
    (hroot : root ^ 4 ≤ 16 ^ 4 * N) :
    root < highRootFourthCeiling N := by
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
      _ ≤ (q * q) * (q * q) := Nat.mul_le_mul hSqrtSucc hSqrtSucc
      _ = q ^ 4 := by ring
  have hscaled :
      root ^ 4 < (16 * q) ^ 4 := by
    calc
      root ^ 4 ≤ 16 ^ 4 * N := hroot
      _ < 16 ^ 4 * q ^ 4 :=
        Nat.mul_lt_mul_of_pos_left hNFourth (by positivity)
      _ = (16 * q) ^ 4 := by ring
  have hrootLt : root < 16 * q :=
    (Nat.pow_lt_pow_iff_left (by norm_num : 4 ≠ 0)).mp hscaled
  simpa [highRootFourthCeiling, q] using hrootLt

theorem two_pow_fiveMillionPivotSupport_lt_fourthCeiling
    {pivot N : Nat}
    (hproduct : (fiveMillionPivotSupport pivot).prod ≤ N) :
    2 ^ (fiveMillionPivotSupport pivot).length <
      highRootFourthCeiling N := by
  apply highRoot_lt_fourthCeiling_of_fourth_le
  exact (fiveMillionPivotSupport_two_pow_four_le pivot).trans
    (Nat.mul_le_mul_left (16 ^ 4) hproduct)

#print axioms highRoot_two_pow_four_le
#print axioms fiveMillionPivotSupport_two_pow_four_le
#print axioms highRootFourthCeiling_monotone
#print axioms two_pow_fiveMillionPivotSupport_lt_fourthCeiling

end Erdos848
