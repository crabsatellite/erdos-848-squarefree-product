import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def projectionOdd0064Tree : IndexedMarkerData.ProjectionIndexTree :=
  (.node (.node (.node (.node (.node .skip .skip) (.node (.leaf 62895) (.leaf 62896))) (.node (.node (.leaf 62897) .skip) (.node .skip .skip))) (.node (.node (.node (.leaf 62898) .skip) (.node (.leaf 62899) .skip)) (.node (.node .skip (.leaf 62900)) (.node (.leaf 62901) (.leaf 62902))))) (.node (.node (.node (.node (.leaf 62903) .skip) (.node (.leaf 62904) (.leaf 62905))) (.node (.node .skip (.leaf 62906)) (.node .skip .skip))) (.node (.node (.node (.leaf 62907) .skip) (.node (.leaf 62908) (.leaf 62909))) (.node (.node .skip (.leaf 62910)) (.node .skip .skip)))))

theorem projectionOdd0064Check :
    projectionOdd0064Tree.check indexedMarker oddMarker .odd 125760 = true := by decide

theorem projectionOdd0064 :
    IndexedMarkerData.ProjectionIndexTree.RangeProjected indexedMarker oddMarker .odd 125760 125792 := by
  simpa [projectionOdd0064Tree, IndexedMarkerData.ProjectionIndexTree.size] using
    IndexedMarkerData.ProjectionIndexTree.range projectionOdd0064Check

end Erdos848.GeneratedLowDiagonalCoverage
