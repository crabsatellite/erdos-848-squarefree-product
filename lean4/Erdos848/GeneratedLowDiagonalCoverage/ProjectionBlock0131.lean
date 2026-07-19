import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def projectionModOne0065Tree : IndexedMarkerData.ProjectionIndexTree :=
  (.node (.node (.node (.node (.leaf 31452) .skip) (.node .skip (.leaf 31453))) (.node (.node .skip .skip) (.node .skip .skip))) (.node (.node (.node (.leaf 31454) .skip) (.node .skip .skip)) (.node (.node .skip .skip) (.node .skip .skip))))

theorem projectionModOne0065Check :
    projectionModOne0065Tree.check indexedMarker modOneMarker .modOne 125792 = true := by decide

theorem projectionModOne0065 :
    IndexedMarkerData.ProjectionIndexTree.RangeProjected indexedMarker modOneMarker .modOne 125792 125808 := by
  simpa [projectionModOne0065Tree, IndexedMarkerData.ProjectionIndexTree.size] using
    IndexedMarkerData.ProjectionIndexTree.range projectionModOne0065Check

end Erdos848.GeneratedLowDiagonalCoverage
