import Erdos848.TailGlobalMixedReciprocal
import Erdos848.TailGlobalMixedActualSurvivors
import Erdos848.TailPureEvenRoot
import Erdos848.TailFiveMillionTransformedRoot

namespace Erdos848

/-!
# Mixed transformed roots for arbitrary pivot parity

The odd mixed row uses an odd transformed modulus.  The three even valuation
rows have a possibly even modulus.  Splitting that modulus into its `2`-part
and odd part costs at most the exact factor four proved in
`TailPureEvenRoot`; the odd part has precisely the same non-`2`, non-`5`
support as the pivot.  These are literal root and parameter-set theorems, not
numerical branch assumptions.
-/

lemma globalMixedFactorPivotOddPart_primeFactors_subset
    {factor pivot : ℕ} (hfactor : factor = 5 ∨ factor = 25)
    (hpivotPos : 0 < pivot) :
    (ordCompl[2] (factor * pivot)).primeFactors ⊆
      insert 5 (fiveMillionPivotSupportFinset pivot) := by
  intro q hq
  have hqPrime := Nat.prime_of_mem_primeFactors hq
  have hqDvdOdd := Nat.dvd_of_mem_primeFactors hq
  have hfactorPos : 0 < factor := by rcases hfactor with rfl | rfl <;> norm_num
  have hmodulus : factor * pivot ≠ 0 :=
    mul_ne_zero hfactorPos.ne' hpivotPos.ne'
  have hnotTwoOdd := Nat.not_dvd_ordCompl Nat.prime_two hmodulus
  have hdecomp := Nat.ordProj_mul_ordCompl_eq_self (factor * pivot) 2
  have hqDvd : q ∣ factor * pivot := by
    rw [← hdecomp]
    exact dvd_mul_of_dvd_right hqDvdOdd _
  rcases hqPrime.dvd_mul.mp hqDvd with hqFactor | hqPivot
  · have hqFive : q = 5 := by
      rcases hfactor with rfl | rfl
      · exact (Nat.dvd_prime_two_le Nat.prime_five hqPrime.two_le).mp hqFactor
      · have hqPow : q ∣ 5 ^ 2 := by
          norm_num at hqFactor ⊢
          exact hqFactor
        have hqDvdFive := hqPrime.dvd_of_dvd_pow hqPow
        exact (Nat.dvd_prime_two_le Nat.prime_five hqPrime.two_le).mp
          hqDvdFive
    simpa [hqFive]
  · by_cases hqFive : q = 5
    · simpa [hqFive]
    · apply Finset.mem_insert.mpr
      right
      apply Finset.mem_filter.mpr
      refine ⟨Nat.mem_primeFactors.mpr
        ⟨hqPrime, hqPivot, hpivotPos.ne'⟩, ?_, hqFive⟩
      intro hqTwo
      subst q
      exact hnotTwoOdd hqDvdOdd

lemma globalMixedFactorPivotOddPart_primeFactors_card_le
    {factor pivot : ℕ} (hfactor : factor = 5 ∨ factor = 25)
    (hpivotPos : 0 < pivot) :
    (ordCompl[2] (factor * pivot)).primeFactors.card ≤
      (fiveMillionPivotSupport pivot).length + 1 := by
  have hsubset := globalMixedFactorPivotOddPart_primeFactors_subset
    hfactor hpivotPos
  have hfiveNotMem : 5 ∉ fiveMillionPivotSupportFinset pivot := by
    simp [fiveMillionPivotSupportFinset]
  have hcard := Finset.card_le_card hsubset
  rw [Finset.card_insert_of_notMem hfiveNotMem] at hcard
  simpa [fiveMillionPivotSupport, fiveMillionPivotSupportFinset] using hcard

/-- A normal or five-twist mixed modulus has at most four times the odd-row
root height, for every positive pivot and without a parity hypothesis. -/
theorem globalMixedFactorPivotTransformedRoot_card_le
    {factor pivot m constant : ℕ}
    (hfactor : factor = 5 ∨ factor = 25)
    (hpivotPos : 0 < pivot)
    (hconstant : constant.Coprime (factor * pivot)) :
    (transformedRootResidues m (factor * pivot) constant).card ≤
      4 * 2 ^ ((fiveMillionPivotSupport pivot).length + 1) := by
  let twoPart := ordProj[2] (factor * pivot)
  let oddPart := ordCompl[2] (factor * pivot)
  have hfactorPos : 0 < factor := by rcases hfactor with rfl | rfl <;> norm_num
  have hmodulus : factor * pivot ≠ 0 :=
    mul_ne_zero hfactorPos.ne' hpivotPos.ne'
  have hdecomp : twoPart * oddPart = factor * pivot :=
    Nat.ordProj_mul_ordCompl_eq_self (factor * pivot) 2
  have hcopTwoOdd : Nat.Coprime twoPart oddPart := by
    dsimp [twoPart]
    exact (Nat.coprime_ordCompl Nat.prime_two hmodulus).pow_left _
  have htwoPos : 0 < twoPart := Nat.ordProj_pos _ _
  have hoddPos : 0 < oddPart := Nat.ordCompl_pos _ hmodulus
  have hconstantTwo : constant.Coprime twoPart :=
    Nat.Coprime.of_dvd_right (by rw [← hdecomp]; exact dvd_mul_right _ _)
      hconstant
  have hconstantOdd : constant.Coprime oddPart :=
    Nat.Coprime.of_dvd_right (by rw [← hdecomp]; exact dvd_mul_left _ _)
      hconstant
  have hsplit :
      (transformedRootResidues m (factor * pivot) constant).card ≤
        (transformedRootResidues m twoPart constant).card *
          (transformedRootResidues m oddPart constant).card := by
    rw [← hdecomp]
    exact transformedRootResidues_mul_card_le_mul
      htwoPos hoddPos hcopTwoOdd
  have htwo :
      (transformedRootResidues m twoPart constant).card ≤ 4 := by
    dsimp [twoPart]
    exact transformedRootResidues_twoPow_card_le_four hconstantTwo
  have hoddOdd : Odd oddPart :=
    (Nat.coprime_ordCompl Nat.prime_two hmodulus).odd_of_left
  have hodd :
      (transformedRootResidues m oddPart constant).card ≤
        2 ^ oddPart.primeFactors.card :=
    transformedRootResidues_card_le_two_pow_primeFactors_of_constant
      hoddOdd hconstantOdd
  have hsupport := globalMixedFactorPivotOddPart_primeFactors_card_le
    hfactor hpivotPos
  exact hsplit.trans <| (Nat.mul_le_mul htwo hodd).trans <|
    Nat.mul_le_mul_left 4 (Nat.pow_le_pow_right (by norm_num) hsupport)

theorem globalMixedNormalTransformedRoot_card_le_anyParity
    {pivot baseResidue m : ℕ}
    (hpivotPos : 0 < pivot)
    (hfive : ¬ 5 ∣ pivot * baseResidue + 1) :
    (transformedRootResidues m (25 * pivot)
        (pivot * baseResidue + 1)).card ≤
      4 * 2 ^ ((fiveMillionPivotSupport pivot).length + 1) := by
  exact globalMixedFactorPivotTransformedRoot_card_le
    (Or.inr rfl) hpivotPos (fiveMillionNormalConstant_coprime hfive)

theorem globalMixedFiveTwistTransformedRoot_card_le_anyParity
    {pivot baseResidue m : ℕ}
    (hpivotPos : 0 < pivot)
    (hfive : 5 ∣ pivot * baseResidue + 1)
    (htwentyFive : ¬ 25 ∣ pivot * baseResidue + 1) :
    (transformedRootResidues m (5 * pivot)
        ((pivot * baseResidue + 1) / 5)).card ≤
      4 * 2 ^ ((fiveMillionPivotSupport pivot).length + 1) := by
  exact globalMixedFactorPivotTransformedRoot_card_le
    (Or.inl rfl) hpivotPos
      (fiveMillionFiveTwistConstant_coprime hfive htwentyFive)

/-- Global normal transformed-parameter count for arbitrary pivot parity. -/
theorem globalMixedNormalTransformedParameterSet_card_le_anyParity
    {X Y pivot baseResidue : ℕ} (squareCoset : Bool)
    (hY : 0 < Y) (hpivotPos : 0 < pivot)
    (hfive : ¬ 5 ∣ pivot * baseResidue + 1) :
    ((transformedParameterSet X Y (25 * pivot)
      (pivot * baseResidue + 1)
      (globalMixedNormalSurvivorFinset
        (globalMixedActualMaskedSupport pivot) squareCoset)).card : ℚ) ≤
      (4 * 2 ^ ((fiveMillionPivotSupport pivot).length + 1) : ℕ) *
        (((globalMixedNormalSurvivorFinset
          (globalMixedActualMaskedSupport pivot) squareCoset).card : ℚ) +
          2 * (X : ℚ) / Y) := by
  exact transformedParameterSet_card_le
    (X := X) (Y := Y)
    (globalMixedNormalSurvivorFinset
      (globalMixedActualMaskedSupport pivot) squareCoset)
    hY (by positivity)
    (by
      intro m hm
      exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1)
    (by
      intro m hm
      exact globalMixedNormalTransformedRoot_card_le_anyParity
        hpivotPos hfive)
    (globalMixedNormalSurvivor_reciprocal_sum_le_four
      (globalMixedActualMaskedSupport pivot) squareCoset)

/-- Global five-twist transformed-parameter count for arbitrary pivot
parity. -/
theorem globalMixedFiveTwistTransformedParameterSet_card_le_anyParity
    {X Y pivot baseResidue : ℕ} (squareCoset : Bool)
    (hY : 0 < Y) (hpivotPos : 0 < pivot)
    (hfive : 5 ∣ pivot * baseResidue + 1)
    (htwentyFive : ¬ 25 ∣ pivot * baseResidue + 1) :
    ((transformedParameterSet X Y (5 * pivot)
      ((pivot * baseResidue + 1) / 5)
      (globalMixedTwistSurvivorFinset
        (globalMixedActualMaskedSupport pivot) squareCoset)).card : ℚ) ≤
      (4 * 2 ^ ((fiveMillionPivotSupport pivot).length + 1) : ℕ) *
        (((globalMixedTwistSurvivorFinset
          (globalMixedActualMaskedSupport pivot) squareCoset).card : ℚ) +
          2 * (X : ℚ) / Y) := by
  exact transformedParameterSet_card_le
    (X := X) (Y := Y)
    (globalMixedTwistSurvivorFinset
      (globalMixedActualMaskedSupport pivot) squareCoset)
    hY (by positivity)
    (by
      intro m hm
      exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1)
    (by
      intro m hm
      exact globalMixedFiveTwistTransformedRoot_card_le_anyParity
        hpivotPos hfive htwentyFive)
    (globalMixedTwistSurvivor_reciprocal_sum_le_four
      (globalMixedActualMaskedSupport pivot) squareCoset)

#print axioms globalMixedFactorPivotTransformedRoot_card_le
#print axioms globalMixedNormalTransformedParameterSet_card_le_anyParity
#print axioms globalMixedFiveTwistTransformedParameterSet_card_le_anyParity

end Erdos848
