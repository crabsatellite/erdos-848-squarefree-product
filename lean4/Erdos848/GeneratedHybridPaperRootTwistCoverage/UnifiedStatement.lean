import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedData

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

/--
The common proposition exchanged by the concrete scan leaves and
the finite dispatchers.  Keeping the scan behind this named head
prevents dispatcher elaboration from reducing the large Boolean
certificate after the concrete leaf has already checked it.
-/
def unifiedScanStatement
    (regime : Erdos848.HybridPaperDiagonalRegime)
    (squareCoset : Bool)
    (k : Nat) : Prop :=
    Erdos848.hybridPaperRootScanPasses
      (unifiedLookup regime)
      (regime.rootTarget k) regime.stop (k - 1) 1
      Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes
      (regime.rootBaseWords squareCoset) = true

end Erdos848.GeneratedHybridPaperRootTwistCoverage
