import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree70008Tree : IndexedMarkerData.AdjacentIndexTree :=
  .leaf

theorem orderCellThree70008Check :
    orderCellThree70008Tree.check cellMarkerThree7 6998 = true := by decide

theorem orderCellThree70008 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree7 6998 7000 := by
  simpa [orderCellThree70008Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree70008Check

end Erdos848.GeneratedTailDiagonalCoverage
