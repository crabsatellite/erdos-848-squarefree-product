import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def projectionModThree0064Tree : IndexedMarkerData.ProjectionIndexTree :=
  (.node (.node (.node (.node (.node .skip .skip) (.node .skip .skip)) (.node (.node .skip .skip) (.node .skip .skip))) (.node (.node (.node .skip .skip) (.node (.leaf 31452) .skip)) (.node (.node .skip .skip) (.node (.leaf 31453) (.leaf 31454))))) (.node (.node (.node (.node (.leaf 31455) .skip) (.node .skip .skip)) (.node (.node .skip .skip) (.node .skip .skip))) (.node (.node (.node (.leaf 31456) .skip) (.node (.leaf 31457) (.leaf 31458))) (.node (.node .skip .skip) (.node .skip .skip)))))

theorem projectionModThree0064Check :
    projectionModThree0064Tree.check indexedMarker modThreeMarker .modThree 125760 = true := by decide

theorem projectionModThree0064 :
    IndexedMarkerData.ProjectionIndexTree.RangeProjected indexedMarker modThreeMarker .modThree 125760 125792 := by
  simpa [projectionModThree0064Tree, IndexedMarkerData.ProjectionIndexTree.size] using
    IndexedMarkerData.ProjectionIndexTree.range projectionModThree0064Check

end Erdos848.GeneratedLowDiagonalCoverage
