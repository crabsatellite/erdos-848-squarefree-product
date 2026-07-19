import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def projectionModThree0065Tree : IndexedMarkerData.ProjectionIndexTree :=
  (.node (.node (.node (.node .skip (.leaf 31459)) (.node .skip .skip)) (.node (.node .skip .skip) (.node .skip .skip))) (.node (.node (.node .skip .skip) (.node .skip .skip)) (.node (.node (.leaf 31460) (.leaf 31461)) (.node (.leaf 31462) .skip))))

theorem projectionModThree0065Check :
    projectionModThree0065Tree.check indexedMarker modThreeMarker .modThree 125792 = true := by decide

theorem projectionModThree0065 :
    IndexedMarkerData.ProjectionIndexTree.RangeProjected indexedMarker modThreeMarker .modThree 125792 125808 := by
  simpa [projectionModThree0065Tree, IndexedMarkerData.ProjectionIndexTree.size] using
    IndexedMarkerData.ProjectionIndexTree.range projectionModThree0065Check

end Erdos848.GeneratedLowDiagonalCoverage
