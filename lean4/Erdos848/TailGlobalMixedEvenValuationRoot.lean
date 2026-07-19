import Erdos848.TailGlobalMixedEvenSurvivors

namespace Erdos848

/-!
# Sharp two-adic root factors for the three even valuation rows

The uniform arbitrary-parity bound costs four two-adic roots.  The first two
valuation rows have exact two-parts `2` and `4`, so their true costs are one
and two.  The third row retains the uniform cost four.  This file proves those
factors from the literal modular-root sets.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem transformedRootResidues_two_card_le_one
    {m constant : Nat} (hconstant : constant.Coprime 2) :
    (transformedRootResidues m 2 constant).card ≤ 1 := by
  classical
  have hsubset : transformedRootResidues m 2 constant ⊆ {1} := by
    intro residue hresidue
    have hparts := transformedRootResidues_equation hresidue
    have hnotTwo : ¬ 2 ∣ residue :=
      quadraticRoot_not_dvd_prime (q := 2) (exponent := 1)
        (m := m) (constant := constant) (residue := residue)
        Nat.prime_two (by norm_num)
        (by simpa only [pow_one] using hconstant)
        (by simpa only [pow_one] using hparts.2)
    have hmodNe : residue % 2 ≠ 0 := by
      intro hzero
      exact hnotTwo (Nat.dvd_iff_mod_eq_zero.mpr hzero)
    have hmodLt := Nat.mod_lt residue (by norm_num : 0 < 2)
    have hresidue : residue = 1 := by omega
    simp [hresidue]
  simpa using Finset.card_le_card hsubset

theorem transformedRootResidues_four_card_le_two
    {m constant : Nat} (hconstant : constant.Coprime 4) :
    (transformedRootResidues m 4 constant).card ≤ 2 := by
  classical
  have hsubset : transformedRootResidues m 4 constant ⊆ {1, 3} := by
    intro residue hresidue
    have hparts := transformedRootResidues_equation hresidue
    have hnotTwo : ¬ 2 ∣ residue :=
      quadraticRoot_not_dvd_prime (q := 2) (exponent := 2)
        (m := m) (constant := constant) (residue := residue)
        Nat.prime_two (by norm_num)
        (by norm_num at hconstant ⊢; exact hconstant)
        (by norm_num at hparts ⊢; exact hparts.2)
    have hmodNe : residue % 2 ≠ 0 := by
      intro hzero
      exact hnotTwo (Nat.dvd_iff_mod_eq_zero.mpr hzero)
    have hmodLt := Nat.mod_lt residue (by norm_num : 0 < 2)
    have hcases : residue = 1 ∨ residue = 3 := by omega
    simpa [hcases]
  simpa using Finset.card_le_card hsubset

lemma globalMixedOddDivisor_primeFactors_subset
    {factor pivot oddPart : Nat}
    (hfactor : factor = 5 ∨ factor = 25)
    (hpivotPos : 0 < pivot)
    (hoddPart : Odd oddPart)
    (hdiv : oddPart ∣ factor * pivot) :
    oddPart.primeFactors ⊆
      insert 5 (fiveMillionPivotSupportFinset pivot) := by
  intro q hq
  have hqPrime := Nat.prime_of_mem_primeFactors hq
  have hoddPartNe : oddPart ≠ 0 := by
    intro hzero
    subst oddPart
    simp at hoddPart
  have hqDvdOdd := Nat.dvd_of_mem_primeFactors hq
  have hqDvd : q ∣ factor * pivot := dvd_trans hqDvdOdd hdiv
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
      exact hoddPart.not_two_dvd_nat hqDvdOdd

lemma globalMixedOddDivisor_primeFactors_card_le
    {factor pivot oddPart : Nat}
    (hfactor : factor = 5 ∨ factor = 25)
    (hpivotPos : 0 < pivot)
    (hoddPart : Odd oddPart)
    (hdiv : oddPart ∣ factor * pivot) :
    oddPart.primeFactors.card ≤
      (fiveMillionPivotSupport pivot).length + 1 := by
  have hsubset := globalMixedOddDivisor_primeFactors_subset
    hfactor hpivotPos hoddPart hdiv
  have hfiveNotMem : 5 ∉ fiveMillionPivotSupportFinset pivot := by
    simp [fiveMillionPivotSupportFinset]
  have hcard := Finset.card_le_card hsubset
  rw [Finset.card_insert_of_notMem hfiveNotMem] at hcard
  simpa [fiveMillionPivotSupport, fiveMillionPivotSupportFinset] using hcard

/-- Split a mixed modulus into an explicit small two-part and an odd part. -/
theorem globalMixedFactorPivotTransformedRoot_card_le_split
    {factor pivot m constant twoPart oddPart twoHeight : Nat}
    (hfactor : factor = 5 ∨ factor = 25)
    (hpivotPos : 0 < pivot)
    (hdecomp : twoPart * oddPart = factor * pivot)
    (htwoPos : 0 < twoPart)
    (hoddPart : Odd oddPart)
    (hcop : twoPart.Coprime oddPart)
    (hconstant : constant.Coprime (factor * pivot))
    (htwo : (transformedRootResidues m twoPart constant).card ≤ twoHeight) :
    (transformedRootResidues m (factor * pivot) constant).card ≤
      twoHeight * 2 ^ ((fiveMillionPivotSupport pivot).length + 1) := by
  have hoddPos : 0 < oddPart := Nat.pos_of_ne_zero (by
    intro hzero
    subst oddPart
    simp at hoddPart)
  have hconstantOdd : constant.Coprime oddPart :=
    Nat.Coprime.of_dvd_right (by rw [← hdecomp]; exact dvd_mul_left _ _)
      hconstant
  have hsplit :
      (transformedRootResidues m (factor * pivot) constant).card ≤
        (transformedRootResidues m twoPart constant).card *
          (transformedRootResidues m oddPart constant).card := by
    rw [← hdecomp]
    exact transformedRootResidues_mul_card_le_mul
      htwoPos hoddPos hcop
  have hodd :
      (transformedRootResidues m oddPart constant).card ≤
        2 ^ oddPart.primeFactors.card :=
    transformedRootResidues_card_le_two_pow_primeFactors_of_constant
      hoddPart hconstantOdd
  have hsupport := globalMixedOddDivisor_primeFactors_card_le
    hfactor hpivotPos hoddPart (by
      refine ⟨twoPart, ?_⟩
      rw [← hdecomp]
      ring)
  exact hsplit.trans <| (Nat.mul_le_mul htwo hodd).trans <|
    Nat.mul_le_mul_left twoHeight
      (Nat.pow_le_pow_right (by norm_num) hsupport)

/-- Exact `v₂(pivot) = 1` root height: the two-part is `2`, so it contributes
one root rather than the uniform factor four. -/
theorem globalMixedFactorPivotTransformedRoot_card_le_evenOne
    {factor pivot m constant : Nat}
    (hfactor : factor = 5 ∨ factor = 25)
    (hpivotPos : 0 < pivot)
    (hpivotMod : pivot % 4 = 2)
    (hconstant : constant.Coprime (factor * pivot)) :
    (transformedRootResidues m (factor * pivot) constant).card ≤
      2 ^ ((fiveMillionPivotSupport pivot).length + 1) := by
  let oddPart := factor * (pivot / 2)
  have hpivotDiv : 2 ∣ pivot := by
    apply Nat.dvd_iff_mod_eq_zero.mpr
    omega
  have hquotientMod : (pivot / 2) % 2 = 1 := by omega
  have hquotientOdd : Odd (pivot / 2) := by
    refine ⟨(pivot / 2) / 2, ?_⟩
    have hdecomp := Nat.mod_add_div (pivot / 2) 2
    omega
  have hfactorOdd : Odd factor := by
    rcases hfactor with rfl | rfl <;> norm_num
  have hoddPart : Odd oddPart := hfactorOdd.mul hquotientOdd
  have hdecomp : 2 * oddPart = factor * pivot := by
    dsimp [oddPart]
    calc
      2 * (factor * (pivot / 2)) = factor * (2 * (pivot / 2)) := by ring
      _ = factor * pivot := by rw [Nat.mul_div_cancel' hpivotDiv]
  have hcop : Nat.Coprime 2 oddPart := hoddPart.coprime_two_right.symm
  have hconstantTwo : constant.Coprime 2 :=
    Nat.Coprime.of_dvd_right (by
      rw [← hdecomp]
      exact dvd_mul_right 2 oddPart) hconstant
  have hroot := globalMixedFactorPivotTransformedRoot_card_le_split
    (factor := factor) (pivot := pivot) (m := m) (constant := constant)
    (twoPart := 2) (oddPart := oddPart) (twoHeight := 1)
    hfactor hpivotPos hdecomp (by norm_num) hoddPart hcop hconstant
    (transformedRootResidues_two_card_le_one hconstantTwo)
  simpa using hroot

/-- Exact `v₂(pivot) = 2` root height: the two-part is `4` and contributes
two roots. -/
theorem globalMixedFactorPivotTransformedRoot_card_le_evenTwo
    {factor pivot m constant : Nat}
    (hfactor : factor = 5 ∨ factor = 25)
    (hpivotPos : 0 < pivot)
    (hpivotMod : pivot % 8 = 4)
    (hconstant : constant.Coprime (factor * pivot)) :
    (transformedRootResidues m (factor * pivot) constant).card ≤
      2 * 2 ^ ((fiveMillionPivotSupport pivot).length + 1) := by
  let oddPart := factor * (pivot / 4)
  have hpivotDiv : 4 ∣ pivot := by
    apply Nat.dvd_iff_mod_eq_zero.mpr
    omega
  have hquotientMod : (pivot / 4) % 2 = 1 := by omega
  have hquotientOdd : Odd (pivot / 4) := by
    refine ⟨(pivot / 4) / 2, ?_⟩
    have hdecomp := Nat.mod_add_div (pivot / 4) 2
    omega
  have hfactorOdd : Odd factor := by
    rcases hfactor with rfl | rfl <;> norm_num
  have hoddPart : Odd oddPart := hfactorOdd.mul hquotientOdd
  have hdecomp : 4 * oddPart = factor * pivot := by
    dsimp [oddPart]
    calc
      4 * (factor * (pivot / 4)) = factor * (4 * (pivot / 4)) := by ring
      _ = factor * pivot := by rw [Nat.mul_div_cancel' hpivotDiv]
  have hcopTwo : Nat.Coprime 2 oddPart := hoddPart.coprime_two_right.symm
  have hcopFour : Nat.Coprime 4 oddPart := by
    have hpow := hcopTwo.pow_left 2
    norm_num at hpow ⊢
    exact hpow
  have hconstantFour : constant.Coprime 4 :=
    Nat.Coprime.of_dvd_right (by
      rw [← hdecomp]
      exact dvd_mul_right 4 oddPart) hconstant
  exact globalMixedFactorPivotTransformedRoot_card_le_split
    (factor := factor) (pivot := pivot) (m := m) (constant := constant)
    (twoPart := 4) (oddPart := oddPart) (twoHeight := 2)
    hfactor hpivotPos hdecomp (by norm_num) hoddPart hcopFour hconstant
    (transformedRootResidues_four_card_le_two hconstantFour)

theorem globalMixedNormalTransformedRoot_card_le_evenOne
    {pivot baseResidue m : Nat}
    (hpivotPos : 0 < pivot) (hpivotMod : pivot % 4 = 2)
    (hfive : ¬ 5 ∣ pivot * baseResidue + 1) :
    (transformedRootResidues m (25 * pivot)
        (pivot * baseResidue + 1)).card ≤
      2 ^ ((fiveMillionPivotSupport pivot).length + 1) := by
  exact globalMixedFactorPivotTransformedRoot_card_le_evenOne
    (Or.inr rfl) hpivotPos hpivotMod
      (fiveMillionNormalConstant_coprime hfive)

theorem globalMixedFiveTwistTransformedRoot_card_le_evenOne
    {pivot baseResidue m : Nat}
    (hpivotPos : 0 < pivot) (hpivotMod : pivot % 4 = 2)
    (hfive : 5 ∣ pivot * baseResidue + 1)
    (htwentyFive : ¬ 25 ∣ pivot * baseResidue + 1) :
    (transformedRootResidues m (5 * pivot)
        ((pivot * baseResidue + 1) / 5)).card ≤
      2 ^ ((fiveMillionPivotSupport pivot).length + 1) := by
  exact globalMixedFactorPivotTransformedRoot_card_le_evenOne
    (Or.inl rfl) hpivotPos hpivotMod
      (fiveMillionFiveTwistConstant_coprime hfive htwentyFive)

theorem globalMixedNormalTransformedRoot_card_le_evenTwo
    {pivot baseResidue m : Nat}
    (hpivotPos : 0 < pivot) (hpivotMod : pivot % 8 = 4)
    (hfive : ¬ 5 ∣ pivot * baseResidue + 1) :
    (transformedRootResidues m (25 * pivot)
        (pivot * baseResidue + 1)).card ≤
      2 * 2 ^ ((fiveMillionPivotSupport pivot).length + 1) := by
  exact globalMixedFactorPivotTransformedRoot_card_le_evenTwo
    (Or.inr rfl) hpivotPos hpivotMod
      (fiveMillionNormalConstant_coprime hfive)

theorem globalMixedFiveTwistTransformedRoot_card_le_evenTwo
    {pivot baseResidue m : Nat}
    (hpivotPos : 0 < pivot) (hpivotMod : pivot % 8 = 4)
    (hfive : 5 ∣ pivot * baseResidue + 1)
    (htwentyFive : ¬ 25 ∣ pivot * baseResidue + 1) :
    (transformedRootResidues m (5 * pivot)
        ((pivot * baseResidue + 1) / 5)).card ≤
      2 * 2 ^ ((fiveMillionPivotSupport pivot).length + 1) := by
  exact globalMixedFactorPivotTransformedRoot_card_le_evenTwo
    (Or.inl rfl) hpivotPos hpivotMod
      (fiveMillionFiveTwistConstant_coprime hfive htwentyFive)

#print axioms transformedRootResidues_two_card_le_one
#print axioms transformedRootResidues_four_card_le_two
#print axioms globalMixedFactorPivotTransformedRoot_card_le_split
#print axioms globalMixedNormalTransformedRoot_card_le_evenOne
#print axioms globalMixedFiveTwistTransformedRoot_card_le_evenOne
#print axioms globalMixedNormalTransformedRoot_card_le_evenTwo
#print axioms globalMixedFiveTwistTransformedRoot_card_le_evenTwo

end Erdos848
