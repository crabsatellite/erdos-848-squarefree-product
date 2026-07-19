import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oddCellProjection0039Tree : IndexedMarkerData.OddCellProjectionTree :=
  .skip

theorem oddCellProjection0039Check :
    oddCellProjection0039Tree.check indexedMarker cellTargets 251582 = true := by decide

theorem oddCellProjection0039 :
    IndexedMarkerData.OddCellProjectionTree.RangeProjected indexedMarker cellTargets 251582 251583 := by
  simpa [oddCellProjection0039Tree, IndexedMarkerData.OddCellProjectionTree.size] using
    IndexedMarkerData.OddCellProjectionTree.range oddCellProjection0039Check

end Erdos848.GeneratedTailDiagonalCoverage
