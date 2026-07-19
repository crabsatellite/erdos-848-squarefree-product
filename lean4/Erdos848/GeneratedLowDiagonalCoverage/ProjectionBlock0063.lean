import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def projectionOdd0063Tree : IndexedMarkerData.ProjectionIndexTree :=
  (.node (.node (.node (.node (.node (.node .skip .skip) (.node (.leaf 62862) .skip)) (.node (.node (.leaf 62863) (.leaf 62864)) (.node .skip (.leaf 62865)))) (.node (.node (.node .skip (.leaf 62866)) (.node .skip (.leaf 62867))) (.node (.node .skip .skip) (.node .skip .skip)))) (.node (.node (.node (.node .skip (.leaf 62868)) (.node .skip (.leaf 62869))) (.node (.node (.leaf 62870) (.leaf 62871)) (.node (.leaf 62872) .skip))) (.node (.node (.node (.leaf 62873) (.leaf 62874)) (.node .skip (.leaf 62875))) (.node (.node (.leaf 62876) .skip) (.node .skip .skip))))) (.node (.node (.node (.node (.node (.leaf 62877) (.leaf 62878)) (.node (.leaf 62879) .skip)) (.node (.node (.leaf 62880) (.leaf 62881)) (.node (.leaf 62882) (.leaf 62883)))) (.node (.node (.node (.leaf 62884) .skip) (.node (.leaf 62885) .skip)) (.node (.node .skip .skip) (.node (.leaf 62886) (.leaf 62887))))) (.node (.node (.node (.node .skip .skip) (.node (.leaf 62888) (.leaf 62889))) (.node (.node (.leaf 62890) .skip) (.node (.leaf 62891) .skip))) (.node (.node (.node .skip .skip) (.node (.leaf 62892) (.leaf 62893))) (.node (.node (.leaf 62894) .skip) (.node .skip .skip))))))

theorem projectionOdd0063Check :
    projectionOdd0063Tree.check indexedMarker oddMarker .odd 125696 = true := by decide

theorem projectionOdd0063 :
    IndexedMarkerData.ProjectionIndexTree.RangeProjected indexedMarker oddMarker .odd 125696 125760 := by
  simpa [projectionOdd0063Tree, IndexedMarkerData.ProjectionIndexTree.size] using
    IndexedMarkerData.ProjectionIndexTree.range projectionOdd0063Check

end Erdos848.GeneratedLowDiagonalCoverage
