import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oddCellProjection0035Tree : IndexedMarkerData.OddCellProjectionTree :=
  (.node (.node (.node (.node .skip (.leaf { parity := true, residue := 0 } 7000)) (.node .skip .skip)) (.node (.node (.leaf { parity := false, residue := 0 } 6982) (.leaf { parity := true, residue := 5 } 6994)) (.node (.leaf { parity := false, residue := 1 } 7012) .skip))) (.node (.node (.node (.leaf { parity := false, residue := 5 } 6998) (.leaf { parity := false, residue := 0 } 6983)) (.node .skip .skip)) (.node (.node .skip (.leaf { parity := false, residue := 8 } 6986)) (.node (.leaf { parity := true, residue := 5 } 6995) .skip))))

theorem oddCellProjection0035Check :
    oddCellProjection0035Tree.check indexedMarker cellTargets 251552 = true := by decide

theorem oddCellProjection0035 :
    IndexedMarkerData.OddCellProjectionTree.RangeProjected indexedMarker cellTargets 251552 251568 := by
  simpa [oddCellProjection0035Tree, IndexedMarkerData.OddCellProjectionTree.size] using
    IndexedMarkerData.OddCellProjectionTree.range oddCellProjection0035Check

end Erdos848.GeneratedTailDiagonalCoverage
