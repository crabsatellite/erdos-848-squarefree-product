import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderAll0067Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node .leaf .leaf)

theorem orderAll0067Check :
    orderAll0067Tree.check indexedMarker 125804 = true := by decide

theorem orderAll0067 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered indexedMarker 125804 125807 := by
  simpa [orderAll0067Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderAll0067Check

end Erdos848.GeneratedLowDiagonalCoverage
