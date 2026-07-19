import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oddCellProjection0038Tree : IndexedMarkerData.OddCellProjectionTree :=
  (.node .skip (.leaf { parity := false, residue := 6 } 6988))

theorem oddCellProjection0038Check :
    oddCellProjection0038Tree.check indexedMarker cellTargets 251580 = true := by decide

theorem oddCellProjection0038 :
    IndexedMarkerData.OddCellProjectionTree.RangeProjected indexedMarker cellTargets 251580 251582 := by
  simpa [oddCellProjection0038Tree, IndexedMarkerData.OddCellProjectionTree.size] using
    IndexedMarkerData.OddCellProjectionTree.range oddCellProjection0038Check

end Erdos848.GeneratedTailDiagonalCoverage
