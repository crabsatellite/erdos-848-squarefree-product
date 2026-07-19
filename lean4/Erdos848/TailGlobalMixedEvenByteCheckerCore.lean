import Erdos848.TailGlobalMixedEvenSupportCheckerCore
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.ByteData

namespace Erdos848

/-!
# Eight-bit computational core for even support terminals

The older checker stores 64-bit words.  That representation is compact on
disk but reducing `Nat.and` on large numerals is needlessly expensive in the
kernel.  This core stores the identical bit stream as bytes.  Every bitwise
operation is therefore bounded by `255`; the later semantic bridge proves
that the byte stream represents the same survivor set.
-/

def globalMixedByteIntersect : List Nat -> List Nat -> List Nat
  | left :: lefts, right :: rights =>
      (left &&& right) :: globalMixedByteIntersect lefts rights
  | _, _ => []

def globalMixedByteSupportPair
    (lookup : Nat -> List Nat) :
    List Nat -> List Nat -> List Nat -> (List Nat × List Nat)
  | [], falseBytes, trueBytes => (falseBytes, trueBytes)
  | p :: support, falseBytes, trueBytes =>
      let rest := globalMixedByteSupportPair lookup support falseBytes trueBytes
      let mask := lookup p
      (globalMixedByteIntersect mask rest.1,
        globalMixedByteIntersect mask rest.2)

def globalMixedByteCount : List Nat -> Nat
  | [] => 0
  | byte :: bytes =>
      globalMixedCoreByteCount byte + globalMixedByteCount bytes

def globalMixedByteEvenRestrictedCount
    (supportBytes valuationBytes : List Nat) : Nat :=
  globalMixedByteCount (globalMixedByteIntersect supportBytes valuationBytes)

def globalMixedByteEvenValuationPassesFromBytes
    (valuation : GlobalMixedEvenValuation)
    (normalBytes twistBytes : List Nat × List Nat)
    (k endpoint : Nat) : Bool :=
  let normalValuationBytes :=
    GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationBytes valuation
  let twistValuationBytes :=
    GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationBytes valuation
  let normalFalse := globalMixedByteEvenRestrictedCount
    normalBytes.1 normalValuationBytes
  let normalTrue := globalMixedByteEvenRestrictedCount
    normalBytes.2 normalValuationBytes
  let twistFalse := globalMixedByteEvenRestrictedCount
    twistBytes.1 twistValuationBytes
  let twistTrue := globalMixedByteEvenRestrictedCount
    twistBytes.2 twistValuationBytes
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

def globalMixedByteEvenPrefixPasses
    (normalLookup twistLookup : Nat -> List Nat)
    (k endpoint : Nat) (supportPrefix : List Nat) : Bool :=
  let maskedSupport := supportPrefix.filter fun p => decide (p <= 2843)
  let normalBytes := globalMixedByteSupportPair normalLookup maskedSupport
    (GeneratedTailGlobalMixedEvenSupportCoverage.normalCosetBytes false)
    (GeneratedTailGlobalMixedEvenSupportCoverage.normalCosetBytes true)
  let twistBytes := globalMixedByteSupportPair twistLookup maskedSupport
    (GeneratedTailGlobalMixedEvenSupportCoverage.twistCosetBytes false)
    (GeneratedTailGlobalMixedEvenSupportCoverage.twistCosetBytes true)
  globalMixedByteEvenValuationPassesFromBytes .two normalBytes twistBytes
      k endpoint &&
    globalMixedByteEvenValuationPassesFromBytes .three normalBytes twistBytes
      k endpoint

end Erdos848
