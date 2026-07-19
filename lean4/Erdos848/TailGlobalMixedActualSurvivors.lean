import Erdos848.TailGlobalMixedSurvivorSemantic
import Erdos848.TailFiveMillionActualSupportCore
import Erdos848.TailSupportEnumeration

namespace Erdos848

/-!
# Actual high-tail quotients in the fixed-cut global survivor sets

This file is the semantic bridge from an arbitrary literal high-tail point at
`Y = N / 55` to the finite normal (`m ≤ 3025`) and five-twist (`m / 5 ≤ 605`)
survivor sets checked by the global mixed-support certificate.  No ambient
value of `N` is enumerated.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/-- The mask table is exactly the old support-prime table truncated at the
largest prime for which the `3025`-bit masks are stored. -/
theorem globalMixedMaskPrimes_eq_supportPrimes_filter :
    GeneratedTailGlobalMixedSupportCoverage.mixedMaskPrimes =
      GeneratedTailSupportCoverage.supportPrimes.filter fun p => p ≤ 2843 := by
  decide

/-- The actual support seen by the global masks.  Larger retained support
primes are handled by the checker endpoint and prime-row argument, not by
silently indexing a missing QR word. -/
def globalMixedActualMaskedSupport (pivot : ℕ) : List ℕ :=
  (fiveMillionPivotSupport pivot).dropLast.filter fun p => p ≤ 2843

lemma globalMixedActualMaskedSupport_mem_maskPrimes
    {pivot q : ℕ} (hq : q ∈ globalMixedActualMaskedSupport pivot) :
    q ∈ GeneratedTailGlobalMixedSupportCoverage.mixedMaskPrimes := by
  have hparts :
      q ∈ (fiveMillionPivotSupport pivot).dropLast ∧ q ≤ 2843 := by
    simpa [globalMixedActualMaskedSupport] using hq
  have hqSupport : q ∈ fiveMillionPivotSupport pivot :=
    List.mem_of_mem_dropLast hparts.1
  have hqPrime := fiveMillionPivotSupport_primes pivot q hqSupport
  rw [globalMixedMaskPrimes_eq_supportPrimes_filter]
  exact List.mem_filter.mpr
    ⟨mem_supportPrimes_of_supportPrime_le_3163 hqPrime (by omega),
      by simpa using hparts.2⟩

lemma globalMixedRawQuotient_normal_support_bit
    {pivot point p m q : ℕ}
    (hq : q ∈ globalMixedActualMaskedSupport pivot)
    (hmLower : 1 ≤ m) (hmUpper : m ≤ globalMixedNormalBound)
    (hequation : p ^ 2 * m = pivot * point + 1) :
    wordMaskTestBit
        (GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords q)
        (m - 1) = true := by
  have hparts := List.mem_filter.mp hq
  have hqSupport : q ∈ fiveMillionPivotSupport pivot :=
    List.mem_of_mem_dropLast hparts.1
  have hqPrime := (fiveMillionPivotSupport_primes pivot q hqSupport).1
  obtain ⟨hqNotDvd, root, hroot⟩ :=
    quotient_modEq_square_of_prime_dvd_pivot hqPrime
      (fiveMillionPivotSupport_dvd hqSupport) hequation
  exact globalMixedNormalMask_contains_square
    (globalMixedActualMaskedSupport_mem_maskPrimes hq)
    hmLower (by simpa [globalMixedNormalBound] using hmUpper) hqNotDvd hroot

lemma globalMixedRawQuotient_normal_support_all
    {pivot point p m : ℕ}
    (hmLower : 1 ≤ m) (hmUpper : m ≤ globalMixedNormalBound)
    (hequation : p ^ 2 * m = pivot * point + 1) :
    (globalMixedActualMaskedSupport pivot).all (fun q =>
      wordMaskTestBit
        (GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords q)
        (m - 1)) = true := by
  apply List.all_eq_true.mpr
  intro q hq
  exact globalMixedRawQuotient_normal_support_bit hq hmLower hmUpper hequation

lemma globalMixedRawQuotient_normal_mem
    {pivot point p m : ℕ} {squareCoset : Bool}
    (hmLower : 1 ≤ m) (hmUpper : m ≤ globalMixedNormalBound)
    (hequation : p ^ 2 * m = pivot * point + 1)
    (hcoset : modFiveCosetAccepts squareCoset m = true) :
    m ∈ globalMixedNormalSurvivorFinset
      (globalMixedActualMaskedSupport pivot) squareCoset := by
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_Ico.mpr ⟨hmLower, by omega⟩, ?_⟩
  rw [globalMixedNormalSupportWords_testBit]
  apply Bool.and_eq_true_iff.mpr
  refine ⟨globalMixedRawQuotient_normal_support_all
    hmLower hmUpper hequation, ?_⟩
  have hcertificate :=
    (globalMixedNormalCoset_certificate squareCoset).testBit_eq
      (index := m - 1) (by
        dsimp [globalMixedNormalBound] at hmUpper ⊢
        omega)
  rw [hcertificate]
  simpa [show m - 1 + 1 = m by omega] using hcoset

lemma globalMixedRawQuotient_twist_support_bit
    {pivot point p stored q : ℕ}
    (hq : q ∈ globalMixedActualMaskedSupport pivot)
    (hmLower : 1 ≤ stored) (hmUpper : stored ≤ globalMixedTwistBound)
    (hequation : p ^ 2 * (5 * stored) = pivot * point + 1) :
    wordMaskTestBit
        (GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords q)
        (stored - 1) = true := by
  have hparts := List.mem_filter.mp hq
  have hqSupport : q ∈ fiveMillionPivotSupport pivot :=
    List.mem_of_mem_dropLast hparts.1
  have hqPrime := (fiveMillionPivotSupport_primes pivot q hqSupport).1
  obtain ⟨hqNotDvd, root, hroot⟩ :=
    quotient_modEq_square_of_prime_dvd_pivot hqPrime
      (fiveMillionPivotSupport_dvd hqSupport) hequation
  exact globalMixedTwistMask_contains_square
    (globalMixedActualMaskedSupport_mem_maskPrimes hq)
    hmLower (by simpa [globalMixedTwistBound] using hmUpper) hqNotDvd hroot

lemma globalMixedRawQuotient_twist_support_all
    {pivot point p stored : ℕ}
    (hmLower : 1 ≤ stored) (hmUpper : stored ≤ globalMixedTwistBound)
    (hequation : p ^ 2 * (5 * stored) = pivot * point + 1) :
    (globalMixedActualMaskedSupport pivot).all (fun q =>
      wordMaskTestBit
        (GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords q)
        (stored - 1)) = true := by
  apply List.all_eq_true.mpr
  intro q hq
  exact globalMixedRawQuotient_twist_support_bit hq hmLower hmUpper hequation

lemma globalMixedRawQuotient_twist_mem
    {pivot point p stored : ℕ} {squareCoset : Bool}
    (hmLower : 1 ≤ stored) (hmUpper : stored ≤ globalMixedTwistBound)
    (hequation : p ^ 2 * (5 * stored) = pivot * point + 1)
    (hcoset : modFiveCosetAccepts squareCoset stored = true) :
    stored ∈ globalMixedTwistSurvivorFinset
      (globalMixedActualMaskedSupport pivot) squareCoset := by
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_Ico.mpr ⟨hmLower, by omega⟩, ?_⟩
  rw [globalMixedTwistSupportWords_testBit]
  apply Bool.and_eq_true_iff.mpr
  refine ⟨globalMixedRawQuotient_twist_support_all
    hmLower hmUpper hequation, ?_⟩
  have hcertificate :=
    (globalMixedTwistCoset_certificate squareCoset).testBit_eq
      (index := stored - 1) (by
        dsimp [globalMixedTwistBound] at hmUpper ⊢
        omega)
  rw [hcertificate]
  simpa [show stored - 1 + 1 = stored by omega] using hcoset

/-- The fixed split `Y = N / 55` gives the exact complementary quotient
range consumed by the global masks. -/
theorem globalMixedHighTailSquarePoint_has_bounded_quotient
    {N pivot point : ℕ}
    (hpivot : pivot ≤ N)
    (hpoint : point ∈ twoBaseHighTailSquarePoints N pivot (N / 55)) :
    ∃ p m : ℕ, Nat.Prime p ∧ N / 55 < p ∧
      p ^ 2 * m = pivot * point + 1 ∧
      1 ≤ m ∧ m ≤ globalMixedNormalBound := by
  classical
  have hparts := Finset.mem_filter.mp hpoint
  have hpointLe : point ≤ N :=
    (Finset.mem_Icc.mp (lowBaseSet_subset_Icc N hparts.1)).2
  obtain ⟨p, hpPrime, hpLarge, hpDiv⟩ := hparts.2
  obtain ⟨m, hm⟩ := hpDiv
  have hNp : N < p * 55 :=
    (Nat.div_lt_iff_lt_mul (by norm_num : 0 < 55)).mp hpLarge
  have hNsq : N * N < (p * 55) * (p * 55) :=
    by nlinarith
  have hNsq' : N ^ 2 + 1 ≤ globalMixedNormalBound * p ^ 2 := by
    dsimp [globalMixedNormalBound]
    nlinarith
  have hproduct : pivot * point ≤ N * N :=
    Nat.mul_le_mul hpivot hpointLe
  have hnumerator : pivot * point + 1 ≤ globalMixedNormalBound * p ^ 2 := by
    calc
      pivot * point + 1 ≤ N ^ 2 + 1 := by
        simpa [pow_two] using Nat.add_le_add_right hproduct 1
      _ ≤ globalMixedNormalBound * p ^ 2 := hNsq'
  have hmPos : 1 ≤ m := by
    apply Nat.one_le_iff_ne_zero.mpr
    intro hmZero
    subst m
    simp at hm
  have hmMul : p ^ 2 * m ≤ p ^ 2 * globalMixedNormalBound := by
    calc
      p ^ 2 * m = pivot * point + 1 := hm.symm
      _ ≤ globalMixedNormalBound * p ^ 2 := hnumerator
      _ = p ^ 2 * globalMixedNormalBound := by ring
  have hmUpper : m ≤ globalMixedNormalBound :=
    Nat.le_of_mul_le_mul_left hmMul (pow_pos hpPrime.pos _)
  exact ⟨p, m, hpPrime, hpLarge, hm.symm, hmPos, hmUpper⟩

#print axioms globalMixedMaskPrimes_eq_supportPrimes_filter
#print axioms globalMixedRawQuotient_normal_mem
#print axioms globalMixedRawQuotient_twist_mem
#print axioms globalMixedHighTailSquarePoint_has_bounded_quotient

end Erdos848
