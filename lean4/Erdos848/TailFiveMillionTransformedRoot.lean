import Erdos848.TailFiveMillionActualSupportCore
import Erdos848.TailFiveMillionReciprocal
import Erdos848.TailQuadraticRootCounting

namespace Erdos848

/-!
# Actual five-million transformed-root classes

The two valuation branches use moduli `25 * pivot` and `5 * pivot`.
Their distinct prime factors are exactly controlled by the actual pivot
support, with one extra factor for five.  This turns the abstract height
`2 ^ (support.length + 1)` into a theorem about literal modular roots.
-/

lemma fiveMillionFactorPivot_primeFactors_subset
    {factor pivot : ℕ} (hfactor : factor = 5 ∨ factor = 25)
    (hpivotPos : 0 < pivot) (hpivotOdd : Odd pivot) :
    (factor * pivot).primeFactors ⊆
      insert 5 (fiveMillionPivotSupportFinset pivot) := by
  intro q hq
  rw [Nat.primeFactors_mul (by rcases hfactor with rfl | rfl <;> norm_num)
    hpivotPos.ne'] at hq
  rcases Finset.mem_union.mp hq with hqFactor | hqPivot
  · rcases hfactor with rfl | rfl
    · have hqPrime := Nat.prime_of_mem_primeFactors hqFactor
      have hqDvdFive := Nat.dvd_of_mem_primeFactors hqFactor
      have hqFive : q = 5 :=
        (Nat.dvd_prime_two_le Nat.prime_five hqPrime.two_le).mp
          hqDvdFive
      simpa [hqFive]
    · have hqPrime := Nat.prime_of_mem_primeFactors hqFactor
      have hqDvd25 := Nat.dvd_of_mem_primeFactors hqFactor
      have hqDvdPow : q ∣ 5 ^ 2 := by
        norm_num at hqDvd25 ⊢
        exact hqDvd25
      have hqDvdFive : q ∣ 5 := hqPrime.dvd_of_dvd_pow hqDvdPow
      have hqFive : q = 5 :=
        (Nat.dvd_prime_two_le Nat.prime_five hqPrime.two_le).mp hqDvdFive
      simpa [hqFive]
  · by_cases hqFive : q = 5
    · simpa [hqFive]
    · have hqPrime := Nat.prime_of_mem_primeFactors hqPivot
      have hqDvd := Nat.dvd_of_mem_primeFactors hqPivot
      have hqTwo : q ≠ 2 := by
        intro hqEq
        subst q
        exact hpivotOdd.not_two_dvd_nat hqDvd
      apply Finset.mem_insert.mpr
      right
      exact Finset.mem_filter.mpr ⟨hqPivot, hqTwo, hqFive⟩

lemma fiveMillionFactorPivot_primeFactors_card_le
    {factor pivot : ℕ} (hfactor : factor = 5 ∨ factor = 25)
    (hpivotPos : 0 < pivot) (hpivotOdd : Odd pivot) :
    (factor * pivot).primeFactors.card ≤
      (fiveMillionPivotSupport pivot).length + 1 := by
  have hsubset := fiveMillionFactorPivot_primeFactors_subset
    hfactor hpivotPos hpivotOdd
  have hfiveNotMem : 5 ∉ fiveMillionPivotSupportFinset pivot := by
    simp [fiveMillionPivotSupportFinset]
  have hcard := Finset.card_le_card hsubset
  rw [Finset.card_insert_of_notMem hfiveNotMem] at hcard
  simpa [fiveMillionPivotSupport, fiveMillionPivotSupportFinset] using hcard

lemma fiveMillionPivotBaseConstant_coprime_pivot
    (pivot baseResidue : ℕ) :
    (pivot * baseResidue + 1).Coprime pivot := by
  simpa [add_comm] using
    (Nat.coprime_add_mul_left_left 1 pivot baseResidue).mpr
      (by simp : (1 : ℕ).Coprime pivot)

lemma fiveMillionNormalConstant_coprime
    {pivot baseResidue : ℕ}
    (hfive : ¬ 5 ∣ pivot * baseResidue + 1) :
    (pivot * baseResidue + 1).Coprime (25 * pivot) := by
  have hfiveCoprime : (5 : ℕ).Coprime (pivot * baseResidue + 1) :=
    Nat.prime_five.coprime_iff_not_dvd.mpr hfive
  have htwentyFive : (pivot * baseResidue + 1).Coprime 25 := by
    have := (hfiveCoprime.pow_left 2).symm
    norm_num at this ⊢
    exact this
  exact Nat.Coprime.mul_right htwentyFive
    (fiveMillionPivotBaseConstant_coprime_pivot pivot baseResidue)

lemma fiveMillionFiveTwistConstant_not_five_dvd
    {pivot baseResidue : ℕ}
    (hfive : 5 ∣ pivot * baseResidue + 1)
    (htwentyFive : ¬ 25 ∣ pivot * baseResidue + 1) :
    ¬ 5 ∣ (pivot * baseResidue + 1) / 5 := by
  intro hquotient
  apply htwentyFive
  rw [show 25 = 5 * 5 by norm_num]
  exact (Nat.dvd_div_iff_mul_dvd hfive).mp hquotient

lemma fiveMillionFiveTwistConstant_coprime
    {pivot baseResidue : ℕ}
    (hfive : 5 ∣ pivot * baseResidue + 1)
    (htwentyFive : ¬ 25 ∣ pivot * baseResidue + 1) :
    ((pivot * baseResidue + 1) / 5).Coprime (5 * pivot) := by
  have hquotientFive : ((pivot * baseResidue + 1) / 5).Coprime 5 :=
    (Nat.prime_five.coprime_iff_not_dvd.mpr
      (fiveMillionFiveTwistConstant_not_five_dvd hfive htwentyFive)).symm
  have hquotientPivot : ((pivot * baseResidue + 1) / 5).Coprime pivot :=
    Nat.Coprime.of_dvd_left (Nat.div_dvd_of_dvd hfive)
      (fiveMillionPivotBaseConstant_coprime_pivot pivot baseResidue)
  exact Nat.Coprime.mul_right hquotientFive hquotientPivot

theorem fiveMillionNormalTransformedRoot_card_le
    {pivot baseResidue m : ℕ}
    (hpivotPos : 0 < pivot) (hpivotOdd : Odd pivot)
    (hfive : ¬ 5 ∣ pivot * baseResidue + 1) :
    (transformedRootResidues m (25 * pivot)
        (pivot * baseResidue + 1)).card ≤
      2 ^ ((fiveMillionPivotSupport pivot).length + 1) := by
  have hroot :=
    transformedRootResidues_card_le_two_pow_primeFactors_of_constant
      (m := m)
      ((by norm_num : Odd 25).mul hpivotOdd)
      (fiveMillionNormalConstant_coprime hfive)
  exact hroot.trans (Nat.pow_le_pow_right (by norm_num)
    (fiveMillionFactorPivot_primeFactors_card_le (Or.inr rfl)
      hpivotPos hpivotOdd))

theorem fiveMillionFiveTwistTransformedRoot_card_le
    {pivot baseResidue m : ℕ}
    (hpivotPos : 0 < pivot) (hpivotOdd : Odd pivot)
    (hfive : 5 ∣ pivot * baseResidue + 1)
    (htwentyFive : ¬ 25 ∣ pivot * baseResidue + 1) :
    (transformedRootResidues m (5 * pivot)
        ((pivot * baseResidue + 1) / 5)).card ≤
      2 ^ ((fiveMillionPivotSupport pivot).length + 1) := by
  have hroot :=
    transformedRootResidues_card_le_two_pow_primeFactors_of_constant
      (m := m)
      ((by norm_num : Odd 5).mul hpivotOdd)
      (fiveMillionFiveTwistConstant_coprime hfive htwentyFive)
  exact hroot.trans (Nat.pow_le_pow_right (by norm_num)
    (fiveMillionFactorPivot_primeFactors_card_le (Or.inl rfl)
      hpivotPos hpivotOdd))

theorem fiveMillionNormalTransformedParameterSet_card_le
    {X Y pivot baseResidue : ℕ} (squareCoset : Bool)
    (hY : 0 < Y) (hpivotPos : 0 < pivot) (hpivotOdd : Odd pivot)
    (hfive : ¬ 5 ∣ pivot * baseResidue + 1) :
    ((transformedParameterSet X Y (25 * pivot)
      (pivot * baseResidue + 1)
      (oddRootWordSurvivorFinset
        (fiveMillionPivotSupport pivot).dropLast squareCoset)).card : ℚ) ≤
      (2 ^ ((fiveMillionPivotSupport pivot).length + 1) : ℕ) *
        ((oddRootWordSurvivorCount
          (fiveMillionPivotSupport pivot).dropLast squareCoset : ℕ) +
          2 * (X : ℚ) / Y) := by
  have hcount := transformedParameterSet_card_le
    (X := X) (Y := Y)
    (oddRootWordSurvivorFinset
      (fiveMillionPivotSupport pivot).dropLast squareCoset)
    hY (by positivity : 0 < 25 * pivot)
    (by
      intro m hm
      exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1)
    (by
      intro m hm
      exact fiveMillionNormalTransformedRoot_card_le
        hpivotPos hpivotOdd hfive)
    (oddRootWordSurvivor_reciprocal_sum_le_four
      (fiveMillionPivotSupport pivot).dropLast squareCoset)
  rw [oddRootWordSurvivorFinset_card] at hcount
  exact hcount

theorem fiveMillionFiveTwistTransformedParameterSet_card_le
    {X Y pivot baseResidue : ℕ} (squareCoset : Bool)
    (hY : 0 < Y) (hpivotPos : 0 < pivot) (hpivotOdd : Odd pivot)
    (hfive : 5 ∣ pivot * baseResidue + 1)
    (htwentyFive : ¬ 25 ∣ pivot * baseResidue + 1) :
    ((transformedParameterSet X Y (5 * pivot)
      ((pivot * baseResidue + 1) / 5)
      (oddRootFiveTwistSurvivorFinset
        (fiveMillionPivotSupport pivot).dropLast squareCoset)).card : ℚ) ≤
      (2 ^ ((fiveMillionPivotSupport pivot).length + 1) : ℕ) *
        ((oddRootFiveTwistSurvivorCount
          (fiveMillionPivotSupport pivot).dropLast squareCoset : ℕ) +
          2 * (X : ℚ) / Y) := by
  have hcount := transformedParameterSet_card_le
    (X := X) (Y := Y)
    (oddRootFiveTwistSurvivorFinset
      (fiveMillionPivotSupport pivot).dropLast squareCoset)
    hY (by positivity : 0 < 5 * pivot)
    (by
      intro m hm
      exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1)
    (by
      intro m hm
      exact fiveMillionFiveTwistTransformedRoot_card_le
        hpivotPos hpivotOdd hfive htwentyFive)
    (oddRootFiveTwistSurvivor_reciprocal_sum_le_four
      (fiveMillionPivotSupport pivot).dropLast squareCoset)
  rw [oddRootFiveTwistSurvivorFinset_card] at hcount
  exact hcount

#print axioms fiveMillionNormalTransformedRoot_card_le
#print axioms fiveMillionFiveTwistTransformedRoot_card_le
#print axioms fiveMillionNormalTransformedParameterSet_card_le
#print axioms fiveMillionFiveTwistTransformedParameterSet_card_le

end Erdos848
