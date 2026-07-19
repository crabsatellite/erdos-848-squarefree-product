import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oddCellProjection0036Tree : IndexedMarkerData.OddCellProjectionTree :=
  (.node (.node (.node (.leaf { parity := true, residue := 5 } 6996) (.leaf { parity := true, residue := 0 } 7001)) (.node .skip (.leaf { parity := false, residue := 0 } 6984))) (.node (.node (.leaf { parity := true, residue := 1 } 6975) (.leaf { parity := true, residue := 3 } 6990)) (.node .skip (.leaf { parity := true, residue := 7 } 6999))))

theorem oddCellProjection0036Check :
    oddCellProjection0036Tree.check indexedMarker cellTargets 251568 = true := by decide

theorem oddCellProjection0036 :
    IndexedMarkerData.OddCellProjectionTree.RangeProjected indexedMarker cellTargets 251568 251576 := by
  simpa [oddCellProjection0036Tree, IndexedMarkerData.OddCellProjectionTree.size] using
    IndexedMarkerData.OddCellProjectionTree.range oddCellProjection0036Check

end Erdos848.GeneratedTailDiagonalCoverage
