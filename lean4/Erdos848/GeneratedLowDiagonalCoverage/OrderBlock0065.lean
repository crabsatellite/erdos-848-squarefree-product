import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderAll0065Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))

theorem orderAll0065Check :
    orderAll0065Tree.check indexedMarker 125792 = true := by decide

theorem orderAll0065 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered indexedMarker 125792 125801 := by
  simpa [orderAll0065Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderAll0065Check

end Erdos848.GeneratedLowDiagonalCoverage
