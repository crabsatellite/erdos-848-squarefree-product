import Erdos848.TailGlobalMixedEvenRoot
import Erdos848.TailRefinedTransformedRootCounting

namespace Erdos848

/-!
# Mixed transformed roots after one retained prime-square condition

Expanding a normal or five-twist modulus by `q^2` introduces at most the one
new distinct odd prime `q`.  Hence the odd-part root height gains at most a
factor two, while the already sharp factor four for the two-part is unchanged.
-/

lemma globalMixedFactorPivotPrimeSquareOddPart_primeFactors_subset
    {factor pivot q : ℕ} (hfactor : factor = 5 ∨ factor = 25)
    (hpivotPos : 0 < pivot) (hq : Nat.Prime q) :
    (ordCompl[2] ((factor * pivot) * q ^ 2)).primeFactors ⊆
      insert q (insert 5 (fiveMillionPivotSupportFinset pivot)) := by
  intro r hr
  have hrPrime := Nat.prime_of_mem_primeFactors hr
  have hrDvdOdd := Nat.dvd_of_mem_primeFactors hr
  have hfactorPos : 0 < factor := by
    rcases hfactor with rfl | rfl <;> norm_num
  have hmodulus : (factor * pivot) * q ^ 2 ≠ 0 :=
    mul_ne_zero (mul_ne_zero hfactorPos.ne' hpivotPos.ne')
      (pow_ne_zero 2 hq.ne_zero)
  have hnotTwoOdd := Nat.not_dvd_ordCompl Nat.prime_two hmodulus
  have hdecomp := Nat.ordProj_mul_ordCompl_eq_self
    ((factor * pivot) * q ^ 2) 2
  have hrDvd : r ∣ (factor * pivot) * q ^ 2 := by
    rw [← hdecomp]
    exact dvd_mul_of_dvd_right hrDvdOdd _
  rcases hrPrime.dvd_mul.mp hrDvd with hrBase | hrQSquare
  · rcases hrPrime.dvd_mul.mp hrBase with hrFactor | hrPivot
    · have hrFive : r = 5 := by
        rcases hfactor with rfl | rfl
        · exact (Nat.dvd_prime_two_le Nat.prime_five hrPrime.two_le).mp
            hrFactor
        · have hrPow : r ∣ 5 ^ 2 := by
            norm_num at hrFactor ⊢
            exact hrFactor
          have hrDvdFive := hrPrime.dvd_of_dvd_pow hrPow
          exact (Nat.dvd_prime_two_le Nat.prime_five hrPrime.two_le).mp
            hrDvdFive
      simp [hrFive]
    · by_cases hrFive : r = 5
      · simp [hrFive]
      · apply Finset.mem_insert.mpr
        right
        apply Finset.mem_insert.mpr
        right
        apply Finset.mem_filter.mpr
        refine ⟨Nat.mem_primeFactors.mpr
          ⟨hrPrime, hrPivot, hpivotPos.ne'⟩, ?_, hrFive⟩
        intro hrTwo
        subst r
        exact hnotTwoOdd hrDvdOdd
  · have hrDvdQ : r ∣ q := hrPrime.dvd_of_dvd_pow hrQSquare
    have hrEq : r = q :=
      (Nat.prime_dvd_prime_iff_eq hrPrime hq).mp hrDvdQ
    simp [hrEq]

lemma globalMixedFactorPivotPrimeSquareOddPart_primeFactors_card_le
    {factor pivot q : ℕ} (hfactor : factor = 5 ∨ factor = 25)
    (hpivotPos : 0 < pivot) (hq : Nat.Prime q) :
    (ordCompl[2] ((factor * pivot) * q ^ 2)).primeFactors.card ≤
      (fiveMillionPivotSupport pivot).length + 2 := by
  let support := fiveMillionPivotSupportFinset pivot
  have hsubset :=
    globalMixedFactorPivotPrimeSquareOddPart_primeFactors_subset
      hfactor hpivotPos hq
  have hfiveNotMem : 5 ∉ support := by
    simp [support, fiveMillionPivotSupportFinset]
  have hcard := Finset.card_le_card hsubset
  calc
    (ordCompl[2] ((factor * pivot) * q ^ 2)).primeFactors.card ≤
        (insert q (insert 5 support)).card := hcard
    _ ≤ (insert 5 support).card + 1 := Finset.card_insert_le _ _
    _ = support.card + 2 := by
      rw [Finset.card_insert_of_notMem hfiveNotMem]
    _ = (fiveMillionPivotSupport pivot).length + 2 := by
      simp [support, fiveMillionPivotSupport,
        fiveMillionPivotSupportFinset]

/-- The expanded normal/five-twist modulus has the old mixed root height with
at most one additional odd-prime factor. -/
theorem globalMixedFactorPivotPrimeSquareTransformedRoot_card_le
    {factor pivot q m constant : ℕ}
    (hfactor : factor = 5 ∨ factor = 25)
    (hpivotPos : 0 < pivot) (hq : Nat.Prime q)
    (hconstant : constant.Coprime ((factor * pivot) * q ^ 2)) :
    (transformedRootResidues m ((factor * pivot) * q ^ 2) constant).card ≤
      4 * 2 ^ ((fiveMillionPivotSupport pivot).length + 2) := by
  let modulus := (factor * pivot) * q ^ 2
  let twoPart := ordProj[2] modulus
  let oddPart := ordCompl[2] modulus
  have hfactorPos : 0 < factor := by
    rcases hfactor with rfl | rfl <;> norm_num
  have hmodulus : modulus ≠ 0 := by
    dsimp [modulus]
    exact mul_ne_zero (mul_ne_zero hfactorPos.ne' hpivotPos.ne')
      (pow_ne_zero 2 hq.ne_zero)
  have hdecomp : twoPart * oddPart = modulus :=
    Nat.ordProj_mul_ordCompl_eq_self modulus 2
  have hcopTwoOdd : Nat.Coprime twoPart oddPart := by
    dsimp [twoPart]
    exact (Nat.coprime_ordCompl Nat.prime_two hmodulus).pow_left _
  have htwoPos : 0 < twoPart := Nat.ordProj_pos _ _
  have hoddPos : 0 < oddPart := Nat.ordCompl_pos _ hmodulus
  have hconstantMod : constant.Coprime modulus := by
    simpa [modulus] using hconstant
  have htwoDvd : twoPart ∣ modulus := by
    rw [← hdecomp]
    exact dvd_mul_right _ _
  have hoddDvd : oddPart ∣ modulus := by
    rw [← hdecomp]
    exact dvd_mul_left _ _
  have hconstantTwo : constant.Coprime twoPart :=
    Nat.Coprime.of_dvd_right htwoDvd hconstantMod
  have hconstantOdd : constant.Coprime oddPart :=
    Nat.Coprime.of_dvd_right hoddDvd hconstantMod
  have hsplit :
      (transformedRootResidues m modulus constant).card ≤
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
  have hsupport :=
    globalMixedFactorPivotPrimeSquareOddPart_primeFactors_card_le
      hfactor hpivotPos hq
  exact hsplit.trans <| (Nat.mul_le_mul htwo hodd).trans <|
    Nat.mul_le_mul_left 4 (Nat.pow_le_pow_right (by norm_num) (by
      simpa [oddPart, modulus] using hsupport))

#print axioms globalMixedFactorPivotPrimeSquareOddPart_primeFactors_card_le
#print axioms globalMixedFactorPivotPrimeSquareTransformedRoot_card_le

end Erdos848
