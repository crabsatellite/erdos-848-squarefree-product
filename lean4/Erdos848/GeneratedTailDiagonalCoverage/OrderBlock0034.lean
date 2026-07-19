import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderAll0034Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))

theorem orderAll0034Check :
    orderAll0034Tree.check indexedMarker 251520 = true := by decide

theorem orderAll0034 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered indexedMarker 251520 251553 := by
  simpa [orderAll0034Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderAll0034Check

end Erdos848.GeneratedTailDiagonalCoverage
