import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderModOne0019Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node (.node .leaf .leaf) (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf)))

theorem orderModOne0019Check :
    orderModOne0019Tree.check modOneMarker 31440 = true := by decide

theorem orderModOne0019 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered modOneMarker 31440 31449 := by
  simpa [orderModOne0019Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderModOne0019Check

end Erdos848.GeneratedLowDiagonalCoverage
