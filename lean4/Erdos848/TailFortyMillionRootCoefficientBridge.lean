import Erdos848.TailFortyMillionRootCoefficientChecker
import Erdos848.TailGlobalMixedSupportChecker
import Erdos848.TailGlobalMixedSupportWordsSound

namespace Erdos848

/-! Global-mask bridge for the locally evaluated root-coefficient leaves. -/

set_option maxRecDepth 1000000

def fortyMillionRootPrefixPasses
    (ceiling : Nat -> FortyMillionRootClass -> Nat)
    (k : Nat) (supportPrefix : List Nat) : Bool :=
  fortyMillionRootCorePrefixPasses ceiling
    GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
    GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
    k (globalMixedSupportEndpoint supportPrefix) supportPrefix

theorem fortyMillionRootCorePrefixPasses_congr
    (ceiling : Nat -> FortyMillionRootClass -> Nat)
    (normalLookup1 normalLookup2 twistLookup1 twistLookup2 : Nat -> List Nat)
    (k endpoint : Nat) (supportPrefix : List Nat)
    (hnormal : ∀ p ∈ supportPrefix.filter (fun p => decide (p <= 2843)),
      normalLookup1 p = normalLookup2 p)
    (htwist : ∀ p ∈ supportPrefix.filter (fun p => decide (p <= 2843)),
      twistLookup1 p = twistLookup2 p) :
    fortyMillionRootCorePrefixPasses ceiling
        normalLookup1 twistLookup1 k endpoint supportPrefix =
      fortyMillionRootCorePrefixPasses ceiling
        normalLookup2 twistLookup2 k endpoint supportPrefix := by
  let maskedSupport := supportPrefix.filter fun p => decide (p <= 2843)
  have hnormalWords := globalMixedCoreSupportWordPair_congr
    normalLookup1 normalLookup2 maskedSupport
    (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords false)
    (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords true)
    (by simpa [maskedSupport] using hnormal)
  have htwistWords := globalMixedCoreSupportWordPair_congr
    twistLookup1 twistLookup2 maskedSupport
    (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords false)
    (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords true)
    (by simpa [maskedSupport] using htwist)
  simp only [fortyMillionRootCorePrefixPasses]
  rw [hnormalWords, htwistWords]

#print axioms fortyMillionRootCorePrefixPasses_congr

end Erdos848
