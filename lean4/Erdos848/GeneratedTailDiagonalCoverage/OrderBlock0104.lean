import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderCellOne80006Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node .leaf .leaf)

theorem orderCellOne80006Check :
    orderCellOne80006Tree.check cellMarkerOne8 6984 = true := by decide

theorem orderCellOne80006 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered cellMarkerOne8 6984 6987 := by
  simpa [orderCellOne80006Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderCellOne80006Check

end Erdos848.GeneratedTailDiagonalCoverage
