import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def projectionModThree0063Tree : IndexedMarkerData.ProjectionIndexTree :=
  (.node (.node (.node (.node (.node (.node .skip .skip) (.node (.leaf 31434) .skip)) (.node (.node (.leaf 31435) .skip) (.node .skip .skip))) (.node (.node (.node .skip .skip) (.node .skip .skip)) (.node (.node .skip .skip) (.node .skip .skip)))) (.node (.node (.node (.node .skip (.leaf 31436)) (.node .skip .skip)) (.node (.node (.leaf 31437) (.leaf 31438)) (.node (.leaf 31439) .skip))) (.node (.node (.node .skip (.leaf 31440)) (.node .skip .skip)) (.node (.node .skip .skip) (.node .skip .skip))))) (.node (.node (.node (.node (.node (.leaf 31441) .skip) (.node .skip .skip)) (.node (.node (.leaf 31442) .skip) (.node .skip (.leaf 31443)))) (.node (.node (.node (.leaf 31444) .skip) (.node (.leaf 31445) .skip)) (.node (.node .skip .skip) (.node .skip .skip)))) (.node (.node (.node (.node .skip .skip) (.node (.leaf 31446) (.leaf 31447))) (.node (.node (.leaf 31448) .skip) (.node (.leaf 31449) .skip))) (.node (.node (.node .skip .skip) (.node (.leaf 31450) .skip)) (.node (.node (.leaf 31451) .skip) (.node .skip .skip))))))

theorem projectionModThree0063Check :
    projectionModThree0063Tree.check indexedMarker modThreeMarker .modThree 125696 = true := by decide

theorem projectionModThree0063 :
    IndexedMarkerData.ProjectionIndexTree.RangeProjected indexedMarker modThreeMarker .modThree 125696 125760 := by
  simpa [projectionModThree0063Tree, IndexedMarkerData.ProjectionIndexTree.size] using
    IndexedMarkerData.ProjectionIndexTree.range projectionModThree0063Check

end Erdos848.GeneratedLowDiagonalCoverage
