import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderModThree0019Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node .leaf .leaf) (.node .leaf .leaf))

theorem orderModThree0019Check :
    orderModThree0019Tree.check modThreeMarker 31456 = true := by decide

theorem orderModThree0019 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered modThreeMarker 31456 31461 := by
  simpa [orderModThree0019Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderModThree0019Check

end Erdos848.GeneratedLowDiagonalCoverage
