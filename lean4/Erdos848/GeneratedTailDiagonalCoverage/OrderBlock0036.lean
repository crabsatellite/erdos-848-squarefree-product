import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderAll0036Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))

theorem orderAll0036Check :
    orderAll0036Tree.check indexedMarker 251568 = true := by decide

theorem orderAll0036 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered indexedMarker 251568 251577 := by
  simpa [orderAll0036Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderAll0036Check

end Erdos848.GeneratedTailDiagonalCoverage
