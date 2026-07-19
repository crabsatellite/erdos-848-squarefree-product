import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def projectionModOne0063Tree : IndexedMarkerData.ProjectionIndexTree :=
  (.node (.node (.node (.node (.node (.node .skip .skip) (.node .skip .skip)) (.node (.node .skip (.leaf 31428)) (.node .skip (.leaf 31429)))) (.node (.node (.node .skip (.leaf 31430)) (.node .skip (.leaf 31431))) (.node (.node .skip .skip) (.node .skip .skip)))) (.node (.node (.node (.node .skip .skip) (.node .skip (.leaf 31432))) (.node (.node .skip .skip) (.node .skip .skip))) (.node (.node (.node (.leaf 31433) .skip) (.node .skip (.leaf 31434))) (.node (.node (.leaf 31435) .skip) (.node .skip .skip))))) (.node (.node (.node (.node (.node .skip (.leaf 31436)) (.node (.leaf 31437) .skip)) (.node (.node .skip (.leaf 31438)) (.node (.leaf 31439) .skip))) (.node (.node (.node .skip .skip) (.node .skip .skip)) (.node (.node .skip .skip) (.node (.leaf 31440) (.leaf 31441))))) (.node (.node (.node (.node .skip .skip) (.node .skip .skip)) (.node (.node .skip .skip) (.node .skip .skip))) (.node (.node (.node .skip .skip) (.node .skip (.leaf 31442))) (.node (.node .skip .skip) (.node .skip .skip))))))

theorem projectionModOne0063Check :
    projectionModOne0063Tree.check indexedMarker modOneMarker .modOne 125696 = true := by decide

theorem projectionModOne0063 :
    IndexedMarkerData.ProjectionIndexTree.RangeProjected indexedMarker modOneMarker .modOne 125696 125760 := by
  simpa [projectionModOne0063Tree, IndexedMarkerData.ProjectionIndexTree.size] using
    IndexedMarkerData.ProjectionIndexTree.range projectionModOne0063Check

end Erdos848.GeneratedLowDiagonalCoverage
