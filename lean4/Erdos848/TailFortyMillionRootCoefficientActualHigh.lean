import Erdos848.TailFortyMillionRootCoefficientActual
import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.TailGlobalMixedEvenSupportSemantic

namespace Erdos848

/-!
# Root-coefficient views used by the actual high-tail rows

The finite certificate speaks in packed support words.  The high-tail
injection lemmas speak in the public survivor-count vocabulary.  These small
lemmas expose the four certified entries in precisely those two vocabularies.
-/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def fortyMillionRootClassOfEvenValuation :
    GlobalMixedEvenValuation -> FortyMillionRootClass
  | .one => .evenOne
  | .two => .evenTwo
  | .three => .evenThree

theorem actualMixedSupport_normalOddRootCoefficient_le
    {N : Nat} (support : List Nat)
    (hN : 5_000_000 <= N) (hUpper : N < 200_000_000)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (fun left right => left < right))
    (hProduct : support.prod <= N) (squareCoset : Bool) :
    globalMixedRootCoefficient100 support.length
        (globalMixedNormalSurvivorCount
          (support.dropLast.filter fun p => decide (p <= 2843))
          squareCoset) <=
      GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
        N .odd := by
  have hrows := actualMixedSupport_rootCoefficientRows support hN hUpper
    hPrimes hIncreasing hProduct
  have hcount :
      globalMixedCoreCountWords
          (globalMixedCoreSupportWords
            GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
            (support.dropLast.filter fun p => decide (p <= 2843))
            (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords
              squareCoset)) =
        globalMixedNormalSurvivorCount
          (support.dropLast.filter fun p => decide (p <= 2843))
          squareCoset := by
    simpa only [globalMixedCoreSurvivorCount] using
      globalMixedCoreNormalSurvivorCount_eq
        (support.dropLast.filter fun p => decide (p <= 2843)) squareCoset
  dsimp only at hrows
  apply hrows .odd (by simp [fortyMillionRootClasses])
  cases squareCoset <;>
    simp [fortyMillionRootCoefficientsFromWords,
      FortyMillionRootClass.evenValuation?,
      globalMixedCoreSupportWordPair_eq,
      hcount,
      globalMixedCoreRootCoefficient100_eq]

theorem actualMixedSupport_twistOddRootCoefficient_le
    {N : Nat} (support : List Nat)
    (hN : 5_000_000 <= N) (hUpper : N < 200_000_000)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (fun left right => left < right))
    (hProduct : support.prod <= N) (squareCoset : Bool) :
    globalMixedRootCoefficient100 support.length
        (globalMixedTwistSurvivorCount
          (support.dropLast.filter fun p => decide (p <= 2843))
          squareCoset) <=
      GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
        N .odd := by
  have hrows := actualMixedSupport_rootCoefficientRows support hN hUpper
    hPrimes hIncreasing hProduct
  have hcount :
      globalMixedCoreCountWords
          (globalMixedCoreSupportWords
            GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
            (support.dropLast.filter fun p => decide (p <= 2843))
            (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords
              squareCoset)) =
        globalMixedTwistSurvivorCount
          (support.dropLast.filter fun p => decide (p <= 2843))
          squareCoset := by
    simpa only [globalMixedCoreSurvivorCount] using
      globalMixedCoreTwistSurvivorCount_eq
        (support.dropLast.filter fun p => decide (p <= 2843)) squareCoset
  dsimp only at hrows
  apply hrows .odd (by simp [fortyMillionRootClasses])
  cases squareCoset <;>
    simp [fortyMillionRootCoefficientsFromWords,
      FortyMillionRootClass.evenValuation?,
      globalMixedCoreSupportWordPair_eq,
      hcount,
      globalMixedCoreRootCoefficient100_eq]

theorem actualMixedSupport_normalEvenCoreCoefficient_le
    {N : Nat} (support : List Nat)
    (hN : 5_000_000 <= N) (hUpper : N < 200_000_000)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (fun left right => left < right))
    (hProduct : support.prod <= N)
    (valuation : GlobalMixedEvenValuation) (squareCoset : Bool) :
    globalMixedCoreEvenCoefficient100 valuation support.length
        (globalMixedCoreEvenRestrictedCount
          (globalMixedNormalSupportWords
            (support.dropLast.filter fun p => decide (p <= 2843))
            squareCoset)
          (GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords
            valuation)) <=
      GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling N
        (fortyMillionRootClassOfEvenValuation valuation) := by
  have hrows := actualMixedSupport_rootCoefficientRows support hN hUpper
    hPrimes hIncreasing hProduct
  dsimp only at hrows
  apply hrows (fortyMillionRootClassOfEvenValuation valuation)
  · cases valuation <;> simp [fortyMillionRootClassOfEvenValuation,
      fortyMillionRootClasses]
  · cases valuation <;> cases squareCoset <;>
      simp [fortyMillionRootClassOfEvenValuation,
        fortyMillionRootCoefficientsFromWords,
        FortyMillionRootClass.evenValuation?,
        globalMixedCoreSupportWordPair_eq,
        globalMixedCoreNormalSupportWords_eq]

theorem actualMixedSupport_twistEvenCoreCoefficient_le
    {N : Nat} (support : List Nat)
    (hN : 5_000_000 <= N) (hUpper : N < 200_000_000)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (fun left right => left < right))
    (hProduct : support.prod <= N)
    (valuation : GlobalMixedEvenValuation) (squareCoset : Bool) :
    globalMixedCoreEvenCoefficient100 valuation support.length
        (globalMixedCoreEvenRestrictedCount
          (globalMixedTwistSupportWords
            (support.dropLast.filter fun p => decide (p <= 2843))
            squareCoset)
          (GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords
            valuation)) <=
      GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling N
        (fortyMillionRootClassOfEvenValuation valuation) := by
  have hrows := actualMixedSupport_rootCoefficientRows support hN hUpper
    hPrimes hIncreasing hProduct
  dsimp only at hrows
  apply hrows (fortyMillionRootClassOfEvenValuation valuation)
  · cases valuation <;> simp [fortyMillionRootClassOfEvenValuation,
      fortyMillionRootClasses]
  · cases valuation <;> cases squareCoset <;>
      simp [fortyMillionRootClassOfEvenValuation,
        fortyMillionRootCoefficientsFromWords,
        FortyMillionRootClass.evenValuation?,
        globalMixedCoreSupportWordPair_eq,
        globalMixedCoreTwistSupportWords_eq]

#print axioms actualMixedSupport_normalOddRootCoefficient_le
#print axioms actualMixedSupport_twistOddRootCoefficient_le
#print axioms actualMixedSupport_normalEvenCoreCoefficient_le
#print axioms actualMixedSupport_twistEvenCoreCoefficient_le

end Erdos848
