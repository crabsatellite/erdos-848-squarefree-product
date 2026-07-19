import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderAll0064Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))

theorem orderAll0064Check :
    orderAll0064Tree.check indexedMarker 125760 = true := by decide

theorem orderAll0064 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered indexedMarker 125760 125793 := by
  simpa [orderAll0064Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderAll0064Check

end Erdos848.GeneratedLowDiagonalCoverage
