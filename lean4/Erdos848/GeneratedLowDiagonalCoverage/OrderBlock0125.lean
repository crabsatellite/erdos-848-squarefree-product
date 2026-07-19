import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def orderModOne0020Tree : IndexedMarkerData.AdjacentIndexTree :=
  (.node (.node .leaf .leaf) (.node .leaf .leaf))

theorem orderModOne0020Check :
    orderModOne0020Tree.check modOneMarker 31448 = true := by decide

theorem orderModOne0020 :
    IndexedMarkerData.AdjacentIndexTree.RangeOrdered modOneMarker 31448 31453 := by
  simpa [orderModOne0020Tree, IndexedMarkerData.AdjacentIndexTree.size] using
    IndexedMarkerData.AdjacentIndexTree.range orderModOne0020Check

end Erdos848.GeneratedLowDiagonalCoverage
