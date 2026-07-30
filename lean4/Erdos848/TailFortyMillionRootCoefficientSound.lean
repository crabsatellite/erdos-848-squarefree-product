import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.LowCertificate
import Erdos848.TailFortyMillionRootPrimeChecker

namespace Erdos848

/-!
# Soundness interface for the finite-product root-coefficient certificate

The generated leaves reduce only closed Boolean expressions.  This file turns
their result into ordinary inequalities for each of the four root classes and
four normal/twist cosets.  It deliberately says nothing about the separate
large-product branch.
-/

set_option maxRecDepth 1000000

theorem fortyMillionRootCorePrefixPasses_sound
    {ceiling : Nat -> FortyMillionRootClass -> Nat}
    {normalLookup twistLookup : Nat -> List Nat}
    {k endpoint : Nat} {supportPrefix : List Nat}
    (hUpper : endpoint < 200_000_000)
    (hpass : fortyMillionRootCorePrefixPasses ceiling
      normalLookup twistLookup k endpoint supportPrefix = true) :
    let maskedSupport :=
      supportPrefix.filter fun p => decide (p <= 2843)
    let normalWords := globalMixedCoreSupportWordPair normalLookup maskedSupport
      (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords false)
      (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords true)
    let twistWords := globalMixedCoreSupportWordPair twistLookup maskedSupport
      (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords false)
      (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords true)
    forall rootClass,
      rootClass ∈ fortyMillionRootClasses ->
      forall coefficient,
        coefficient ∈ fortyMillionRootCoefficientsFromWords rootClass
          normalWords twistWords k ->
        coefficient <= ceiling endpoint rootClass := by
  unfold fortyMillionRootCorePrefixPasses at hpass
  simp only [hUpper, if_pos] at hpass
  dsimp only
  intro rootClass hroot coefficient hcoefficient
  have hrootPass := (List.all_eq_true.mp hpass) rootClass hroot
  unfold fortyMillionRootClassCoefficientPasses at hrootPass
  exact of_decide_eq_true
    ((List.all_eq_true.mp hrootPass) coefficient hcoefficient)

theorem fortyMillionRootPrefixPasses_sound
    {ceiling : Nat -> FortyMillionRootClass -> Nat}
    {k : Nat} {supportPrefix : List Nat}
    (hUpper : globalMixedSupportEndpoint supportPrefix < 200_000_000)
    (hpass : fortyMillionRootPrefixPasses ceiling k supportPrefix = true) :
    let maskedSupport :=
      supportPrefix.filter fun p => decide (p <= 2843)
    let normalWords := globalMixedCoreSupportWordPair
      GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords maskedSupport
      (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords false)
      (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords true)
    let twistWords := globalMixedCoreSupportWordPair
      GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords maskedSupport
      (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords false)
      (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords true)
    forall rootClass,
      rootClass ∈ fortyMillionRootClasses ->
      forall coefficient,
        coefficient ∈ fortyMillionRootCoefficientsFromWords rootClass
          normalWords twistWords k ->
        coefficient <= ceiling
          (globalMixedSupportEndpoint supportPrefix) rootClass := by
  unfold fortyMillionRootPrefixPasses at hpass
  exact fortyMillionRootCorePrefixPasses_sound hUpper hpass

theorem fortyMillionLowFeasibleRootPrefixPasses
    {k : Nat} (hk : k <= 3)
    {supportPrefix : List Nat}
    (hmem : supportPrefix ∈ globalMixedFeasiblePrefixesKernel k) :
    fortyMillionRootPrefixPasses
        GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
        k supportPrefix = true := by
  exact List.all_eq_true.mp
    (GeneratedFortyMillionRootCoefficientCoverage.lowFeasiblePrefixes_root_coefficient_pass
      hk)
    supportPrefix hmem

theorem fortyMillionCoefficientCeiling_mono
    {left right : Nat} (h : left <= right)
    (rootClass : FortyMillionRootClass) :
    GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
        left rootClass <=
      GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
        right rootClass := by
  cases rootClass with
  | odd => rfl
  | evenOne => rfl
  | evenTwo =>
      simp only [GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling]
      split <;> split <;> omega
  | evenThree =>
      simp only [GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling]
      split <;> split <;> omega

theorem fortyMillionCoefficientCeiling_eq_block
    {block : FortyMillionTenBranchBlock} {N : Nat}
    (hcover : block.Covers N) (rootClass : FortyMillionRootClass) :
    GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
        N rootClass =
      fortyMillionRootCoefficientCeiling block rootClass := by
  cases block <;> cases rootClass <;>
    simp [FortyMillionTenBranchBlock.Covers,
      FortyMillionTenBranchBlock.lower,
      FortyMillionTenBranchBlock.upper,
      GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling,
      fortyMillionRootCoefficientCeiling] at hcover ⊢ <;> omega

#print axioms fortyMillionRootCorePrefixPasses_sound
#print axioms fortyMillionRootPrefixPasses_sound
#print axioms fortyMillionLowFeasibleRootPrefixPasses
#print axioms fortyMillionCoefficientCeiling_mono
#print axioms fortyMillionCoefficientCeiling_eq_block

end Erdos848
