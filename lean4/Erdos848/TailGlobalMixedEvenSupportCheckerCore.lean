import Erdos848.TailGlobalMixedSupportCheckerCore
import Erdos848.TailGlobalMixedEvenSupportClass
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.Data

namespace Erdos848

/-! Lightweight computational core for the three even valuation rows. -/

def globalMixedCoreEvenRestrictedCount
    (supportWords valuationWords : List Nat) : Nat :=
  globalMixedCoreCountWords
    (globalMixedCoreIntersectWords supportWords valuationWords)

/-- Flatten a chunked Boolean certificate without reducing the whole flat
list in one kernel stack frame. -/
theorem globalMixedAllFlatten_eq_true
    {alpha : Type} (chunks : List (List alpha)) (predicate : alpha -> Bool)
    (hchunks : chunks.all (fun chunk => chunk.all predicate) = true) :
    chunks.flatten.all predicate = true := by
  apply List.all_eq_true.mpr
  intro value hvalue
  obtain ⟨chunk, hchunk, hvalueChunk⟩ := List.mem_flatten.mp hvalue
  have hchunkPass := (List.all_eq_true.mp hchunks) chunk hchunk
  exact (List.all_eq_true.mp hchunkPass) value hvalueChunk

def globalMixedCoreEvenCoefficient100
    (valuation : GlobalMixedEvenValuation) (k survivors : Nat) : Nat :=
  (globalMixedEvenRootFactor valuation * 2 ^ (k + 1)) *
    (100 * survivors + 441)

def globalMixedCoreEvenCheckerCoefficient100
    (valuation : GlobalMixedEvenValuation) (k survivors : Nat) : Nat :=
  globalMixedEvenCheckerCoefficient100 valuation
    (globalMixedCoreEvenCoefficient100 valuation k survivors)

def globalMixedCoreEvenValuationPassesFromWords
    (valuation : GlobalMixedEvenValuation)
    (normalWords twistWords : List Nat × List Nat)
    (k endpoint : Nat) : Bool :=
  let normalValuationWords :=
    GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords valuation
  let twistValuationWords :=
    GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords valuation
  let normalFalse := globalMixedCoreEvenRestrictedCount
    normalWords.1 normalValuationWords
  let normalTrue := globalMixedCoreEvenRestrictedCount
    normalWords.2 normalValuationWords
  let twistFalse := globalMixedCoreEvenRestrictedCount
    twistWords.1 twistValuationWords
  let twistTrue := globalMixedCoreEvenRestrictedCount
    twistWords.2 twistValuationWords
  let discount := globalMixedCoreLineDiscount endpoint
  globalMixedCoreLinePassesAt
      (globalMixedCoreEvenCheckerCoefficient100 valuation k normalFalse)
      endpoint discount &&
    globalMixedCoreLinePassesAt
      (globalMixedCoreEvenCheckerCoefficient100 valuation k normalTrue)
      endpoint discount &&
    globalMixedCoreLinePassesAt
      (globalMixedCoreEvenCheckerCoefficient100 valuation k twistFalse)
      endpoint discount &&
    globalMixedCoreLinePassesAt
      (globalMixedCoreEvenCheckerCoefficient100 valuation k twistTrue)
      endpoint discount

/-- The eight genuinely new rows.  Valuation one has root factor one, so its
four rows follow monotonically from the existing unfiltered checker and are
not recomputed here. -/
def globalMixedCoreEvenPrefixPasses
    (normalLookup twistLookup : Nat -> List Nat)
    (k endpoint : Nat) (supportPrefix : List Nat) : Bool :=
  let maskedSupport := supportPrefix.filter fun p => decide (p <= 2843)
  let normalWords := globalMixedCoreSupportWordPair normalLookup maskedSupport
    (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords false)
    (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords true)
  let twistWords := globalMixedCoreSupportWordPair twistLookup maskedSupport
    (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords false)
    (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords true)
  globalMixedCoreEvenValuationPassesFromWords .two normalWords twistWords
      k endpoint &&
    globalMixedCoreEvenValuationPassesFromWords .three normalWords twistWords
      k endpoint

end Erdos848
