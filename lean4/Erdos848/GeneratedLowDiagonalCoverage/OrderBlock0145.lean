import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderModThree0018Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))

theorem orderModThree0018Check :
    orderModThree0018Tree.check modThreeMarker 31424 = true := by decide

theorem orderModThree0018 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered modThreeMarker 31424 31457 := by
  simpa [orderModThree0018Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderModThree0018Check

end Erdos848.GeneratedLowDiagonalCoverage
