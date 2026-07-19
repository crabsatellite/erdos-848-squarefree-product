import Erdos848.TailGlobalMixedEvenSupportCheckerCore
import Erdos848.TailGlobalMixedSupportWordDefs

namespace Erdos848

/-! Lightweight natural-number count definitions for even terminal rows. -/

def globalMixedEvenTerminalNormalCount
    (valuation : GlobalMixedEvenValuation)
    (support : List Nat) (squareCoset : Bool) : Nat :=
  globalMixedCoreEvenRestrictedCount
    (globalMixedNormalSupportWords support squareCoset)
    (GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords
      valuation)

def globalMixedEvenTerminalTwistCount
    (valuation : GlobalMixedEvenValuation)
    (support : List Nat) (squareCoset : Bool) : Nat :=
  globalMixedCoreEvenRestrictedCount
    (globalMixedTwistSupportWords support squareCoset)
    (GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords
      valuation)

end Erdos848
