import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderModOne0021Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node .leaf .leaf)

theorem orderModOne0021Check :
    orderModOne0021Tree.check modOneMarker 31452 = true := by decide

theorem orderModOne0021 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered modOneMarker 31452 31455 := by
  simpa [orderModOne0021Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderModOne0021Check

end Erdos848.GeneratedLowDiagonalCoverage
