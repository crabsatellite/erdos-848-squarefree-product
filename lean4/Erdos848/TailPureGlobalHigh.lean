import Erdos848.TailGlobalPureSupportComplete

namespace Erdos848

/-!
# Uniform high-prime payment from the five-million cut

This module uses the single split `Y = N / 26` for every `N ≥ 5,000,000`.
The quotient bound remains `m ≤ 676`; no interval of values of `N` is
enumerated.  The QR screen is exactly `globalPureSupportScreen`, so support
primes outside the certified mask table are never queried.
-/

noncomputable irreducible_def pureGlobalHighParameterSet
    (N pivot constant : ℕ) (squareCoset : Bool) : Finset ℕ :=
  transformedParameterSet (N / 50 + 1) (N / 26) (50 * pivot) constant
    (pureFiveMillionOddSurvivorFinset
      (globalPureSupportScreen (fiveMillionPivotSupport pivot)) squareCoset)

set_option maxRecDepth 1000000 in
theorem pureGlobalFiftyTransformedParameterSet_card_le
    {N pivot constant : ℕ} (squareCoset : Bool)
    (hN : 5_000_000 ≤ N)
    (hpivotPos : 0 < pivot)
    (hconstant : constant.Coprime (50 * pivot)) :
    ((pureGlobalHighParameterSet N pivot constant squareCoset).card : ℚ) ≤
      (4 * 2 ^ ((fiveMillionPivotSupport pivot).length + 1) : ℕ) *
        ((oddRootWordSurvivorCountThrough
          (globalPureSupportScreen (fiveMillionPivotSupport pivot))
          squareCoset 676 : ℕ) +
          2 * ((N / 50 + 1 : ℕ) : ℚ) / (N / 26 : ℕ)) := by
  rw [pureGlobalHighParameterSet_def]
  have hY : 0 < N / 26 := by omega
  have hcount := transformedParameterSet_card_le
    (X := N / 50 + 1) (Y := N / 26) (modulus := 50 * pivot)
    (constant := constant)
    (height := 4 * 2 ^ ((fiveMillionPivotSupport pivot).length + 1))
    (pureFiveMillionOddSurvivorFinset
      (globalPureSupportScreen (fiveMillionPivotSupport pivot)) squareCoset)
    hY (by positivity)
    (by
      intro m hm
      exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1)
    (by
      intro m hm
      exact pureFiveMillionFiftyTransformedRoot_card_le
        hpivotPos hconstant)
    (pureFiveMillionOddSurvivor_reciprocal_sum_le_four
      (globalPureSupportScreen (fiveMillionPivotSupport pivot)) squareCoset)
  rw [pureFiveMillionOddSurvivorFinset_card] at hcount
  exact hcount

theorem pureGlobalHighParameterSet_card_div_le_rootUpper
    {N pivot constant : ℕ} (squareCoset : Bool)
    (hN : 5_000_000 ≤ N)
    (hpivotPos : 0 < pivot)
    (hconstant : constant.Coprime (50 * pivot)) :
    ((pureGlobalHighParameterSet N pivot constant squareCoset).card : ℚ) / N ≤
      globalPureRootUpperRow N (N / 26)
        (4 * 2 ^ ((fiveMillionPivotSupport pivot).length + 1))
        (oddRootWordSurvivorCountThrough
          (globalPureSupportScreen (fiveMillionPivotSupport pivot))
          squareCoset 676) := by
  let height := 4 * 2 ^ ((fiveMillionPivotSupport pivot).length + 1)
  let survivors := oddRootWordSurvivorCountThrough
    (globalPureSupportScreen (fiveMillionPivotSupport pivot)) squareCoset 676
  have hNpos : 0 < N := by omega
  have hYpos : 0 < N / 26 := by omega
  have hNQ : (0 : ℚ) < N := by exact_mod_cast hNpos
  have hYQ : (0 : ℚ) < (N / 26 : ℕ) := by exact_mod_cast hYpos
  have hFloorNat : (N / 50) * 50 ≤ N := Nat.div_mul_le_self N 50
  have hFloorQ : ((N / 50 : ℕ) : ℚ) ≤ (N : ℚ) / 50 := by
    have hFloorCast : (((N / 50) * 50 : ℕ) : ℚ) ≤ N := by
      exact_mod_cast hFloorNat
    push_cast at hFloorCast
    linarith
  have hXQ : (((N / 50 + 1 : ℕ) : ℚ)) ≤ (N : ℚ) / 50 + 1 := by
    push_cast
    linarith
  have hTail :
      2 * (((N / 50 + 1 : ℕ) : ℚ)) / (N / 26 : ℕ) ≤
        (N : ℚ) / (25 * (N / 26 : ℕ)) +
          2 / (N / 26 : ℕ) := by
    calc
      2 * (((N / 50 + 1 : ℕ) : ℚ)) / (N / 26 : ℕ) ≤
          2 * ((N : ℚ) / 50 + 1) / (N / 26 : ℕ) := by
        exact div_le_div_of_nonneg_right
          (mul_le_mul_of_nonneg_left hXQ (by norm_num)) hYQ.le
      _ = (N : ℚ) / (25 * (N / 26 : ℕ)) +
          2 / (N / 26 : ℕ) := by ring
  have hcard := pureGlobalFiftyTransformedParameterSet_card_le
    squareCoset hN hpivotPos hconstant
  change ((pureGlobalHighParameterSet N pivot constant squareCoset).card : ℚ) ≤
      height * ((survivors : ℚ) +
        2 * (((N / 50 + 1 : ℕ) : ℚ)) / (N / 26 : ℕ)) at hcard
  calc
    ((pureGlobalHighParameterSet N pivot constant squareCoset).card : ℚ) / N ≤
        (height : ℚ) * ((survivors : ℚ) +
          2 * (((N / 50 + 1 : ℕ) : ℚ)) / (N / 26 : ℕ)) / N :=
      div_le_div_of_nonneg_right hcard hNQ.le
    _ ≤ (height : ℚ) * ((survivors : ℚ) +
          ((N : ℚ) / (25 * (N / 26 : ℕ)) +
            2 / (N / 26 : ℕ))) / N := by
      gcongr
    _ = globalPureRootUpperRow N (N / 26) height survivors := by
      unfold globalPureRootUpperRow
      field_simp [ne_of_gt hNQ, ne_of_gt hYQ]
      <;> ring

theorem pureGlobalHighParameterSet_card_div_le_envelope
    {N pivot constant : ℕ} (squareCoset : Bool)
    (hN : 5_000_000 ≤ N)
    (hpivotPos : 0 < pivot) (hpivotUpper : pivot ≤ N)
    (hconstant : constant.Coprime (50 * pivot)) :
    ((pureGlobalHighParameterSet N pivot constant squareCoset).card : ℚ) / N ≤
      pureFiveMillionRootEnvelope / 5_000_000 := by
  exact (pureGlobalHighParameterSet_card_div_le_rootUpper
    squareCoset hN hpivotPos hconstant).trans
      (globalActualSupport_root_upper
        (fiveMillionPivotSupport pivot) squareCoset hN
        (fiveMillionPivotSupport_primes pivot)
        (fiveMillionPivotSupport_increasing pivot)
        (fiveMillionPivotSupport_prod_le hpivotPos hpivotUpper))

private lemma global_modFiveCosetAccepts_of_square_scaled
    {p m constant : ℕ} {squareCoset : Bool}
    (hpFive : ¬ 5 ∣ p)
    (hequation : p ^ 2 * m % 5 = constant % 5)
    (hconstant : modFiveCosetAccepts squareCoset constant = true) :
    modFiveCosetAccepts squareCoset m = true := by
  have hpModNe : p % 5 ≠ 0 := fun h =>
    hpFive (Nat.dvd_iff_mod_eq_zero.mpr h)
  have hpModLt : p % 5 < 5 := Nat.mod_lt _ (by norm_num)
  have hmModLt : m % 5 < 5 := Nat.mod_lt _ (by norm_num)
  have hcModLt : constant % 5 < 5 := Nat.mod_lt _ (by norm_num)
  have hequation' : ((p % 5) ^ 2 * (m % 5)) % 5 = constant % 5 := by
    simpa [Nat.mul_mod, Nat.pow_mod] using hequation
  interval_cases hpMod : p % 5 <;>
    interval_cases hmMod : m % 5 <;>
      interval_cases hcMod : constant % 5 <;>
        cases squareCoset <;>
          simp [modFiveCosetAccepts, hpMod, hmMod, hcMod] at hconstant ⊢ <;>
          omega

noncomputable irreducible_def pureGlobalHighBadPoints
    (N : ℕ) (points : Finset ℕ) (pivot : ℕ) : Finset ℕ :=
  by
    classical
    exact points.filter fun point =>
      ∃ p : ℕ, Nat.Prime p ∧ N / 26 < p ∧
        p ^ 2 ∣ pivot * point + 1

theorem pureGlobalHighBadPoints_mem
    {N : ℕ} {points : Finset ℕ} {pivot point : ℕ}
    (hpoint : point ∈ pureGlobalHighBadPoints N points pivot) :
    point ∈ points ∧
      ∃ p : ℕ, Nat.Prime p ∧ N / 26 < p ∧
        p ^ 2 ∣ pivot * point + 1 := by
  classical
  rw [pureGlobalHighBadPoints_def] at hpoint
  exact Finset.mem_filter.mp hpoint

set_option maxRecDepth 1000000 in
/-- Uniform literal high-prime payment in one residue class modulo `50`. -/
theorem pureGlobalHighBadPoints_card_div_le_envelope
    (N : ℕ) (points : Finset ℕ) (pivot residue : ℕ)
    (hN : 5_000_000 ≤ N)
    (hpivotPos : 0 < pivot) (hpivotUpper : pivot ≤ N)
    (hpointUpper : ∀ point ∈ points, point ≤ N)
    (hresidue : ∀ point ∈ points, point % 50 = residue)
    (hresidueLt : residue < 50)
    (hconstantOdd : Odd (pivot * residue + 1))
    (hconstantFive : ¬ 5 ∣ pivot * residue + 1) :
    ((pureGlobalHighBadPoints N points pivot).card : ℚ) / N ≤
      pureFiveMillionRootEnvelope / 5_000_000 := by
  classical
  obtain ⟨squareCoset, hcoset⟩ :=
    exists_modFiveCosetAccepts_of_not_dvd hconstantFive
  let support := globalPureSupportScreen (fiveMillionPivotSupport pivot)
  let target := pureGlobalHighParameterSet
    N pivot (pivot * residue + 1) squareCoset
  let parameter : ℕ → ℕ := fun point => point / 50
  have hmap : Set.MapsTo parameter
      (pureGlobalHighBadPoints N points pivot : Set ℕ)
      (target : Set ℕ) := by
    intro point hpoint
    have hparts := pureGlobalHighBadPoints_mem hpoint
    obtain ⟨p, hpPrime, hpLarge, hpDiv⟩ := hparts.2
    obtain ⟨m, hmEquation⟩ := hpDiv
    have hequation : p ^ 2 * m = pivot * point + 1 := hmEquation.symm
    have hpointResidue := hresidue point hparts.1
    have hpointDecomp : point = residue + 50 * (point / 50) := by
      calc
        point = point % 50 + 50 * (point / 50) :=
          (Nat.mod_add_div point 50).symm
        _ = residue + 50 * (point / 50) := by rw [hpointResidue]
    have htransformed :
        p ^ 2 * m = (pivot * residue + 1) +
          (50 * pivot) * (point / 50) := by
      calc
        p ^ 2 * m = pivot * point + 1 := hequation
        _ = (pivot * residue + 1) +
            (50 * pivot) * (point / 50) := by
          nth_rewrite 1 [hpointDecomp]
          ring
    have htailEven : Even ((50 * pivot) * (point / 50)) := by
      refine ⟨25 * pivot * (point / 50), ?_⟩
      ring
    have hnumeratorOdd : Odd (pivot * point + 1) := by
      rw [hpointDecomp]
      convert hconstantOdd.add_even htailEven using 1 <;> ring
    have hproductOdd : Odd (p ^ 2 * m) := by
      rw [hequation]
      exact hnumeratorOdd
    have hmOdd : Odd m := Nat.Odd.of_mul_right hproductOdd
    have hmModTwo : m % 2 = 1 := by
      have hlt := Nat.mod_lt m (by norm_num : 0 < 2)
      have hne : m % 2 ≠ 0 := by
        intro hzero
        exact hmOdd.not_two_dvd_nat (Nat.dvd_iff_mod_eq_zero.mpr hzero)
      omega
    have hmPos : 1 ≤ m := by
      apply Nat.one_le_iff_ne_zero.mpr
      intro hmZero
      subst m
      simp at hequation
    have hpLower : N / 26 + 1 ≤ p := by omega
    have hpSquareLower : (N / 26 + 1) ^ 2 ≤ p ^ 2 :=
      pow_le_pow_left' hpLower 2
    have hnumeratorUpper : pivot * point + 1 ≤ N ^ 2 + 1 := by
      have hproduct := Nat.mul_le_mul hpivotUpper (hpointUpper point hparts.1)
      simpa [pow_two] using Nat.add_le_add_right hproduct 1
    have hNBelow : N < 26 * (N / 26 + 1) := by omega
    have hnumeric : N ^ 2 + 1 < (N / 26 + 1) ^ 2 * 677 := by
      nlinarith
    have hmUpper : m ≤ 676 := by
      by_contra hnot
      have hmLower : 677 ≤ m := by omega
      have hlower := Nat.mul_le_mul hpSquareLower hmLower
      have himpossible : (N / 26 + 1) ^ 2 * 677 ≤ N ^ 2 + 1 := by
        calc
          (N / 26 + 1) ^ 2 * 677 ≤ p ^ 2 * m := hlower
          _ = pivot * point + 1 := hequation
          _ ≤ N ^ 2 + 1 := hnumeratorUpper
      omega
    have hpFive : ¬ 5 ∣ p := by
      intro hpDvd
      have hpEq : 5 = p :=
        (Nat.prime_dvd_prime_iff_eq (by norm_num) hpPrime).mp hpDvd
      subst p
      omega
    have hmFive : ¬ 5 ∣ m := by
      intro hmDvd
      have hleft : 5 ∣ p ^ 2 * m := dvd_mul_of_dvd_right hmDvd _
      rw [htransformed] at hleft
      have htail : 5 ∣ (50 * pivot) * (point / 50) := by
        have hfactor : 5 ∣ 50 * pivot := ⟨10 * pivot, by ring⟩
        exact dvd_mul_of_dvd_left hfactor _
      exact hconstantFive ((Nat.dvd_add_iff_left htail).mpr hleft)
    have hequationMod : p ^ 2 * m % 5 = (pivot * residue + 1) % 5 := by
      have hmod := congrArg (fun value : ℕ => value % 5) htransformed
      simpa [Nat.add_mod, Nat.mul_mod] using hmod
    have hmCoset := global_modFiveCosetAccepts_of_square_scaled
      hpFive hequationMod hcoset
    have hallBits := globalRawQuotient_support_all hmPos hmUpper hequation
    have hmAccept : oddRootWordOddPointAccepts support squareCoset m = true := by
      simpa only [oddRootWordOddPointAccepts, hmModTwo, decide_true,
        Bool.true_and, oddRootWordPointAccepts, hmCoset, hallBits]
    have hmSurvivor : m ∈
        pureFiveMillionOddSurvivorFinset support squareCoset := by
      exact Finset.mem_filter.mpr
        ⟨Finset.mem_Ico.mpr ⟨hmPos, by omega⟩, hmAccept⟩
    have hparameterRange : point / 50 < N / 50 + 1 := by
      have hdiv := Nat.div_le_div_right (c := 50)
        (hpointUpper point hparts.1)
      omega
    change point / 50 ∈
      pureGlobalHighParameterSet N pivot (pivot * residue + 1) squareCoset
    rw [pureGlobalHighParameterSet_def]
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_range.mpr hparameterRange, ?_⟩
    refine ⟨m, hmSurvivor, p, ?_, hpLarge, htransformed⟩
    apply Finset.mem_range.mpr
    have hpProduct : p < p ^ 2 * m := by
      have hpSquare : p < p ^ 2 := by
        rw [pow_two]
        calc
          p = p * 1 := by simp
          _ < p * p := Nat.mul_lt_mul_of_pos_left hpPrime.one_lt hpPrime.pos
      exact hpSquare.trans_le (by
        simpa using Nat.mul_le_mul_left (p ^ 2) hmPos)
    have hparameterLe :
        (pivot * residue + 1) + (50 * pivot) * (point / 50) ≤
          (pivot * residue + 1) + (50 * pivot) * (N / 50 + 1) := by
      gcongr
    rw [htransformed] at hpProduct
    omega
  have hinjective : Set.InjOn parameter
      (pureGlobalHighBadPoints N points pivot : Set ℕ) := by
    intro a ha b hb hab
    rw [pureGlobalHighBadPoints_def] at ha hb
    have haPoint := (Finset.mem_filter.mp ha).1
    have hbPoint := (Finset.mem_filter.mp hb).1
    have hmod : a % 50 = b % 50 := by
      rw [hresidue a haPoint, hresidue b hbPoint]
    calc
      a = a % 50 + 50 * (a / 50) := (Nat.mod_add_div a 50).symm
      _ = b % 50 + 50 * (b / 50) := by
        rw [hmod]
        change a / 50 = b / 50 at hab
        rw [hab]
      _ = b := Nat.mod_add_div b 50
  have hcardNat :
      (pureGlobalHighBadPoints N points pivot).card ≤ target.card :=
    Finset.card_le_card_of_injOn parameter hmap hinjective
  have hcardQ :
      ((pureGlobalHighBadPoints N points pivot).card : ℚ) / N ≤
        (target.card : ℚ) / N := by
    apply div_le_div_of_nonneg_right _ (by positivity)
    exact_mod_cast hcardNat
  have hconstantCoprime := pureFiftyConstant_coprime
    hconstantOdd hconstantFive
  have htarget := pureGlobalHighParameterSet_card_div_le_envelope
    (N := N) (pivot := pivot) (constant := pivot * residue + 1)
    squareCoset hN hpivotPos hpivotUpper hconstantCoprime
  change ((target.card : ℚ) / N ≤ _) at htarget
  exact hcardQ.trans htarget

#print axioms pureGlobalFiftyTransformedParameterSet_card_le
#print axioms pureGlobalHighParameterSet_card_div_le_rootUpper
#print axioms pureGlobalHighParameterSet_card_div_le_envelope
#print axioms pureGlobalHighBadPoints_card_div_le_envelope

end Erdos848
