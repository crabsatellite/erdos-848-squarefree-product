import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oddCellProjection0037Tree : IndexedMarkerData.OddCellProjectionTree :=
  (.node (.node .skip (.leaf { parity := false, residue := 1 } 7013)) (.node (.leaf { parity := false, residue := 0 } 6985) (.leaf { parity := true, residue := 0 } 7002)))

theorem oddCellProjection0037Check :
    oddCellProjection0037Tree.check indexedMarker cellTargets 251576 = true := by decide

theorem oddCellProjection0037 :
    IndexedMarkerData.OddCellProjectionTree.RangeProjected indexedMarker cellTargets 251576 251580 := by
  simpa [oddCellProjection0037Tree, IndexedMarkerData.OddCellProjectionTree.size] using
    IndexedMarkerData.OddCellProjectionTree.range oddCellProjection0037Check

end Erdos848.GeneratedTailDiagonalCoverage
