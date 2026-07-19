import Erdos848.TailGlobalMixedSupportWordsSound
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848

/-! The lightweight generated-leaf core is extensionally equal to the public
fixed-cut checker when instantiated with the global generated QR tables. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem globalMixedCoreIntersectWords_eq
    (left right : List ℕ) :
    globalMixedCoreIntersectWords left right =
      globalMixedIntersectWords left right := by
  induction left generalizing right with
  | nil => simp [globalMixedCoreIntersectWords, globalMixedIntersectWords]
  | cons left lefts ih =>
      cases right with
      | nil => simp [globalMixedCoreIntersectWords, globalMixedIntersectWords]
      | cons right rights =>
          simp [globalMixedCoreIntersectWords, globalMixedIntersectWords, ih]

theorem globalMixedCoreNormalSupportWords_eq
    (support : List ℕ) (squareCoset : Bool) :
    globalMixedCoreSupportWords
        GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords support
        (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords squareCoset) =
      globalMixedNormalSupportWords support squareCoset := by
  induction support with
  | nil => rfl
  | cons p support ih =>
      simp only [globalMixedCoreSupportWords,
        globalMixedNormalSupportWords]
      rw [globalMixedCoreIntersectWords_eq, ih]

theorem globalMixedCoreTwistSupportWords_eq
    (support : List ℕ) (squareCoset : Bool) :
    globalMixedCoreSupportWords
        GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords support
        (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords squareCoset) =
      globalMixedTwistSupportWords support squareCoset := by
  induction support with
  | nil => rfl
  | cons p support ih =>
      simp only [globalMixedCoreSupportWords,
        globalMixedTwistSupportWords]
      rw [globalMixedCoreIntersectWords_eq, ih]

theorem globalMixedCountWords_eq_map_bits_count (words : List ℕ) :
    globalMixedCountWords words =
      (words.map fun word => word.bits.count true).sum := by
  induction words with
  | nil => rfl
  | cons word words ih =>
      simp [globalMixedCountWords, ih]

theorem globalMixedCoreNormalSurvivorCount_eq
    (support : List ℕ) (squareCoset : Bool) :
    globalMixedCoreSurvivorCount
        GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
        (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords squareCoset)
        support =
      globalMixedNormalSurvivorCount support squareCoset := by
  rw [globalMixedCoreNormalSurvivorCount_eq_map_bits_count,
    globalMixedCoreNormalSupportWords_eq]
  symm
  unfold globalMixedNormalSurvivorCount
  exact globalMixedCountWords_eq_map_bits_count _

theorem globalMixedCoreTwistSurvivorCount_eq
    (support : List ℕ) (squareCoset : Bool) :
    globalMixedCoreSurvivorCount
        GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
        (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords squareCoset)
        support =
      globalMixedTwistSurvivorCount support squareCoset := by
  rw [globalMixedCoreTwistSurvivorCount_eq_map_bits_count,
    globalMixedCoreTwistSupportWords_eq]
  symm
  unfold globalMixedTwistSurvivorCount
  exact globalMixedCountWords_eq_map_bits_count _

theorem globalMixedCoreRootCoefficient100_eq
    (k survivors : ℕ) :
    globalMixedCoreRootCoefficient100 k survivors =
      globalMixedRootCoefficient100 k survivors := rfl

theorem globalMixedCoreLineDiscount_eq (endpoint : ℕ) :
    globalMixedCoreLineDiscount endpoint = globalMixedLineDiscount endpoint := by
  rfl

theorem globalMixedCoreRowPassesAt_eq
    (coefficient endpoint : ℕ) :
    globalMixedCoreRowPassesAt coefficient endpoint
        (globalMixedLineDiscount endpoint) =
      (globalMixedLinePasses coefficient endpoint ||
        (GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks.all
            (globalMixedPrimeBlockPasses coefficient endpoint) &&
          globalMixedTerminalPasses coefficient endpoint)) := by
  unfold globalMixedCoreRowPassesAt globalMixedCoreLinePassesAt
  unfold globalMixedLinePasses globalMixedPrimeBlockPasses
  unfold globalMixedCorePrimeBlockPasses globalMixedTerminalPasses
  unfold globalMixedCoreTerminalPasses globalMixedCombinedAtPasses
  unfold globalMixedCoreCombinedAtPasses
  rfl

theorem globalMixedCorePrefixPasses_congr
    (normalLookup₁ normalLookup₂ twistLookup₁ twistLookup₂ : ℕ → List ℕ)
    (k endpoint : ℕ) (supportPrefix : List ℕ)
    (hnormal : ∀ p ∈ supportPrefix.filter fun p => decide (p ≤ 2843),
      normalLookup₁ p = normalLookup₂ p)
    (htwist : ∀ p ∈ supportPrefix.filter fun p => decide (p ≤ 2843),
      twistLookup₁ p = twistLookup₂ p) :
    globalMixedCorePrefixPasses normalLookup₁ twistLookup₁ k endpoint
        supportPrefix =
      globalMixedCorePrefixPasses normalLookup₂ twistLookup₂ k endpoint
        supportPrefix := by
  unfold globalMixedCorePrefixPasses
  dsimp only
  rw [globalMixedCoreSurvivorCount_congr normalLookup₁ normalLookup₂ _ _
      hnormal,
    globalMixedCoreSurvivorCount_congr normalLookup₁ normalLookup₂ _ _
      hnormal,
    globalMixedCoreSurvivorCount_congr twistLookup₁ twistLookup₂ _ _
      htwist,
    globalMixedCoreSurvivorCount_congr twistLookup₁ twistLookup₂ _ _
      htwist]

theorem globalMixedCorePrefixPasses_eq
    (k : ℕ) (supportPrefix : List ℕ) :
    globalMixedCorePrefixPasses
        GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
        GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords k
        (globalMixedSupportEndpoint supportPrefix) supportPrefix =
      globalMixedSupportPrefixPasses k supportPrefix := by
  unfold globalMixedCorePrefixPasses globalMixedSupportPrefixPasses
  unfold globalMixedOneRowPasses
  dsimp only
  rw [globalMixedCoreNormalSurvivorCount_eq,
    globalMixedCoreNormalSurvivorCount_eq,
    globalMixedCoreTwistSurvivorCount_eq,
    globalMixedCoreTwistSurvivorCount_eq]
  rw [globalMixedCoreRootCoefficient100_eq,
    globalMixedCoreRootCoefficient100_eq,
    globalMixedCoreRootCoefficient100_eq,
    globalMixedCoreRootCoefficient100_eq]
  rw [globalMixedCoreLineDiscount_eq]
  simp only [Bool.false_eq_true, eq_self, if_false, if_true]
  rw [globalMixedCoreRowPassesAt_eq,
    globalMixedCoreRowPassesAt_eq,
    globalMixedCoreRowPassesAt_eq,
    globalMixedCoreRowPassesAt_eq]

#print axioms globalMixedCorePrefixPasses_eq

end Erdos848
