import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree70007Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node .leaf .leaf)

theorem orderCellThree70007Check :
    orderCellThree70007Tree.check cellMarkerThree7 6996 = true := by decide

theorem orderCellThree70007 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree7 6996 6999 := by
  simpa [orderCellThree70007Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree70007Check

end Erdos848.GeneratedTailDiagonalCoverage
