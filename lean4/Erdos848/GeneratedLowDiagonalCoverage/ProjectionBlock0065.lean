import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def projectionOdd0065Tree : IndexedMarkerData.ProjectionIndexTree :=
  (.node (.node (.node (.node (.leaf 62911) (.leaf 62912)) (.node .skip (.leaf 62913))) (.node (.node .skip .skip) (.node .skip .skip))) (.node (.node (.node (.leaf 62914) .skip) (.node .skip .skip)) (.node (.node (.leaf 62915) (.leaf 62916)) (.node (.leaf 62917) .skip))))

theorem projectionOdd0065Check :
    projectionOdd0065Tree.check indexedMarker oddMarker .odd 125792 = true := by decide

theorem projectionOdd0065 :
    IndexedMarkerData.ProjectionIndexTree.RangeProjected indexedMarker oddMarker .odd 125792 125808 := by
  simpa [projectionOdd0065Tree, IndexedMarkerData.ProjectionIndexTree.size] using
    IndexedMarkerData.ProjectionIndexTree.range projectionOdd0065Check

end Erdos848.GeneratedLowDiagonalCoverage
