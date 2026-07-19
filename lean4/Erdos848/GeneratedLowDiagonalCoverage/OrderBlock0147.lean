import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderModThree0020Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node .leaf .leaf)

theorem orderModThree0020Check :
    orderModThree0020Tree.check modThreeMarker 31460 = true := by decide

theorem orderModThree0020 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered modThreeMarker 31460 31463 := by
  simpa [orderModThree0020Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderModThree0020Check

end Erdos848.GeneratedLowDiagonalCoverage
