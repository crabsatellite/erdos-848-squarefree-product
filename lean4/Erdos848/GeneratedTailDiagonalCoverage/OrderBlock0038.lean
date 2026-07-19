import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderAll0038Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node .leaf .leaf)

theorem orderAll0038Check :
    orderAll0038Tree.check indexedMarker 251580 = true := by decide

theorem orderAll0038 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered indexedMarker 251580 251583 := by
  simpa [orderAll0038Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderAll0038Check

end Erdos848.GeneratedTailDiagonalCoverage
