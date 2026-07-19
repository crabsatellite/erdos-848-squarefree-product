import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def projectionModOne0064Tree : IndexedMarkerData.ProjectionIndexTree :=
  (.node (.node (.node (.node (.node .skip .skip) (.node (.leaf 31443) (.leaf 31444))) (.node (.node (.leaf 31445) .skip) (.node .skip .skip))) (.node (.node (.node (.leaf 31446) .skip) (.node .skip .skip)) (.node (.node .skip (.leaf 31447)) (.node .skip .skip)))) (.node (.node (.node (.node .skip .skip) (.node (.leaf 31448) (.leaf 31449))) (.node (.node .skip (.leaf 31450)) (.node .skip .skip))) (.node (.node (.node .skip .skip) (.node .skip .skip)) (.node (.node .skip (.leaf 31451)) (.node .skip .skip)))))

theorem projectionModOne0064Check :
    projectionModOne0064Tree.check indexedMarker modOneMarker .modOne 125760 = true := by decide

theorem projectionModOne0064 :
    IndexedMarkerData.ProjectionIndexTree.RangeProjected indexedMarker modOneMarker .modOne 125760 125792 := by
  simpa [projectionModOne0064Tree, IndexedMarkerData.ProjectionIndexTree.size] using
    IndexedMarkerData.ProjectionIndexTree.range projectionModOne0064Check

end Erdos848.GeneratedLowDiagonalCoverage
