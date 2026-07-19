import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oddCellProjection0034Tree : IndexedMarkerData.OddCellProjectionTree :=
  (.node (.node (.node (.node (.node (.leaf { parity := false, residue := 6 } 6986) .skip) (.node .skip (.leaf { parity := true, residue := 2 } 6988))) (.node (.node (.leaf { parity := true, residue := 0 } 6998) (.leaf { parity := true, residue := 0 } 6999)) (.node .skip (.leaf { parity := false, residue := 7 } 6983)))) (.node (.node (.node (.leaf { parity := false, residue := 1 } 7011) (.leaf { parity := false, residue := 6 } 6987)) (.node .skip (.leaf { parity := false, residue := 3 } 6988))) (.node (.node .skip .skip) (.node .skip .skip)))) (.node (.node (.node (.node (.leaf { parity := true, residue := 3 } 6988) .skip) (.node .skip (.leaf { parity := true, residue := 8 } 6976))) (.node (.node .skip .skip) (.node (.leaf { parity := false, residue := 8 } 6985) (.leaf { parity := true, residue := 8 } 6977)))) (.node (.node (.node (.leaf { parity := true, residue := 3 } 6989) .skip) (.node (.leaf { parity := false, residue := 4 } 6977) .skip)) (.node (.node .skip .skip) (.node .skip (.leaf { parity := true, residue := 4 } 6986))))))

theorem oddCellProjection0034Check :
    oddCellProjection0034Tree.check indexedMarker cellTargets 251520 = true := by decide

theorem oddCellProjection0034 :
    IndexedMarkerData.OddCellProjectionTree.RangeProjected indexedMarker cellTargets 251520 251552 := by
  simpa [oddCellProjection0034Tree, IndexedMarkerData.OddCellProjectionTree.size] using
    IndexedMarkerData.OddCellProjectionTree.range oddCellProjection0034Check

end Erdos848.GeneratedTailDiagonalCoverage
