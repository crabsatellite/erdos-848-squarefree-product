import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree10004Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))) (.node (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))) (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))))

theorem orderCellThree10004Check :
    orderCellThree10004Tree.check cellMarkerThree1 6912 = true := by decide

theorem orderCellThree10004 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree1 6912 6945 := by
  simpa [orderCellThree10004Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree10004Check

end Erdos848.GeneratedTailDiagonalCoverage
