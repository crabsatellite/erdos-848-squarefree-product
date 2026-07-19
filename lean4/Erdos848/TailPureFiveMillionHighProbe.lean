import Erdos848.TailPureEvenRoot
import Erdos848.TailPureFiveMillionMedium
import Erdos848.TailFiveMillionReciprocal
import Mathlib.Tactic.IrreducibleDef

namespace Erdos848

def probeSurvivorFinset
    (support : List ℕ) (squareCoset : Bool) : Finset ℕ :=
  (Finset.Ico 1 677).filter fun m =>
    oddRootWordOddPointAccepts support squareCoset m

theorem probeSurvivorFinset_card
    (support : List ℕ) (squareCoset : Bool) :
    (probeSurvivorFinset support squareCoset).card =
      oddRootWordSurvivorCountThrough support squareCoset 676 := by
  rw [probeSurvivorFinset]
  exact (oddRootWordSurvivorCountThrough_676_eq_card
    support squareCoset).symm

theorem probeSubset
    (support : List ℕ) (squareCoset : Bool) :
    probeSurvivorFinset support squareCoset ⊆
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

theorem probeReciprocal
    (support : List ℕ) (squareCoset : Bool) :
    (∑ m ∈ probeSurvivorFinset support squareCoset, (1 : ℚ) / m) ≤ 4 := by
  have hsubset := probeSubset support squareCoset
  exact (Finset.sum_le_sum_of_subset_of_nonneg hsubset
    (by intro m hm _; positivity)).trans
      (oddRootWordSurvivor_reciprocal_sum_le_four support squareCoset)

noncomputable irreducible_def probeParameterSet
    (pivot constant : ℕ) (squareCoset : Bool) : Finset ℕ :=
  transformedParameterSet 100_001 192_307 (50 * pivot) constant
    (probeSurvivorFinset (fiveMillionPivotSupport pivot).dropLast squareCoset)

set_option maxRecDepth 1000000 in
theorem probeParameterSet_card_le
    {pivot constant : ℕ} (squareCoset : Bool)
    (hpivotPos : 0 < pivot)
    (hconstant : constant.Coprime (50 * pivot)) :
    ((probeParameterSet pivot constant squareCoset).card : ℚ) ≤
      (4 * 2 ^ ((fiveMillionPivotSupport pivot).length + 1) : ℕ) *
        ((oddRootWordSurvivorCountThrough
          (fiveMillionPivotSupport pivot).dropLast squareCoset 676 : ℕ) +
          2 * (100_001 : ℚ) / 192_307) := by
  rw [probeParameterSet_def]
  have hcount := transformedParameterSet_card_le
    (X := 100_001) (Y := 192_307) (modulus := 50 * pivot)
    (constant := constant)
    (height := 4 * 2 ^ ((fiveMillionPivotSupport pivot).length + 1))
    (probeSurvivorFinset (fiveMillionPivotSupport pivot).dropLast squareCoset)
    (by norm_num) (by positivity)
    (by intro m hm; exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1)
    (by intro m hm; exact pureFiveMillionFiftyTransformedRoot_card_le hpivotPos hconstant)
    (probeReciprocal (fiveMillionPivotSupport pivot).dropLast squareCoset)
  rw [probeSurvivorFinset_card] at hcount
  exact hcount

lemma probeConstantCoprime
    {pivot residue : ℕ}
    (hodd : Odd (pivot * residue + 1))
    (hfive : ¬ 5 ∣ pivot * residue + 1) :
    (pivot * residue + 1).Coprime (50 * pivot) := by
  have htwo : (pivot * residue + 1).Coprime 2 := hodd.coprime_two_right
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

noncomputable irreducible_def probeHighBadPoints
    (points : Finset ℕ) (pivot : ℕ) : Finset ℕ := by
  classical
  exact points.filter fun point =>
    ∃ p : ℕ, Nat.Prime p ∧ 192_307 < p ∧ p ^ 2 ∣ pivot * point + 1

theorem probeHighBadPoints_mem
    {points : Finset ℕ} {pivot point : ℕ}
    (hpoint : point ∈ probeHighBadPoints points pivot) :
    point ∈ points ∧
      ∃ p : ℕ, Nat.Prime p ∧ 192_307 < p ∧ p ^ 2 ∣ pivot * point + 1 := by
  classical
  rw [probeHighBadPoints_def] at hpoint
  exact Finset.mem_filter.mp hpoint

theorem probeParameterSet_mem_of_witness
    {pivot constant t m p : ℕ} {squareCoset : Bool}
    (ht : t < 100_001)
    (hm : m ∈ probeSurvivorFinset
      (fiveMillionPivotSupport pivot).dropLast squareCoset)
    (hpRange : p < constant + (50 * pivot) * 100_001 + 1)
    (hpLarge : 192_307 < p)
    (hequation : p ^ 2 * m = constant + (50 * pivot) * t) :
    t ∈ probeParameterSet pivot constant squareCoset := by
  rw [probeParameterSet_def]
  apply Finset.mem_filter.mpr
  exact ⟨Finset.mem_range.mpr ht,
    m, hm, p, Finset.mem_range.mpr hpRange, hpLarge, hequation⟩

private lemma probeModFive
    {p m constant : ℕ} {squareCoset : Bool}
    (hpFive : ¬ 5 ∣ p)
    (hequation : p ^ 2 * m % 5 = constant % 5)
    (hconstant : modFiveCosetAccepts squareCoset constant = true) :
    modFiveCosetAccepts squareCoset m = true := by
  have hpModNe : p % 5 ≠ 0 := fun h => hpFive (Nat.dvd_iff_mod_eq_zero.mpr h)
  have hpModLt : p % 5 < 5 := Nat.mod_lt _ (by norm_num)
  have hmModLt : m % 5 < 5 := Nat.mod_lt _ (by norm_num)
  have hcModLt : constant % 5 < 5 := Nat.mod_lt _ (by norm_num)
  have hequation' : ((p % 5) ^ 2 * (m % 5)) % 5 = constant % 5 := by
    simpa [Nat.mul_mod, Nat.pow_mod] using hequation
  interval_cases hpMod : p % 5 <;>
    interval_cases hmMod : m % 5 <;>
      interval_cases hcMod : constant % 5 <;>
        cases squareCoset <;>
          simp [modFiveCosetAccepts, hmMod, hcMod] at hconstant ⊢ <;> omega

set_option maxRecDepth 1000000 in
theorem probeHighPoint_mem
    {points : Finset ℕ} {pivot residue point : ℕ} {squareCoset : Bool}
    (hpivotPos : 0 < pivot) (hpivotUpper : pivot ≤ 5_000_000)
    (hpointUpper : ∀ point ∈ points, point ≤ 5_000_000)
    (hresidue : ∀ point ∈ points, point % 50 = residue)
    (hconstantOdd : Odd (pivot * residue + 1))
    (hconstantFive : ¬ 5 ∣ pivot * residue + 1)
    (hcoset : modFiveCosetAccepts squareCoset (pivot * residue + 1) = true)
    (hpoint : point ∈ probeHighBadPoints points pivot) :
    point / 50 ∈ probeParameterSet pivot (pivot * residue + 1) squareCoset := by
  classical
  have hparts := probeHighBadPoints_mem hpoint
  obtain ⟨p, hpPrime, hpLarge, hpDiv⟩ := hparts.2
  obtain ⟨m, hmEquation⟩ := hpDiv
  have hequation : p ^ 2 * m = pivot * point + 1 := hmEquation.symm
  have hpointResidue := hresidue point hparts.1
  have hpointDecomp : point = residue + 50 * (point / 50) := by
    calc
      point = point % 50 + 50 * (point / 50) := (Nat.mod_add_div point 50).symm
      _ = residue + 50 * (point / 50) := by rw [hpointResidue]
  have htransformed : p ^ 2 * m = (pivot * residue + 1) +
      (50 * pivot) * (point / 50) := by
    calc
      p ^ 2 * m = pivot * point + 1 := hequation
      _ = _ := by
        nth_rewrite 1 [hpointDecomp]
        ring
  have htailEven : Even ((50 * pivot) * (point / 50)) := by
    refine ⟨25 * pivot * (point / 50), ?_⟩
    ring
  have hnumeratorOdd : Odd (pivot * point + 1) := by
    rw [hpointDecomp]
    convert hconstantOdd.add_even htailEven using 1 <;> ring
  have hproductOdd : Odd (p ^ 2 * m) := by rw [hequation]; exact hnumeratorOdd
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
  have hpSquareLower : 192_308 ^ 2 ≤ p ^ 2 := pow_le_pow_left' hpLower 2
  have hnumeratorUpper : pivot * point + 1 ≤ 5_000_000 ^ 2 + 1 := by
    have hproduct := Nat.mul_le_mul hpivotUpper (hpointUpper point hparts.1)
    simpa [pow_two] using Nat.add_le_add_right hproduct 1
  have hmUpper : m ≤ 676 := by
    by_contra hnot
    have hmLower : 677 ≤ m := by omega
    have hlower := Nat.mul_le_mul hpSquareLower hmLower
    have hnumeric : 5_000_000 ^ 2 + 1 < 192_308 ^ 2 * 677 := by norm_num
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
  have hmCoset := probeModFive hpFive hequationMod hcoset
  have hallBits := fiveMillionRawQuotient_support_all
    (N := 5_000_000) (pivot := pivot) (point := point) (p := p) (m := m)
    (by norm_num) hpivotPos hpivotUpper hmPos (hmUpper.trans (by norm_num)) hequation
  have hmAccept : oddRootWordOddPointAccepts
      (fiveMillionPivotSupport pivot).dropLast squareCoset m = true := by
    simpa only [oddRootWordOddPointAccepts, hmModTwo, decide_true,
      Bool.true_and, oddRootWordPointAccepts, hmCoset, hallBits]
  have hmSurvivor : m ∈ probeSurvivorFinset
      (fiveMillionPivotSupport pivot).dropLast squareCoset :=
    Finset.mem_filter.mpr ⟨Finset.mem_Ico.mpr ⟨hmPos, by omega⟩, hmAccept⟩
  have hparameterRange : point / 50 < 100_001 := by
    have hdiv := Nat.div_le_div_right (c := 50)
      (hpointUpper point hparts.1)
    norm_num at hdiv ⊢
    omega
  have hpProduct : p < p ^ 2 * m := by
    have hpSquare : p < p ^ 2 := by
      rw [pow_two]
      calc
        p = p * 1 := by simp
        _ < p * p := Nat.mul_lt_mul_of_pos_left hpPrime.one_lt hpPrime.pos
    exact hpSquare.trans_le (by simpa using Nat.mul_le_mul_left (p ^ 2) hmPos)
  have hparameterLe :
      (pivot * residue + 1) + (50 * pivot) * (point / 50) ≤
        (pivot * residue + 1) + (50 * pivot) * 100_001 := by
    gcongr
  rw [htransformed] at hpProduct
  apply probeParameterSet_mem_of_witness
    hparameterRange hmSurvivor (by omega) hpLarge htransformed

#print axioms probeSurvivorFinset_card
#print axioms probeReciprocal
#print axioms probeParameterSet_card_le
#print axioms probeConstantCoprime
#print axioms probeHighPoint_mem

end Erdos848
