import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderModOne0018Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))

theorem orderModOne0018Check :
    orderModOne0018Tree.check modOneMarker 31424 = true := by decide

theorem orderModOne0018 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered modOneMarker 31424 31441 := by
  simpa [orderModOne0018Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderModOne0018Check

end Erdos848.GeneratedLowDiagonalCoverage
