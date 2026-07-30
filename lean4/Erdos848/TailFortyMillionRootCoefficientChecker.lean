import Erdos848.TailFortyMillionRootCoefficientDefs
import Erdos848.TailGlobalMixedEvenSupportCheckerCore

namespace Erdos848

/-!
# Hierarchical coefficient checker for `40M <= N < 200M`

The 119,161 published feasible prefixes are reduced only to four root
coefficients.  Prime-count intervals are checked once in a separate layer;
they are not rescanned for every prefix.
-/

set_option maxRecDepth 1000000

def fortyMillionRootCoefficientsFromWords
    (rootClass : FortyMillionRootClass)
    (normalWords twistWords : List Nat × List Nat)
    (k : Nat) : List Nat :=
  match rootClass.evenValuation? with
  | none =>
      [globalMixedCoreRootCoefficient100 k
          (globalMixedCoreCountWords normalWords.1),
        globalMixedCoreRootCoefficient100 k
          (globalMixedCoreCountWords normalWords.2),
        globalMixedCoreRootCoefficient100 k
          (globalMixedCoreCountWords twistWords.1),
        globalMixedCoreRootCoefficient100 k
          (globalMixedCoreCountWords twistWords.2)]
  | some valuation =>
      let normalValuationWords :=
        GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords
          valuation
      let twistValuationWords :=
        GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords
          valuation
      [globalMixedCoreEvenCoefficient100 valuation k
          (globalMixedCoreEvenRestrictedCount normalWords.1
            normalValuationWords),
        globalMixedCoreEvenCoefficient100 valuation k
          (globalMixedCoreEvenRestrictedCount normalWords.2
            normalValuationWords),
        globalMixedCoreEvenCoefficient100 valuation k
          (globalMixedCoreEvenRestrictedCount twistWords.1
            twistValuationWords),
        globalMixedCoreEvenCoefficient100 valuation k
          (globalMixedCoreEvenRestrictedCount twistWords.2
            twistValuationWords)]

def fortyMillionRootClassCoefficientPasses
    (ceiling : Nat -> FortyMillionRootClass -> Nat)
    (endpoint : Nat)
    (rootClass : FortyMillionRootClass)
    (coefficients : List Nat) : Bool :=
  coefficients.all fun value => decide (value <= ceiling endpoint rootClass)

def fortyMillionRootCorePrefixPasses
    (ceiling : Nat -> FortyMillionRootClass -> Nat)
    (normalLookup twistLookup : Nat -> List Nat)
    (k endpoint : Nat) (supportPrefix : List Nat) : Bool :=
  let maskedSupport := supportPrefix.filter fun p => decide (p <= 2843)
  let normalWords := globalMixedCoreSupportWordPair normalLookup maskedSupport
    (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords false)
    (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords true)
  let twistWords := globalMixedCoreSupportWordPair twistLookup maskedSupport
    (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords false)
    (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords true)
  if endpoint < 200_000_000 then
    fortyMillionRootClasses.all fun rootClass =>
      fortyMillionRootClassCoefficientPasses ceiling endpoint rootClass
        (fortyMillionRootCoefficientsFromWords rootClass
          normalWords twistWords k)
  else true

end Erdos848
