import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderAll0066Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node .leaf .leaf) (.node .leaf .leaf))

theorem orderAll0066Check :
    orderAll0066Tree.check indexedMarker 125800 = true := by decide

theorem orderAll0066 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered indexedMarker 125800 125805 := by
  simpa [orderAll0066Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderAll0066Check

end Erdos848.GeneratedLowDiagonalCoverage
