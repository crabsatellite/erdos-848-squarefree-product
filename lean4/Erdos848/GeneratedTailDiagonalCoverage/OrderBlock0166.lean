import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellThree70006Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node .leaf .leaf) (.node .leaf .leaf))

theorem orderCellThree70006Check :
    orderCellThree70006Tree.check cellMarkerThree7 6992 = true := by decide

theorem orderCellThree70006 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerThree7 6992 6997 := by
  simpa [orderCellThree70006Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellThree70006Check

end Erdos848.GeneratedTailDiagonalCoverage
