import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderAll0037Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node .leaf .leaf) (.node .leaf .leaf))

theorem orderAll0037Check :
    orderAll0037Tree.check indexedMarker 251576 = true := by decide

theorem orderAll0037 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered indexedMarker 251576 251581 := by
  simpa [orderAll0037Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderAll0037Check

end Erdos848.GeneratedTailDiagonalCoverage
