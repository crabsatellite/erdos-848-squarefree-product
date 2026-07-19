import Erdos848.TailPureEvenRoot
import Erdos848.TailPureFiveMillionMedium
import Erdos848.TailFiveMillionReciprocal
import Mathlib.Tactic.IrreducibleDef

namespace Erdos848

/-!
# Literal high-prime payment at five million

The point set below contains exactly the witnesses with prime square
`p²`, `p > 192307`.  Opposite parity makes the complementary quotient odd;
the quotient bound is `m ≤ 676`.  The generated support prefix and the
uniform root theorem then pay the literal set, not a numerical surrogate.
-/

def pureFiveMillionOddSurvivorFinset
    (support : List ℕ) (squareCoset : Bool) : Finset ℕ :=
  (Finset.Ico 1 677).filter fun m =>
    oddRootWordOddPointAccepts support squareCoset m

theorem pureFiveMillionOddSurvivorFinset_card
    (support : List ℕ) (squareCoset : Bool) :
    (pureFiveMillionOddSurvivorFinset support squareCoset).card =
      oddRootWordSurvivorCountThrough support squareCoset 676 := by
  rw [pureFiveMillionOddSurvivorFinset]
  exact (oddRootWordSurvivorCountThrough_676_eq_card
    support squareCoset).symm

#check pureFiveMillionOddSurvivorFinset_card

theorem pureFiveMillionOddSurvivorFinset_subset
    (support : List ℕ) (squareCoset : Bool) :
    pureFiveMillionOddSurvivorFinset support squareCoset ⊆
      oddRootWordSurvivorFinset support squareCoset := by
  intro m hm
  have hparts := Finset.mem_filter.mp hm
  apply Finset.mem_filter.mpr
  constructor
  · have hmIco := Finset.mem_Ico.mp hparts.1
    exact Finset.mem_Ico.mpr (by omega)
  · have haccepts :
        decide (m % 2 = 1) = true ∧
          oddRootWordPointAccepts support squareCoset m = true := by
      simpa only [oddRootWordOddPointAccepts, Bool.and_eq_true] using hparts.2
    exact haccepts.2

#check pureFiveMillionOddSurvivorFinset_subset

theorem pureFiveMillionOddSurvivor_reciprocal_sum_le_four
    (support : List ℕ) (squareCoset : Bool) :
    (∑ m ∈ pureFiveMillionOddSurvivorFinset support squareCoset,
        (1 : ℚ) / m) ≤ 4 := by
  have hsubset := pureFiveMillionOddSurvivorFinset_subset support squareCoset
  exact (Finset.sum_le_sum_of_subset_of_nonneg hsubset
    (by intro m hm _; positivity)).trans
      (oddRootWordSurvivor_reciprocal_sum_le_four support squareCoset)

#check pureFiveMillionOddSurvivor_reciprocal_sum_le_four

noncomputable irreducible_def pureFiveMillionHighParameterSet
    (pivot constant : ℕ) (squareCoset : Bool) : Finset ℕ :=
  transformedParameterSet 100_001 192_307 (50 * pivot) constant
    (pureFiveMillionOddSurvivorFinset
      (fiveMillionPivotSupport pivot).dropLast squareCoset)

#check pureFiveMillionHighParameterSet

set_option maxRecDepth 1000000 in
theorem pureFiveMillionFiftyTransformedParameterSet_card_le
    {pivot constant : ℕ} (squareCoset : Bool)
    (hpivotPos : 0 < pivot)
    (hconstant : constant.Coprime (50 * pivot)) :
    ((pureFiveMillionHighParameterSet pivot constant squareCoset).card : ℚ) ≤
      (4 * 2 ^ ((fiveMillionPivotSupport pivot).length + 1) : ℕ) *
        ((oddRootWordSurvivorCountThrough
          (fiveMillionPivotSupport pivot).dropLast squareCoset 676 : ℕ) +
          2 * (100_001 : ℚ) / 192_307) := by
  rw [pureFiveMillionHighParameterSet_def]
  have hcount := transformedParameterSet_card_le
    (X := 100_001) (Y := 192_307) (modulus := 50 * pivot)
    (constant := constant)
    (height := 4 * 2 ^ ((fiveMillionPivotSupport pivot).length + 1))
    (pureFiveMillionOddSurvivorFinset
      (fiveMillionPivotSupport pivot).dropLast squareCoset)
    (by norm_num) (by positivity)
    (by
      intro m hm
      exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1)
    (by
      intro m hm
      exact pureFiveMillionFiftyTransformedRoot_card_le
        hpivotPos hconstant)
    (pureFiveMillionOddSurvivor_reciprocal_sum_le_four
      (fiveMillionPivotSupport pivot).dropLast squareCoset)
  rw [pureFiveMillionOddSurvivorFinset_card] at hcount
  exact hcount

#check pureFiveMillionFiftyTransformedParameterSet_card_le

lemma pureFiftyConstant_coprime
    {pivot residue : ℕ}
    (hodd : Odd (pivot * residue + 1))
    (hfive : ¬ 5 ∣ pivot * residue + 1) :
    (pivot * residue + 1).Coprime (50 * pivot) := by
  have htwo : (pivot * residue + 1).Coprime 2 :=
    hodd.coprime_two_right
  have hfive : (pivot * residue + 1).Coprime 5 :=
    (Nat.prime_five.coprime_iff_not_dvd.mpr hfive).symm
  have htwentyFive : (pivot * residue + 1).Coprime 25 := by
    have := hfive.pow_right 2
    norm_num at this ⊢
    exact this
  have hfifty : (pivot * residue + 1).Coprime 50 := by
    have := Nat.Coprime.mul_right htwo htwentyFive
    norm_num at this ⊢
    exact this
  have hpivot : (pivot * residue + 1).Coprime pivot := by
    simpa [add_comm] using
      (Nat.coprime_add_mul_left_left 1 pivot residue).mpr
        (by simp : (1 : ℕ).Coprime pivot)
  exact Nat.Coprime.mul_right hfifty hpivot

#check pureFiftyConstant_coprime

private lemma pure_modFiveCosetAccepts_of_square_scaled
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

noncomputable irreducible_def pureFiveMillionHighBadPoints
    (points : Finset ℕ) (pivot : ℕ) : Finset ℕ :=
  by
    classical
    exact points.filter fun point =>
      ∃ p : ℕ, Nat.Prime p ∧ 192_307 < p ∧
        p ^ 2 ∣ pivot * point + 1

theorem pureFiveMillionHighBadPoints_mem
    {points : Finset ℕ} {pivot point : ℕ}
    (hpoint : point ∈ pureFiveMillionHighBadPoints points pivot) :
    point ∈ points ∧
      ∃ p : ℕ, Nat.Prime p ∧ 192_307 < p ∧
        p ^ 2 ∣ pivot * point + 1 := by
  classical
  rw [pureFiveMillionHighBadPoints_def] at hpoint
  exact Finset.mem_filter.mp hpoint

set_option maxRecDepth 1000000 in
/-- Literal high-prime payment for any one sharp residue class modulo `50`. -/
theorem pureFiveMillionHighBadPoints_card_cast_le
    (points : Finset ℕ) (pivot residue : ℕ)
    (hpivotPos : 0 < pivot) (hpivotUpper : pivot ≤ 5_000_000)
    (hpointUpper : ∀ point ∈ points, point ≤ 5_000_000)
    (hresidue : ∀ point ∈ points, point % 50 = residue)
    (hresidueLt : residue < 50)
    (hconstantOdd : Odd (pivot * residue + 1))
    (hconstantFive : ¬ 5 ∣ pivot * residue + 1) :
    ((pureFiveMillionHighBadPoints points pivot).card : ℚ) ≤
      pureFiveMillionRootEnvelope := by
  classical
  obtain ⟨squareCoset, hcoset⟩ :=
    exists_modFiveCosetAccepts_of_not_dvd hconstantFive
  let support := (fiveMillionPivotSupport pivot).dropLast
  let target := pureFiveMillionHighParameterSet
    pivot (pivot * residue + 1) squareCoset
  let parameter : ℕ → ℕ := fun point => point / 50
  have hmap : Set.MapsTo parameter
      (pureFiveMillionHighBadPoints points pivot : Set ℕ)
      (target : Set ℕ) := by
    intro point hpoint
    have hparts := pureFiveMillionHighBadPoints_mem hpoint
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
    have hpLower : 192_308 ≤ p := by omega
    have hpSquareLower : 192_308 ^ 2 ≤ p ^ 2 :=
      pow_le_pow_left' hpLower 2
    have hnumeratorUpper : pivot * point + 1 ≤ 5_000_000 ^ 2 + 1 := by
      have hproduct := Nat.mul_le_mul hpivotUpper (hpointUpper point hparts.1)
      simpa [pow_two] using Nat.add_le_add_right hproduct 1
    have hmUpper : m ≤ 676 := by
      by_contra hnot
      have hmLower : 677 ≤ m := by omega
      have hlower := Nat.mul_le_mul hpSquareLower hmLower
      have hnumeric : 5_000_000 ^ 2 + 1 < 192_308 ^ 2 * 677 := by
        norm_num
      have himpossible : 192_308 ^ 2 * 677 ≤ 5_000_000 ^ 2 + 1 := by
        calc
          192_308 ^ 2 * 677 ≤ p ^ 2 * m := hlower
          _ = pivot * point + 1 := hequation
          _ ≤ 5_000_000 ^ 2 + 1 := hnumeratorUpper
      omega
    have hpFive : ¬ 5 ∣ p := by
      intro hpDvd
      have hpEq : 5 = p :=
        (Nat.prime_dvd_prime_iff_eq (by norm_num) hpPrime).mp hpDvd
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
    have hmCoset := pure_modFiveCosetAccepts_of_square_scaled
      hpFive hequationMod hcoset
    have hallBits := fiveMillionRawQuotient_support_all
      (N := 5_000_000) (pivot := pivot) (point := point)
      (p := p) (m := m) (by norm_num) hpivotPos hpivotUpper
      hmPos (hmUpper.trans (by norm_num)) hequation
    have hmAccept : oddRootWordOddPointAccepts support squareCoset m = true := by
      simpa only [oddRootWordOddPointAccepts, hmModTwo, decide_true,
        Bool.true_and, oddRootWordPointAccepts, hmCoset, hallBits]
    have hmSurvivor : m ∈
        pureFiveMillionOddSurvivorFinset support squareCoset := by
      exact Finset.mem_filter.mpr
        ⟨Finset.mem_Ico.mpr ⟨hmPos, by omega⟩, hmAccept⟩
    have hparameterRange : point / 50 < 100_001 := by
      have hdiv := Nat.div_le_div_right (c := 50)
        (hpointUpper point hparts.1)
      norm_num at hdiv ⊢
      omega
    change point / 50 ∈
      pureFiveMillionHighParameterSet pivot (pivot * residue + 1) squareCoset
    rw [pureFiveMillionHighParameterSet_def]
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
          (pivot * residue + 1) + (50 * pivot) * 100_001 := by
      gcongr
    rw [htransformed] at hpProduct
    omega
  have hinjective : Set.InjOn parameter
      (pureFiveMillionHighBadPoints points pivot : Set ℕ) := by
    intro a ha b hb hab
    rw [pureFiveMillionHighBadPoints_def] at ha hb
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
      (pureFiveMillionHighBadPoints points pivot).card ≤ target.card :=
    Finset.card_le_card_of_injOn parameter hmap hinjective
  have hcardQ :
      ((pureFiveMillionHighBadPoints points pivot).card : ℚ) ≤
        (target.card : ℚ) := by exact_mod_cast hcardNat
  have hconstantCoprime := pureFiftyConstant_coprime
    hconstantOdd hconstantFive
  have htarget := pureFiveMillionFiftyTransformedParameterSet_card_le
    (pivot := pivot) (constant := pivot * residue + 1)
    squareCoset hpivotPos hconstantCoprime
  change ((target.card : ℚ) ≤ _) at htarget
  have hspacing :
      (oddRootWordSurvivorCountThrough support squareCoset 676 : ℚ) +
          2 * (100_001 : ℚ) / 192_307 ≤
        (oddRootWordSurvivorCountThrough support squareCoset 676 : ℚ) +
          26_001 / 25_000 := by
    norm_num
  have hscaled := mul_le_mul_of_nonneg_left hspacing
    (show (0 : ℚ) ≤ 4 * 2 ^ ((fiveMillionPivotSupport pivot).length + 1) by
      positivity)
  have hprofile := pureFiveMillionActualSupport_root_payment_le
    (fiveMillionPivotSupport pivot) squareCoset
    (fiveMillionPivotSupport_primes pivot)
    (fiveMillionPivotSupport_increasing pivot)
    (fiveMillionPivotSupport_prod_le hpivotPos
      (hpivotUpper.trans (by norm_num)))
  change
    (4 * (2 : ℚ) ^ ((fiveMillionPivotSupport pivot).length + 1)) *
        ((oddRootWordSurvivorCountThrough support squareCoset 676 : ℚ) +
          26_001 / 25_000) ≤ pureFiveMillionRootEnvelope at hprofile
  have hroot :
      ((4 * 2 ^ ((fiveMillionPivotSupport pivot).length + 1) : ℕ) : ℚ) *
          ((oddRootWordSurvivorCountThrough
            (fiveMillionPivotSupport pivot).dropLast squareCoset 676 : ℕ) +
            2 * (100_001 : ℚ) / 192_307) ≤
        pureFiveMillionRootEnvelope := by
    push_cast
    simpa [support] using hscaled.trans hprofile
  exact hcardQ.trans (htarget.trans hroot)

theorem pureFiveMillionA7HighBad_card_le
    (parity : Bool)
    (pivot : ↥(pureA18ParityBlock 5_000_000 parity)) :
    (pureFiveMillionHighBadPoints
      (pureA7OppositeParityBlock 5_000_000 parity) pivot.1).card ≤ 3_604 := by
  have hpivotParts := Finset.mem_filter.mp pivot.2
  have hpivotBounds := Finset.mem_Icc.mp
    (Finset.mem_filter.mp hpivotParts.1).1
  let residue : ℕ := if parity then 32 else 7
  have hpivotMod50 := pureA18ParityBlock_residue
    5_000_000 parity pivot.2
  have hpivotModFive : pivot.1 % 5 = 3 := by
    have hmod := hpivotMod50.of_dvd (by norm_num : 5 ∣ 50)
    cases parity <;> simpa [Nat.ModEq] using hmod
  have hconstantOdd : Odd (pivot.1 * residue + 1) := by
    dsimp [residue]
    cases parity with
    | false =>
        have hpivotModTwo : pivot.1 % 2 = 0 := by
          simpa using hpivotParts.2
        have hpivotEven : Even pivot.1 := by
          rw [even_iff_two_dvd]
          exact Nat.dvd_of_mod_eq_zero hpivotModTwo
        exact (hpivotEven.mul_right 7).add_one
    | true =>
        exact (show Even 32 by norm_num).mul_left pivot.1 |>.add_one
  have hconstantFive : ¬ 5 ∣ pivot.1 * residue + 1 := by
    intro hdiv
    have hzero := Nat.dvd_iff_mod_eq_zero.mp hdiv
    dsimp [residue] at hzero
    cases parity <;>
      norm_num [Nat.mul_mod, Nat.add_mod, hpivotModFive] at hzero
  have hq := pureFiveMillionHighBadPoints_card_cast_le
    (points := pureA7OppositeParityBlock 5_000_000 parity)
    (pivot := pivot.1) (residue := residue)
    hpivotBounds.1 hpivotBounds.2
    (by
      intro point hpoint
      exact (Finset.mem_Icc.mp
        (Finset.mem_filter.mp (Finset.mem_filter.mp hpoint).1).1).2)
    (by
      intro point hpoint
      have hmod := pureA7OppositeParityBlock_residue
        5_000_000 parity hpoint
      cases parity <;> simpa [residue, Nat.ModEq] using hmod)
    (by cases parity <;> norm_num [residue])
    hconstantOdd hconstantFive
  have hlt :
      ((pureFiveMillionHighBadPoints
        (pureA7OppositeParityBlock 5_000_000 parity) pivot.1).card : ℚ) <
          3_605 :=
    hq.trans_lt (by norm_num [pureFiveMillionRootEnvelope])
  have hltNat :
      (pureFiveMillionHighBadPoints
        (pureA7OppositeParityBlock 5_000_000 parity) pivot.1).card < 3_605 := by
    exact_mod_cast hlt
  omega

theorem pureFiveMillionA18HighBad_card_le
    (parity : Bool)
    (pivot : ↥(pureA7OppositeParityBlock 5_000_000 parity)) :
    (pureFiveMillionHighBadPoints
      (pureA18ParityBlock 5_000_000 parity) pivot.1).card ≤ 3_604 := by
  have hpivotParts := Finset.mem_filter.mp pivot.2
  have hpivotBounds := Finset.mem_Icc.mp
    (Finset.mem_filter.mp hpivotParts.1).1
  let residue : ℕ := if parity then 43 else 18
  have hpivotMod50 := pureA7OppositeParityBlock_residue
    5_000_000 parity pivot.2
  have hpivotModFive : pivot.1 % 5 = 2 := by
    have hmod := hpivotMod50.of_dvd (by norm_num : 5 ∣ 50)
    cases parity <;> simpa [Nat.ModEq] using hmod
  have hconstantOdd : Odd (pivot.1 * residue + 1) := by
    dsimp [residue]
    cases parity with
    | false =>
        exact (show Even 18 by norm_num).mul_left pivot.1 |>.add_one
    | true =>
        have hpivotModTwo : pivot.1 % 2 = 0 := by
          simpa using hpivotParts.2
        have hpivotEven : Even pivot.1 := by
          rw [even_iff_two_dvd]
          exact Nat.dvd_of_mod_eq_zero hpivotModTwo
        exact (hpivotEven.mul_right 43).add_one
  have hconstantFive : ¬ 5 ∣ pivot.1 * residue + 1 := by
    intro hdiv
    have hzero := Nat.dvd_iff_mod_eq_zero.mp hdiv
    dsimp [residue] at hzero
    cases parity <;>
      norm_num [Nat.mul_mod, Nat.add_mod, hpivotModFive] at hzero
  have hq := pureFiveMillionHighBadPoints_card_cast_le
    (points := pureA18ParityBlock 5_000_000 parity)
    (pivot := pivot.1) (residue := residue)
    hpivotBounds.1 hpivotBounds.2
    (by
      intro point hpoint
      exact (Finset.mem_Icc.mp
        (Finset.mem_filter.mp (Finset.mem_filter.mp hpoint).1).1).2)
    (by
      intro point hpoint
      have hmod := pureA18ParityBlock_residue 5_000_000 parity hpoint
      cases parity <;> simpa [residue, Nat.ModEq] using hmod)
    (by cases parity <;> norm_num [residue])
    hconstantOdd hconstantFive
  have hlt :
      ((pureFiveMillionHighBadPoints
        (pureA18ParityBlock 5_000_000 parity) pivot.1).card : ℚ) < 3_605 :=
    hq.trans_lt (by norm_num [pureFiveMillionRootEnvelope])
  have hltNat :
      (pureFiveMillionHighBadPoints
        (pureA18ParityBlock 5_000_000 parity) pivot.1).card < 3_605 := by
    exact_mod_cast hlt
  omega

#print axioms pureFiveMillionOddSurvivorFinset_card
#print axioms pureFiveMillionHighBadPoints_card_cast_le
#print axioms pureFiveMillionA7HighBad_card_le
#print axioms pureFiveMillionA18HighBad_card_le

end Erdos848
