import Erdos848.GeneratedTailDiagonalCoverage.TailEnvelopeBlock0000
import Erdos848.GeneratedTailDiagonalCoverage.TailFailureFibreAggregate
import Erdos848.TailDiagonalCapacityFailureScalar

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailEnvelope0000FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![69, 74, 76, 71, 73, 75, 66, 64, 71, 73, 77, 70, 69, 71, 76, 76, 68, 66, 77, 73, 69, 71, 77, 73, 67, 73, 70, 76, 81, 70, 70, 74, 70, 69, 72, 73, 69, 69, 70, 69, 69, 74, 70, 75, 69, 75, 77, 68, 72], ![69, 69, 75, 74, 68, 72, 73, 75, 73, 68, 77, 72, 70, 77, 74, 72, 72, 71, 78, 83, 73, 72, 73, 71, 65, 68, 74, 71, 70, 71, 73, 67, 68, 77, 71, 76, 72, 72, 71, 78, 73, 70, 72, 74, 72, 69, 74, 72, 68], ![67, 77, 74, 71, 70, 70, 68, 75, 74, 72, 68, 72, 65, 70, 70, 73, 67, 75, 72, 73, 69, 70, 73, 73, 75, 77, 74, 71, 71, 66, 69, 72, 72, 73, 71, 68, 69, 68, 71, 70, 75, 73, 73, 70, 72, 73, 68, 73, 70], ![68, 70, 71, 68, 69, 72, 72, 75, 73, 66, 72, 69, 73, 74, 73, 74, 74, 71, 73, 72, 76, 74, 69, 74, 76, 72, 67, 67, 72, 68, 69, 78, 80, 71, 72, 71, 71, 72, 76, 72, 78, 67, 71, 73, 76, 67, 70, 70, 77], ![75, 71, 73, 73, 76, 76, 73, 73, 76, 68, 74, 71, 73, 76, 71, 69, 68, 69, 65, 72, 67, 67, 68, 70, 75, 68, 70, 71, 72, 72, 72, 74, 75, 69, 73, 68, 75, 75, 69, 69, 70, 66, 73, 69, 71, 73, 71, 71, 74], ![74, 69, 68, 74, 80, 69, 75, 69, 72, 69, 67, 72, 80, 72, 69, 72, 75, 75, 75, 65, 74, 73, 68, 70, 73, 73, 69, 70, 71, 78, 73, 64, 72, 77, 70, 71, 79, 76, 66, 70, 66, 67, 76, 68, 74, 75, 70, 69, 72], ![74, 78, 71, 67, 76, 70, 71, 74, 66, 75, 75, 72, 77, 68, 62, 65, 77, 73, 69, 72, 69, 69, 72, 70, 75, 76, 74, 74, 69, 71, 73, 70, 67, 74, 71, 76, 69, 74, 69, 69, 69, 76, 71, 70, 65, 71, 76, 69, 69], ![73, 73, 69, 73, 71, 73, 69, 70, 74, 77, 72, 68, 68, 71, 71, 71, 76, 74, 71, 64, 72, 73, 73, 70, 68, 70, 72, 71, 67, 73, 69, 73, 76, 68, 76, 75, 65, 70, 72, 74, 69, 75, 70, 68, 75, 70, 73, 74, 77], ![68, 71, 73, 74, 69, 76, 75, 69, 70, 71, 69, 69, 72, 69, 78, 71, 72, 71, 73, 67, 76, 78, 71, 68, 72, 68, 70, 71, 73, 71, 70, 75, 68, 71, 75, 73, 71, 76, 72, 74, 73, 73, 71, 75, 71, 69, 78, 76, 67]]

def tailEnvelope0000FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![79, 74, 69, 72, 67, 73, 73, 75, 73, 75, 77, 74, 71, 68, 68, 71, 76, 74, 68, 71, 75, 64, 68, 73, 73, 76, 77, 67, 70, 72, 72, 70, 75, 77, 68, 70, 73, 74, 72, 68, 71, 76, 75, 69, 69, 70, 67, 69, 77], ![76, 69, 66, 68, 72, 75, 73, 68, 74, 72, 71, 67, 71, 74, 69, 69, 69, 76, 72, 68, 71, 71, 69, 78, 76, 74, 69, 65, 73, 75, 71, 73, 73, 71, 71, 69, 73, 68, 70, 74, 70, 74, 76, 70, 69, 73, 76, 66, 76], ![70, 71, 73, 70, 77, 79, 70, 69, 75, 68, 66, 75, 71, 73, 70, 71, 75, 68, 67, 75, 70, 77, 74, 70, 70, 76, 65, 65, 75, 74, 73, 70, 71, 68, 74, 74, 71, 70, 78, 70, 69, 71, 78, 69, 69, 76, 69, 72, 75], ![65, 71, 74, 69, 68, 74, 66, 69, 72, 78, 74, 72, 73, 76, 75, 69, 73, 71, 73, 76, 67, 72, 80, 72, 72, 71, 74, 75, 78, 71, 71, 69, 67, 72, 70, 64, 75, 69, 76, 67, 68, 75, 73, 72, 68, 70, 81, 71, 67], ![70, 74, 78, 70, 72, 66, 69, 70, 70, 73, 79, 69, 70, 72, 70, 69, 73, 72, 78, 67, 70, 75, 75, 73, 70, 73, 74, 74, 73, 67, 73, 71, 64, 72, 75, 71, 68, 71, 68, 72, 75, 70, 72, 68, 75, 66, 74, 75, 72], ![71, 70, 71, 72, 71, 74, 77, 73, 67, 73, 71, 69, 67, 70, 73, 75, 69, 67, 70, 66, 70, 70, 70, 75, 77, 69, 75, 75, 72, 73, 74, 72, 77, 78, 73, 70, 66, 70, 73, 73, 76, 69, 69, 73, 69, 71, 71, 79, 73], ![75, 73, 71, 68, 72, 69, 71, 76, 69, 71, 72, 67, 68, 75, 74, 73, 71, 69, 71, 77, 75, 73, 74, 74, 71, 66, 69, 75, 66, 67, 72, 68, 72, 67, 70, 74, 70, 69, 74, 78, 74, 72, 70, 74, 74, 74, 75, 74, 71], ![72, 73, 69, 78, 72, 74, 76, 75, 70, 67, 75, 77, 75, 70, 70, 77, 67, 67, 71, 71, 73, 70, 70, 70, 70, 69, 74, 71, 71, 72, 67, 74, 74, 71, 73, 75, 77, 76, 72, 71, 72, 66, 70, 74, 73, 75, 70, 70, 65], ![72, 72, 67, 73, 72, 69, 73, 73, 75, 72, 71, 68, 74, 72, 66, 71, 74, 71, 75, 75, 72, 67, 69, 71, 72, 71, 72, 70, 69, 70, 70, 73, 76, 66, 71, 71, 74, 72, 69, 70, 75, 72, 69, 76, 76, 71, 69, 70, 71]]

def tailEnvelope0000FailureFibreMaxOne : Fin 9 → Nat :=
  ![81, 83, 77, 80, 76, 80, 78, 77, 78]

def tailEnvelope0000FailureFibreMaxThree : Fin 9 → Nat :=
  ![79, 78, 79, 81, 79, 79, 78, 78, 76]

theorem tailEnvelope0000FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5024999 (tailEnvelope0000CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0000FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0000FailureCutoffTreeOne0Check :
    tailEnvelope0000FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0000FailureFibreExactOne 0) 5024999 0 = true := by decide

theorem tailEnvelope0000FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5024999 (tailEnvelope0000FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0000FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0000FailureCutoffTreeOne0Check

def tailEnvelope0000FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0000FailureCutoffTreeOne1Check :
    tailEnvelope0000FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0000FailureFibreExactOne 1) 5024999 0 = true := by decide

theorem tailEnvelope0000FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5024999 (tailEnvelope0000FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0000FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0000FailureCutoffTreeOne1Check

def tailEnvelope0000FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0000FailureCutoffTreeOne2Check :
    tailEnvelope0000FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0000FailureFibreExactOne 2) 5024999 0 = true := by decide

theorem tailEnvelope0000FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5024999 (tailEnvelope0000FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0000FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0000FailureCutoffTreeOne2Check

def tailEnvelope0000FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0000FailureCutoffTreeOne3Check :
    tailEnvelope0000FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0000FailureFibreExactOne 3) 5024999 0 = true := by decide

theorem tailEnvelope0000FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5024999 (tailEnvelope0000FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0000FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0000FailureCutoffTreeOne3Check

def tailEnvelope0000FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0000FailureCutoffTreeOne4Check :
    tailEnvelope0000FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0000FailureFibreExactOne 4) 5024999 0 = true := by decide

theorem tailEnvelope0000FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5024999 (tailEnvelope0000FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0000FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0000FailureCutoffTreeOne4Check

def tailEnvelope0000FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0000FailureCutoffTreeOne5Check :
    tailEnvelope0000FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0000FailureFibreExactOne 5) 5024999 0 = true := by decide

theorem tailEnvelope0000FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5024999 (tailEnvelope0000FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0000FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0000FailureCutoffTreeOne5Check

def tailEnvelope0000FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0000FailureCutoffTreeOne6Check :
    tailEnvelope0000FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0000FailureFibreExactOne 6) 5024999 0 = true := by decide

theorem tailEnvelope0000FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5024999 (tailEnvelope0000FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0000FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0000FailureCutoffTreeOne6Check

def tailEnvelope0000FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0000FailureCutoffTreeOne7Check :
    tailEnvelope0000FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0000FailureFibreExactOne 7) 5024999 0 = true := by decide

theorem tailEnvelope0000FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5024999 (tailEnvelope0000FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0000FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0000FailureCutoffTreeOne7Check

def tailEnvelope0000FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0000FailureCutoffTreeOne8Check :
    tailEnvelope0000FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0000FailureFibreExactOne 8) 5024999 0 = true := by decide

theorem tailEnvelope0000FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5024999 (tailEnvelope0000FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0000FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0000FailureCutoffTreeOne8Check

theorem tailEnvelope0000FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5024999 (tailEnvelope0000FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0000FailureFibreCutoffOne0 residue
  · exact tailEnvelope0000FailureFibreCutoffOne1 residue
  · exact tailEnvelope0000FailureFibreCutoffOne2 residue
  · exact tailEnvelope0000FailureFibreCutoffOne3 residue
  · exact tailEnvelope0000FailureFibreCutoffOne4 residue
  · exact tailEnvelope0000FailureFibreCutoffOne5 residue
  · exact tailEnvelope0000FailureFibreCutoffOne6 residue
  · exact tailEnvelope0000FailureFibreCutoffOne7 residue
  · exact tailEnvelope0000FailureFibreCutoffOne8 residue

theorem tailEnvelope0000FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0000FailureFibreExactOne cell residue ≤ tailEnvelope0000FailureFibreMaxOne cell := by decide

theorem tailEnvelope0000FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0000CountsOne tailEnvelope0000FailureFibreMaxOne 17850 = true := by decide

theorem tailEnvelope0000FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0000CountsOne tailEnvelope0000FailureFibreMaxOne 17926 = true := by decide

theorem tailEnvelope0000FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5024999 (tailEnvelope0000CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0000FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0000FailureCutoffTreeThree0Check :
    tailEnvelope0000FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0000FailureFibreExactThree 0) 5024999 0 = true := by decide

theorem tailEnvelope0000FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5024999 (tailEnvelope0000FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0000FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0000FailureCutoffTreeThree0Check

def tailEnvelope0000FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0000FailureCutoffTreeThree1Check :
    tailEnvelope0000FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0000FailureFibreExactThree 1) 5024999 0 = true := by decide

theorem tailEnvelope0000FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5024999 (tailEnvelope0000FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0000FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0000FailureCutoffTreeThree1Check

def tailEnvelope0000FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0000FailureCutoffTreeThree2Check :
    tailEnvelope0000FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0000FailureFibreExactThree 2) 5024999 0 = true := by decide

theorem tailEnvelope0000FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5024999 (tailEnvelope0000FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0000FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0000FailureCutoffTreeThree2Check

def tailEnvelope0000FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0000FailureCutoffTreeThree3Check :
    tailEnvelope0000FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0000FailureFibreExactThree 3) 5024999 0 = true := by decide

theorem tailEnvelope0000FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5024999 (tailEnvelope0000FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0000FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0000FailureCutoffTreeThree3Check

def tailEnvelope0000FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0000FailureCutoffTreeThree4Check :
    tailEnvelope0000FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0000FailureFibreExactThree 4) 5024999 0 = true := by decide

theorem tailEnvelope0000FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5024999 (tailEnvelope0000FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0000FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0000FailureCutoffTreeThree4Check

def tailEnvelope0000FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0000FailureCutoffTreeThree5Check :
    tailEnvelope0000FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0000FailureFibreExactThree 5) 5024999 0 = true := by decide

theorem tailEnvelope0000FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5024999 (tailEnvelope0000FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0000FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0000FailureCutoffTreeThree5Check

def tailEnvelope0000FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0000FailureCutoffTreeThree6Check :
    tailEnvelope0000FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0000FailureFibreExactThree 6) 5024999 0 = true := by decide

theorem tailEnvelope0000FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5024999 (tailEnvelope0000FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0000FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0000FailureCutoffTreeThree6Check

def tailEnvelope0000FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0000FailureCutoffTreeThree7Check :
    tailEnvelope0000FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0000FailureFibreExactThree 7) 5024999 0 = true := by decide

theorem tailEnvelope0000FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5024999 (tailEnvelope0000FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0000FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0000FailureCutoffTreeThree7Check

def tailEnvelope0000FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0000FailureCutoffTreeThree8Check :
    tailEnvelope0000FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0000FailureFibreExactThree 8) 5024999 0 = true := by decide

theorem tailEnvelope0000FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5024999 (tailEnvelope0000FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0000FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0000FailureCutoffTreeThree8Check

theorem tailEnvelope0000FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5024999 (tailEnvelope0000FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0000FailureFibreCutoffThree0 residue
  · exact tailEnvelope0000FailureFibreCutoffThree1 residue
  · exact tailEnvelope0000FailureFibreCutoffThree2 residue
  · exact tailEnvelope0000FailureFibreCutoffThree3 residue
  · exact tailEnvelope0000FailureFibreCutoffThree4 residue
  · exact tailEnvelope0000FailureFibreCutoffThree5 residue
  · exact tailEnvelope0000FailureFibreCutoffThree6 residue
  · exact tailEnvelope0000FailureFibreCutoffThree7 residue
  · exact tailEnvelope0000FailureFibreCutoffThree8 residue

theorem tailEnvelope0000FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0000FailureFibreExactThree cell residue ≤ tailEnvelope0000FailureFibreMaxThree cell := by decide

theorem tailEnvelope0000FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0000CountsThree tailEnvelope0000FailureFibreMaxThree 17832 = true := by decide

theorem tailEnvelope0000FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0000CountsThree tailEnvelope0000FailureFibreMaxThree 17908 = true := by decide

theorem tailEnvelope0000FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5000000 5025000
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5024999 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0000CountsOne) (fibre := tailEnvelope0000FailureFibreMaxOne) (bound := 17850) tailEnvelope0000FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0000CountsOne tailEnvelope0000FailureFibreMaxOne tailEnvelope0000FailureFibreExactOne
      (lower := 5000000) (upper := 5024999) (N := N) (bound := 17850)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0000FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0000FailureFibreCutoffOne
      tailEnvelope0000FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0000CountsThree) (fibre := tailEnvelope0000FailureFibreMaxThree) (bound := 17832) tailEnvelope0000FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0000CountsThree tailEnvelope0000FailureFibreMaxThree tailEnvelope0000FailureFibreExactThree
      (lower := 5000000) (upper := 5024999) (N := N) (bound := 17832)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0000FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0000FailureFibreCutoffThree
      tailEnvelope0000FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0000FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5000000 5025000
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5024999 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0000CountsOne) (fibre := tailEnvelope0000FailureFibreMaxOne) (bound := 17926) tailEnvelope0000FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0000CountsOne tailEnvelope0000FailureFibreMaxOne tailEnvelope0000FailureFibreExactOne
      (lower := 5000000) (upper := 5024999) (N := N) (bound := 17926)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0000FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0000FailureFibreCutoffOne
      tailEnvelope0000FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0000CountsThree) (fibre := tailEnvelope0000FailureFibreMaxThree) (bound := 17908) tailEnvelope0000FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0000CountsThree tailEnvelope0000FailureFibreMaxThree tailEnvelope0000FailureFibreExactThree
      (lower := 5000000) (upper := 5024999) (N := N) (bound := 17908)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0000FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0000FailureFibreCutoffThree
      tailEnvelope0000FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0001FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![70, 74, 76, 71, 75, 76, 67, 65, 72, 73, 77, 70, 69, 72, 76, 76, 69, 66, 77, 73, 69, 72, 78, 74, 68, 73, 70, 76, 82, 70, 70, 74, 70, 69, 72, 73, 69, 69, 70, 69, 70, 75, 70, 75, 69, 75, 77, 70, 72], ![69, 69, 75, 74, 69, 72, 74, 75, 73, 69, 77, 72, 72, 77, 75, 72, 72, 71, 78, 83, 73, 72, 73, 71, 65, 68, 74, 71, 71, 71, 73, 68, 68, 77, 71, 76, 72, 73, 71, 79, 75, 70, 72, 74, 72, 70, 74, 74, 68], ![67, 77, 75, 72, 70, 70, 68, 75, 74, 72, 69, 72, 65, 70, 70, 73, 67, 75, 72, 73, 70, 73, 73, 73, 75, 77, 74, 72, 71, 67, 69, 72, 72, 75, 71, 69, 70, 69, 72, 70, 75, 73, 73, 71, 72, 74, 68, 73, 71], ![68, 70, 71, 68, 69, 72, 72, 75, 75, 66, 72, 70, 73, 74, 73, 74, 75, 72, 74, 73, 76, 74, 69, 74, 76, 73, 67, 69, 72, 69, 69, 78, 80, 72, 72, 72, 71, 72, 76, 72, 78, 69, 71, 74, 76, 68, 70, 70, 77], ![75, 72, 73, 73, 76, 76, 75, 74, 76, 69, 74, 71, 73, 77, 71, 70, 69, 69, 66, 72, 68, 67, 68, 71, 75, 69, 70, 72, 72, 72, 72, 75, 75, 69, 74, 68, 76, 75, 71, 69, 70, 66, 73, 69, 71, 73, 71, 71, 75], ![74, 69, 68, 74, 80, 70, 75, 70, 72, 71, 67, 73, 80, 73, 69, 73, 75, 76, 75, 65, 74, 73, 68, 70, 73, 74, 69, 71, 71, 78, 73, 64, 72, 77, 70, 71, 79, 76, 68, 70, 67, 68, 76, 69, 74, 75, 72, 69, 73], ![75, 78, 71, 68, 76, 70, 73, 75, 66, 75, 75, 73, 77, 69, 62, 65, 78, 73, 71, 72, 69, 70, 72, 70, 75, 76, 74, 74, 71, 71, 74, 70, 68, 74, 72, 76, 70, 74, 70, 69, 69, 76, 71, 70, 66, 71, 77, 69, 69], ![73, 73, 69, 74, 71, 73, 69, 71, 74, 78, 72, 68, 70, 71, 71, 71, 76, 74, 72, 64, 73, 73, 73, 71, 68, 71, 72, 71, 68, 74, 69, 73, 76, 69, 77, 75, 67, 70, 72, 74, 69, 75, 71, 68, 76, 70, 73, 74, 77], ![69, 71, 73, 74, 70, 76, 75, 69, 71, 71, 69, 69, 72, 69, 79, 71, 74, 71, 74, 67, 76, 78, 71, 70, 73, 68, 71, 71, 73, 71, 70, 75, 69, 71, 76, 73, 71, 76, 72, 75, 73, 73, 72, 75, 72, 69, 79, 77, 67]]

def tailEnvelope0001FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![79, 74, 70, 72, 68, 73, 73, 77, 74, 75, 78, 74, 73, 69, 68, 72, 77, 74, 69, 71, 76, 64, 68, 73, 73, 76, 78, 67, 70, 72, 73, 70, 75, 77, 68, 70, 74, 74, 72, 69, 71, 76, 76, 70, 70, 71, 68, 69, 78], ![77, 69, 67, 68, 74, 75, 74, 68, 75, 72, 72, 67, 71, 74, 69, 69, 69, 76, 72, 69, 71, 71, 69, 78, 76, 74, 69, 65, 73, 75, 71, 73, 73, 72, 71, 70, 73, 71, 70, 75, 70, 74, 76, 71, 69, 73, 76, 68, 76], ![71, 71, 73, 70, 78, 79, 70, 69, 75, 68, 66, 76, 71, 74, 70, 71, 75, 68, 67, 75, 70, 77, 75, 71, 72, 78, 65, 65, 76, 74, 74, 71, 71, 69, 74, 74, 71, 70, 78, 71, 69, 72, 78, 69, 70, 76, 70, 73, 75], ![66, 71, 75, 70, 69, 76, 67, 69, 72, 78, 74, 73, 73, 77, 75, 70, 73, 71, 73, 77, 67, 74, 80, 73, 72, 71, 74, 75, 78, 72, 71, 70, 67, 72, 70, 65, 75, 70, 76, 67, 68, 75, 73, 72, 68, 70, 81, 71, 67], ![70, 74, 78, 71, 72, 67, 69, 70, 70, 73, 79, 70, 70, 73, 70, 69, 73, 72, 78, 68, 70, 76, 75, 73, 70, 73, 75, 76, 74, 68, 74, 71, 64, 72, 75, 71, 68, 71, 68, 72, 75, 72, 73, 68, 76, 67, 74, 75, 72], ![71, 72, 71, 73, 71, 74, 77, 73, 67, 74, 71, 72, 68, 70, 73, 75, 69, 69, 70, 68, 70, 70, 72, 75, 77, 69, 75, 75, 72, 73, 74, 72, 77, 78, 73, 72, 67, 70, 73, 73, 76, 69, 70, 73, 69, 71, 71, 79, 73], ![75, 74, 71, 68, 72, 69, 71, 77, 70, 71, 73, 67, 68, 75, 74, 73, 71, 69, 71, 77, 75, 73, 74, 74, 72, 66, 71, 76, 66, 67, 72, 68, 73, 67, 71, 74, 70, 69, 74, 78, 76, 72, 71, 74, 74, 74, 75, 74, 71], ![72, 74, 69, 78, 72, 74, 76, 75, 70, 67, 75, 77, 75, 70, 70, 78, 68, 68, 71, 71, 73, 70, 71, 70, 71, 69, 74, 71, 71, 72, 68, 75, 74, 72, 73, 75, 77, 76, 73, 73, 74, 66, 70, 74, 73, 75, 72, 70, 66], ![72, 72, 67, 73, 72, 69, 74, 73, 76, 72, 71, 68, 75, 72, 67, 72, 74, 71, 75, 75, 74, 67, 71, 71, 73, 72, 72, 70, 70, 70, 71, 73, 76, 66, 71, 71, 74, 72, 69, 70, 75, 74, 69, 76, 76, 72, 70, 70, 71]]

def tailEnvelope0001FailureFibreMaxOne : Fin 9 → Nat :=
  ![82, 83, 77, 80, 77, 80, 78, 78, 79]

def tailEnvelope0001FailureFibreMaxThree : Fin 9 → Nat :=
  ![79, 78, 79, 81, 79, 79, 78, 78, 76]

theorem tailEnvelope0001FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5050124 (tailEnvelope0001CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0001FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0001FailureCutoffTreeOne0Check :
    tailEnvelope0001FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0001FailureFibreExactOne 0) 5050124 0 = true := by decide

theorem tailEnvelope0001FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5050124 (tailEnvelope0001FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0001FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0001FailureCutoffTreeOne0Check

def tailEnvelope0001FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0001FailureCutoffTreeOne1Check :
    tailEnvelope0001FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0001FailureFibreExactOne 1) 5050124 0 = true := by decide

theorem tailEnvelope0001FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5050124 (tailEnvelope0001FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0001FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0001FailureCutoffTreeOne1Check

def tailEnvelope0001FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0001FailureCutoffTreeOne2Check :
    tailEnvelope0001FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0001FailureFibreExactOne 2) 5050124 0 = true := by decide

theorem tailEnvelope0001FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5050124 (tailEnvelope0001FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0001FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0001FailureCutoffTreeOne2Check

def tailEnvelope0001FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0001FailureCutoffTreeOne3Check :
    tailEnvelope0001FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0001FailureFibreExactOne 3) 5050124 0 = true := by decide

theorem tailEnvelope0001FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5050124 (tailEnvelope0001FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0001FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0001FailureCutoffTreeOne3Check

def tailEnvelope0001FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0001FailureCutoffTreeOne4Check :
    tailEnvelope0001FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0001FailureFibreExactOne 4) 5050124 0 = true := by decide

theorem tailEnvelope0001FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5050124 (tailEnvelope0001FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0001FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0001FailureCutoffTreeOne4Check

def tailEnvelope0001FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0001FailureCutoffTreeOne5Check :
    tailEnvelope0001FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0001FailureFibreExactOne 5) 5050124 0 = true := by decide

theorem tailEnvelope0001FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5050124 (tailEnvelope0001FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0001FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0001FailureCutoffTreeOne5Check

def tailEnvelope0001FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0001FailureCutoffTreeOne6Check :
    tailEnvelope0001FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0001FailureFibreExactOne 6) 5050124 0 = true := by decide

theorem tailEnvelope0001FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5050124 (tailEnvelope0001FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0001FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0001FailureCutoffTreeOne6Check

def tailEnvelope0001FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0001FailureCutoffTreeOne7Check :
    tailEnvelope0001FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0001FailureFibreExactOne 7) 5050124 0 = true := by decide

theorem tailEnvelope0001FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5050124 (tailEnvelope0001FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0001FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0001FailureCutoffTreeOne7Check

def tailEnvelope0001FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0001FailureCutoffTreeOne8Check :
    tailEnvelope0001FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0001FailureFibreExactOne 8) 5050124 0 = true := by decide

theorem tailEnvelope0001FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5050124 (tailEnvelope0001FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0001FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0001FailureCutoffTreeOne8Check

theorem tailEnvelope0001FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5050124 (tailEnvelope0001FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0001FailureFibreCutoffOne0 residue
  · exact tailEnvelope0001FailureFibreCutoffOne1 residue
  · exact tailEnvelope0001FailureFibreCutoffOne2 residue
  · exact tailEnvelope0001FailureFibreCutoffOne3 residue
  · exact tailEnvelope0001FailureFibreCutoffOne4 residue
  · exact tailEnvelope0001FailureFibreCutoffOne5 residue
  · exact tailEnvelope0001FailureFibreCutoffOne6 residue
  · exact tailEnvelope0001FailureFibreCutoffOne7 residue
  · exact tailEnvelope0001FailureFibreCutoffOne8 residue

theorem tailEnvelope0001FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0001FailureFibreExactOne cell residue ≤ tailEnvelope0001FailureFibreMaxOne cell := by decide

theorem tailEnvelope0001FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0001CountsOne tailEnvelope0001FailureFibreMaxOne 17937 = true := by decide

theorem tailEnvelope0001FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0001CountsOne tailEnvelope0001FailureFibreMaxOne 18014 = true := by decide

theorem tailEnvelope0001FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5050124 (tailEnvelope0001CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0001FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0001FailureCutoffTreeThree0Check :
    tailEnvelope0001FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0001FailureFibreExactThree 0) 5050124 0 = true := by decide

theorem tailEnvelope0001FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5050124 (tailEnvelope0001FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0001FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0001FailureCutoffTreeThree0Check

def tailEnvelope0001FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0001FailureCutoffTreeThree1Check :
    tailEnvelope0001FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0001FailureFibreExactThree 1) 5050124 0 = true := by decide

theorem tailEnvelope0001FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5050124 (tailEnvelope0001FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0001FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0001FailureCutoffTreeThree1Check

def tailEnvelope0001FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0001FailureCutoffTreeThree2Check :
    tailEnvelope0001FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0001FailureFibreExactThree 2) 5050124 0 = true := by decide

theorem tailEnvelope0001FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5050124 (tailEnvelope0001FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0001FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0001FailureCutoffTreeThree2Check

def tailEnvelope0001FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0001FailureCutoffTreeThree3Check :
    tailEnvelope0001FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0001FailureFibreExactThree 3) 5050124 0 = true := by decide

theorem tailEnvelope0001FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5050124 (tailEnvelope0001FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0001FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0001FailureCutoffTreeThree3Check

def tailEnvelope0001FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0001FailureCutoffTreeThree4Check :
    tailEnvelope0001FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0001FailureFibreExactThree 4) 5050124 0 = true := by decide

theorem tailEnvelope0001FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5050124 (tailEnvelope0001FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0001FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0001FailureCutoffTreeThree4Check

def tailEnvelope0001FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0001FailureCutoffTreeThree5Check :
    tailEnvelope0001FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0001FailureFibreExactThree 5) 5050124 0 = true := by decide

theorem tailEnvelope0001FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5050124 (tailEnvelope0001FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0001FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0001FailureCutoffTreeThree5Check

def tailEnvelope0001FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0001FailureCutoffTreeThree6Check :
    tailEnvelope0001FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0001FailureFibreExactThree 6) 5050124 0 = true := by decide

theorem tailEnvelope0001FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5050124 (tailEnvelope0001FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0001FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0001FailureCutoffTreeThree6Check

def tailEnvelope0001FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0001FailureCutoffTreeThree7Check :
    tailEnvelope0001FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0001FailureFibreExactThree 7) 5050124 0 = true := by decide

theorem tailEnvelope0001FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5050124 (tailEnvelope0001FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0001FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0001FailureCutoffTreeThree7Check

def tailEnvelope0001FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0001FailureCutoffTreeThree8Check :
    tailEnvelope0001FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0001FailureFibreExactThree 8) 5050124 0 = true := by decide

theorem tailEnvelope0001FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5050124 (tailEnvelope0001FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0001FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0001FailureCutoffTreeThree8Check

theorem tailEnvelope0001FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5050124 (tailEnvelope0001FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0001FailureFibreCutoffThree0 residue
  · exact tailEnvelope0001FailureFibreCutoffThree1 residue
  · exact tailEnvelope0001FailureFibreCutoffThree2 residue
  · exact tailEnvelope0001FailureFibreCutoffThree3 residue
  · exact tailEnvelope0001FailureFibreCutoffThree4 residue
  · exact tailEnvelope0001FailureFibreCutoffThree5 residue
  · exact tailEnvelope0001FailureFibreCutoffThree6 residue
  · exact tailEnvelope0001FailureFibreCutoffThree7 residue
  · exact tailEnvelope0001FailureFibreCutoffThree8 residue

theorem tailEnvelope0001FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0001FailureFibreExactThree cell residue ≤ tailEnvelope0001FailureFibreMaxThree cell := by decide

theorem tailEnvelope0001FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0001CountsThree tailEnvelope0001FailureFibreMaxThree 17925 = true := by decide

theorem tailEnvelope0001FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0001CountsThree tailEnvelope0001FailureFibreMaxThree 18001 = true := by decide

theorem tailEnvelope0001FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5025000 5050125
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5050124 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0001CountsOne) (fibre := tailEnvelope0001FailureFibreMaxOne) (bound := 17937) tailEnvelope0001FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0001CountsOne tailEnvelope0001FailureFibreMaxOne tailEnvelope0001FailureFibreExactOne
      (lower := 5025000) (upper := 5050124) (N := N) (bound := 17937)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0001FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0001FailureFibreCutoffOne
      tailEnvelope0001FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0001CountsThree) (fibre := tailEnvelope0001FailureFibreMaxThree) (bound := 17925) tailEnvelope0001FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0001CountsThree tailEnvelope0001FailureFibreMaxThree tailEnvelope0001FailureFibreExactThree
      (lower := 5025000) (upper := 5050124) (N := N) (bound := 17925)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0001FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0001FailureFibreCutoffThree
      tailEnvelope0001FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0001FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5025000 5050125
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5050124 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0001CountsOne) (fibre := tailEnvelope0001FailureFibreMaxOne) (bound := 18014) tailEnvelope0001FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0001CountsOne tailEnvelope0001FailureFibreMaxOne tailEnvelope0001FailureFibreExactOne
      (lower := 5025000) (upper := 5050124) (N := N) (bound := 18014)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0001FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0001FailureFibreCutoffOne
      tailEnvelope0001FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0001CountsThree) (fibre := tailEnvelope0001FailureFibreMaxThree) (bound := 18001) tailEnvelope0001FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0001CountsThree tailEnvelope0001FailureFibreMaxThree tailEnvelope0001FailureFibreExactThree
      (lower := 5025000) (upper := 5050124) (N := N) (bound := 18001)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0001FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0001FailureFibreCutoffThree
      tailEnvelope0001FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0002FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![70, 74, 76, 71, 76, 77, 68, 65, 73, 74, 77, 70, 70, 72, 76, 76, 69, 66, 77, 73, 69, 72, 78, 74, 68, 73, 70, 76, 82, 70, 71, 75, 72, 69, 72, 73, 69, 70, 71, 70, 71, 75, 70, 75, 69, 75, 78, 70, 73], ![69, 69, 75, 74, 69, 72, 75, 75, 73, 69, 77, 72, 72, 77, 76, 72, 72, 71, 78, 83, 74, 72, 74, 72, 65, 68, 74, 71, 72, 72, 75, 68, 68, 77, 73, 76, 73, 74, 72, 79, 75, 70, 73, 74, 75, 70, 76, 74, 68], ![67, 77, 76, 73, 71, 70, 68, 75, 74, 72, 70, 72, 65, 70, 70, 74, 67, 76, 73, 74, 71, 74, 73, 73, 75, 77, 75, 72, 72, 68, 69, 72, 72, 75, 72, 70, 71, 71, 72, 70, 75, 73, 73, 71, 72, 75, 68, 73, 71], ![69, 70, 73, 68, 70, 72, 72, 75, 76, 66, 74, 70, 74, 74, 73, 74, 75, 72, 75, 73, 76, 74, 69, 74, 77, 73, 68, 69, 74, 69, 69, 78, 80, 72, 72, 72, 71, 72, 76, 72, 78, 69, 72, 75, 76, 68, 70, 71, 77], ![75, 72, 73, 74, 76, 76, 76, 74, 77, 69, 74, 71, 73, 77, 72, 70, 69, 70, 66, 73, 68, 67, 69, 71, 75, 69, 70, 72, 72, 72, 72, 75, 77, 71, 74, 70, 76, 75, 71, 70, 70, 67, 73, 69, 71, 73, 71, 72, 75], ![74, 69, 68, 74, 80, 70, 75, 70, 73, 71, 68, 73, 80, 73, 69, 73, 75, 76, 75, 67, 74, 73, 68, 72, 74, 74, 70, 72, 71, 79, 73, 65, 72, 77, 70, 71, 79, 77, 68, 72, 67, 68, 76, 70, 74, 76, 72, 70, 73], ![77, 79, 71, 68, 76, 71, 73, 75, 66, 75, 75, 74, 77, 70, 63, 66, 78, 74, 71, 73, 69, 72, 72, 70, 75, 76, 74, 75, 71, 72, 74, 70, 68, 74, 72, 77, 70, 75, 70, 69, 69, 76, 71, 71, 66, 71, 77, 69, 70], ![73, 74, 69, 75, 71, 73, 70, 71, 75, 78, 72, 70, 70, 71, 71, 71, 76, 75, 72, 65, 73, 73, 74, 71, 69, 72, 72, 72, 68, 74, 69, 73, 76, 69, 77, 77, 69, 70, 72, 76, 69, 76, 71, 68, 76, 70, 73, 74, 77], ![69, 72, 73, 74, 70, 76, 75, 70, 71, 72, 70, 69, 72, 70, 79, 73, 74, 74, 74, 67, 76, 78, 72, 70, 73, 68, 71, 71, 73, 71, 71, 75, 70, 71, 76, 73, 71, 76, 72, 75, 74, 73, 73, 75, 72, 69, 80, 77, 69]]

def tailEnvelope0002FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![79, 76, 70, 73, 68, 73, 73, 77, 74, 76, 78, 74, 74, 69, 69, 72, 77, 74, 69, 71, 76, 64, 68, 74, 73, 76, 78, 67, 71, 73, 73, 71, 75, 77, 69, 70, 75, 74, 72, 69, 71, 76, 77, 70, 71, 71, 68, 70, 78], ![77, 69, 67, 69, 75, 76, 74, 68, 76, 72, 72, 67, 71, 74, 69, 69, 70, 76, 73, 69, 73, 71, 70, 78, 77, 74, 70, 65, 73, 75, 71, 74, 74, 72, 71, 70, 74, 72, 71, 75, 71, 74, 77, 71, 69, 73, 76, 68, 77], ![71, 71, 73, 70, 78, 79, 71, 69, 76, 69, 66, 76, 71, 74, 71, 71, 76, 68, 69, 75, 70, 77, 76, 71, 73, 78, 65, 66, 77, 75, 76, 71, 72, 69, 74, 74, 71, 70, 78, 71, 69, 73, 78, 70, 70, 77, 70, 73, 75], ![66, 71, 76, 70, 70, 76, 68, 69, 72, 78, 74, 74, 74, 77, 76, 71, 73, 71, 74, 77, 69, 74, 80, 73, 72, 71, 74, 75, 78, 72, 71, 70, 67, 72, 71, 65, 76, 70, 76, 67, 68, 75, 73, 72, 68, 71, 81, 72, 69], ![70, 74, 79, 72, 73, 67, 69, 70, 70, 74, 80, 72, 71, 74, 70, 69, 73, 72, 78, 68, 70, 76, 75, 73, 70, 74, 75, 76, 74, 68, 74, 73, 64, 72, 75, 74, 68, 72, 68, 72, 75, 73, 73, 68, 76, 68, 74, 75, 72], ![73, 72, 73, 73, 71, 74, 77, 73, 67, 74, 71, 72, 68, 70, 74, 75, 71, 69, 71, 68, 70, 70, 72, 75, 77, 70, 75, 75, 72, 73, 74, 72, 78, 79, 74, 73, 67, 70, 73, 73, 76, 71, 71, 74, 69, 71, 71, 79, 73], ![75, 74, 71, 70, 72, 69, 71, 78, 70, 73, 73, 68, 68, 75, 74, 74, 71, 70, 71, 77, 75, 73, 74, 75, 72, 68, 71, 76, 66, 68, 73, 68, 73, 68, 71, 74, 70, 69, 74, 79, 76, 73, 72, 74, 74, 74, 75, 74, 71], ![72, 74, 69, 79, 72, 75, 76, 76, 70, 67, 75, 77, 75, 71, 71, 79, 69, 68, 71, 71, 73, 71, 71, 71, 72, 69, 75, 71, 71, 73, 68, 75, 74, 72, 73, 75, 77, 76, 73, 73, 74, 66, 71, 74, 73, 75, 72, 71, 67], ![72, 72, 67, 74, 72, 71, 74, 74, 76, 72, 71, 69, 75, 73, 67, 72, 74, 71, 75, 76, 75, 67, 72, 71, 73, 72, 72, 70, 70, 70, 71, 73, 76, 66, 71, 71, 74, 72, 71, 71, 76, 74, 69, 76, 77, 72, 73, 70, 72]]

def tailEnvelope0002FailureFibreMaxOne : Fin 9 → Nat :=
  ![82, 83, 77, 80, 77, 80, 79, 78, 80]

def tailEnvelope0002FailureFibreMaxThree : Fin 9 → Nat :=
  ![79, 78, 79, 81, 80, 79, 79, 79, 77]

theorem tailEnvelope0002FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5075374 (tailEnvelope0002CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0002FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0002FailureCutoffTreeOne0Check :
    tailEnvelope0002FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0002FailureFibreExactOne 0) 5075374 0 = true := by decide

theorem tailEnvelope0002FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5075374 (tailEnvelope0002FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0002FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0002FailureCutoffTreeOne0Check

def tailEnvelope0002FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0002FailureCutoffTreeOne1Check :
    tailEnvelope0002FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0002FailureFibreExactOne 1) 5075374 0 = true := by decide

theorem tailEnvelope0002FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5075374 (tailEnvelope0002FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0002FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0002FailureCutoffTreeOne1Check

def tailEnvelope0002FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0002FailureCutoffTreeOne2Check :
    tailEnvelope0002FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0002FailureFibreExactOne 2) 5075374 0 = true := by decide

theorem tailEnvelope0002FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5075374 (tailEnvelope0002FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0002FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0002FailureCutoffTreeOne2Check

def tailEnvelope0002FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0002FailureCutoffTreeOne3Check :
    tailEnvelope0002FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0002FailureFibreExactOne 3) 5075374 0 = true := by decide

theorem tailEnvelope0002FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5075374 (tailEnvelope0002FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0002FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0002FailureCutoffTreeOne3Check

def tailEnvelope0002FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0002FailureCutoffTreeOne4Check :
    tailEnvelope0002FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0002FailureFibreExactOne 4) 5075374 0 = true := by decide

theorem tailEnvelope0002FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5075374 (tailEnvelope0002FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0002FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0002FailureCutoffTreeOne4Check

def tailEnvelope0002FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0002FailureCutoffTreeOne5Check :
    tailEnvelope0002FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0002FailureFibreExactOne 5) 5075374 0 = true := by decide

theorem tailEnvelope0002FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5075374 (tailEnvelope0002FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0002FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0002FailureCutoffTreeOne5Check

def tailEnvelope0002FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0002FailureCutoffTreeOne6Check :
    tailEnvelope0002FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0002FailureFibreExactOne 6) 5075374 0 = true := by decide

theorem tailEnvelope0002FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5075374 (tailEnvelope0002FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0002FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0002FailureCutoffTreeOne6Check

def tailEnvelope0002FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0002FailureCutoffTreeOne7Check :
    tailEnvelope0002FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0002FailureFibreExactOne 7) 5075374 0 = true := by decide

theorem tailEnvelope0002FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5075374 (tailEnvelope0002FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0002FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0002FailureCutoffTreeOne7Check

def tailEnvelope0002FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0002FailureCutoffTreeOne8Check :
    tailEnvelope0002FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0002FailureFibreExactOne 8) 5075374 0 = true := by decide

theorem tailEnvelope0002FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5075374 (tailEnvelope0002FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0002FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0002FailureCutoffTreeOne8Check

theorem tailEnvelope0002FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5075374 (tailEnvelope0002FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0002FailureFibreCutoffOne0 residue
  · exact tailEnvelope0002FailureFibreCutoffOne1 residue
  · exact tailEnvelope0002FailureFibreCutoffOne2 residue
  · exact tailEnvelope0002FailureFibreCutoffOne3 residue
  · exact tailEnvelope0002FailureFibreCutoffOne4 residue
  · exact tailEnvelope0002FailureFibreCutoffOne5 residue
  · exact tailEnvelope0002FailureFibreCutoffOne6 residue
  · exact tailEnvelope0002FailureFibreCutoffOne7 residue
  · exact tailEnvelope0002FailureFibreCutoffOne8 residue

theorem tailEnvelope0002FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0002FailureFibreExactOne cell residue ≤ tailEnvelope0002FailureFibreMaxOne cell := by decide

theorem tailEnvelope0002FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0002CountsOne tailEnvelope0002FailureFibreMaxOne 18025 = true := by decide

theorem tailEnvelope0002FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0002CountsOne tailEnvelope0002FailureFibreMaxOne 18102 = true := by decide

theorem tailEnvelope0002FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5075374 (tailEnvelope0002CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0002FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0002FailureCutoffTreeThree0Check :
    tailEnvelope0002FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0002FailureFibreExactThree 0) 5075374 0 = true := by decide

theorem tailEnvelope0002FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5075374 (tailEnvelope0002FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0002FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0002FailureCutoffTreeThree0Check

def tailEnvelope0002FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0002FailureCutoffTreeThree1Check :
    tailEnvelope0002FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0002FailureFibreExactThree 1) 5075374 0 = true := by decide

theorem tailEnvelope0002FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5075374 (tailEnvelope0002FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0002FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0002FailureCutoffTreeThree1Check

def tailEnvelope0002FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0002FailureCutoffTreeThree2Check :
    tailEnvelope0002FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0002FailureFibreExactThree 2) 5075374 0 = true := by decide

theorem tailEnvelope0002FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5075374 (tailEnvelope0002FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0002FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0002FailureCutoffTreeThree2Check

def tailEnvelope0002FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0002FailureCutoffTreeThree3Check :
    tailEnvelope0002FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0002FailureFibreExactThree 3) 5075374 0 = true := by decide

theorem tailEnvelope0002FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5075374 (tailEnvelope0002FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0002FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0002FailureCutoffTreeThree3Check

def tailEnvelope0002FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0002FailureCutoffTreeThree4Check :
    tailEnvelope0002FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0002FailureFibreExactThree 4) 5075374 0 = true := by decide

theorem tailEnvelope0002FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5075374 (tailEnvelope0002FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0002FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0002FailureCutoffTreeThree4Check

def tailEnvelope0002FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0002FailureCutoffTreeThree5Check :
    tailEnvelope0002FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0002FailureFibreExactThree 5) 5075374 0 = true := by decide

theorem tailEnvelope0002FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5075374 (tailEnvelope0002FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0002FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0002FailureCutoffTreeThree5Check

def tailEnvelope0002FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0002FailureCutoffTreeThree6Check :
    tailEnvelope0002FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0002FailureFibreExactThree 6) 5075374 0 = true := by decide

theorem tailEnvelope0002FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5075374 (tailEnvelope0002FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0002FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0002FailureCutoffTreeThree6Check

def tailEnvelope0002FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0002FailureCutoffTreeThree7Check :
    tailEnvelope0002FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0002FailureFibreExactThree 7) 5075374 0 = true := by decide

theorem tailEnvelope0002FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5075374 (tailEnvelope0002FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0002FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0002FailureCutoffTreeThree7Check

def tailEnvelope0002FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0002FailureCutoffTreeThree8Check :
    tailEnvelope0002FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0002FailureFibreExactThree 8) 5075374 0 = true := by decide

theorem tailEnvelope0002FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5075374 (tailEnvelope0002FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0002FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0002FailureCutoffTreeThree8Check

theorem tailEnvelope0002FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5075374 (tailEnvelope0002FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0002FailureFibreCutoffThree0 residue
  · exact tailEnvelope0002FailureFibreCutoffThree1 residue
  · exact tailEnvelope0002FailureFibreCutoffThree2 residue
  · exact tailEnvelope0002FailureFibreCutoffThree3 residue
  · exact tailEnvelope0002FailureFibreCutoffThree4 residue
  · exact tailEnvelope0002FailureFibreCutoffThree5 residue
  · exact tailEnvelope0002FailureFibreCutoffThree6 residue
  · exact tailEnvelope0002FailureFibreCutoffThree7 residue
  · exact tailEnvelope0002FailureFibreCutoffThree8 residue

theorem tailEnvelope0002FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0002FailureFibreExactThree cell residue ≤ tailEnvelope0002FailureFibreMaxThree cell := by decide

theorem tailEnvelope0002FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0002CountsThree tailEnvelope0002FailureFibreMaxThree 18008 = true := by decide

theorem tailEnvelope0002FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0002CountsThree tailEnvelope0002FailureFibreMaxThree 18085 = true := by decide

theorem tailEnvelope0002FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5050125 5075375
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5075374 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0002CountsOne) (fibre := tailEnvelope0002FailureFibreMaxOne) (bound := 18025) tailEnvelope0002FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0002CountsOne tailEnvelope0002FailureFibreMaxOne tailEnvelope0002FailureFibreExactOne
      (lower := 5050125) (upper := 5075374) (N := N) (bound := 18025)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0002FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0002FailureFibreCutoffOne
      tailEnvelope0002FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0002CountsThree) (fibre := tailEnvelope0002FailureFibreMaxThree) (bound := 18008) tailEnvelope0002FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0002CountsThree tailEnvelope0002FailureFibreMaxThree tailEnvelope0002FailureFibreExactThree
      (lower := 5050125) (upper := 5075374) (N := N) (bound := 18008)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0002FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0002FailureFibreCutoffThree
      tailEnvelope0002FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0002FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5050125 5075375
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5075374 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0002CountsOne) (fibre := tailEnvelope0002FailureFibreMaxOne) (bound := 18102) tailEnvelope0002FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0002CountsOne tailEnvelope0002FailureFibreMaxOne tailEnvelope0002FailureFibreExactOne
      (lower := 5050125) (upper := 5075374) (N := N) (bound := 18102)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0002FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0002FailureFibreCutoffOne
      tailEnvelope0002FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0002CountsThree) (fibre := tailEnvelope0002FailureFibreMaxThree) (bound := 18085) tailEnvelope0002FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0002CountsThree tailEnvelope0002FailureFibreMaxThree tailEnvelope0002FailureFibreExactThree
      (lower := 5050125) (upper := 5075374) (N := N) (bound := 18085)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0002FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0002FailureFibreCutoffThree
      tailEnvelope0002FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0003FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![70, 74, 76, 72, 76, 77, 68, 65, 73, 74, 78, 70, 70, 73, 76, 77, 70, 66, 78, 73, 70, 73, 78, 75, 68, 73, 70, 76, 82, 71, 71, 76, 72, 69, 72, 73, 70, 71, 72, 70, 71, 75, 70, 75, 69, 75, 78, 72, 73], ![69, 69, 75, 75, 69, 73, 75, 75, 73, 69, 77, 73, 72, 79, 76, 72, 72, 71, 78, 84, 74, 73, 75, 72, 65, 68, 74, 73, 75, 74, 75, 68, 68, 77, 73, 76, 73, 74, 72, 80, 75, 70, 73, 75, 75, 71, 76, 74, 69], ![67, 78, 76, 74, 72, 70, 69, 75, 74, 73, 70, 73, 65, 70, 70, 75, 67, 78, 73, 75, 72, 74, 73, 74, 75, 77, 75, 72, 72, 68, 69, 72, 72, 75, 74, 70, 72, 71, 72, 70, 75, 73, 74, 71, 72, 75, 68, 73, 71], ![69, 71, 74, 68, 70, 73, 72, 76, 76, 68, 74, 72, 75, 74, 73, 74, 75, 73, 75, 73, 76, 74, 69, 75, 77, 74, 69, 70, 74, 69, 69, 79, 81, 72, 73, 72, 71, 72, 76, 72, 79, 69, 73, 75, 76, 70, 70, 71, 77], ![76, 72, 74, 74, 76, 76, 77, 76, 77, 69, 74, 71, 73, 77, 72, 71, 71, 70, 67, 73, 68, 67, 70, 71, 77, 69, 70, 72, 73, 72, 73, 75, 78, 71, 74, 70, 76, 75, 72, 70, 71, 67, 73, 69, 71, 73, 72, 73, 75], ![74, 69, 68, 74, 80, 70, 76, 71, 73, 72, 68, 73, 81, 75, 70, 73, 75, 76, 75, 67, 75, 73, 69, 74, 74, 75, 70, 72, 72, 80, 74, 65, 72, 77, 70, 71, 81, 77, 68, 72, 67, 68, 77, 70, 75, 76, 72, 70, 74], ![79, 79, 72, 68, 77, 71, 73, 75, 66, 75, 76, 75, 78, 70, 64, 67, 79, 74, 72, 73, 70, 72, 72, 70, 75, 76, 75, 75, 71, 72, 74, 71, 68, 75, 72, 77, 71, 75, 71, 69, 69, 76, 72, 73, 66, 72, 77, 70, 70], ![74, 74, 69, 75, 71, 74, 70, 72, 76, 78, 73, 70, 70, 71, 71, 71, 77, 75, 72, 67, 73, 73, 74, 71, 69, 72, 72, 72, 68, 75, 71, 73, 76, 70, 77, 78, 69, 70, 73, 76, 70, 77, 71, 69, 76, 70, 73, 74, 77], ![70, 72, 73, 74, 70, 76, 75, 70, 71, 72, 70, 71, 72, 70, 80, 73, 74, 74, 74, 67, 76, 78, 72, 71, 73, 69, 71, 71, 73, 72, 71, 76, 70, 72, 76, 73, 71, 76, 72, 77, 74, 74, 73, 76, 72, 70, 80, 79, 69]]

def tailEnvelope0003FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![79, 76, 70, 73, 68, 73, 73, 77, 74, 77, 78, 75, 74, 69, 69, 72, 77, 75, 69, 72, 76, 64, 68, 74, 73, 77, 78, 68, 72, 74, 74, 71, 75, 77, 69, 71, 75, 75, 72, 69, 71, 77, 77, 70, 73, 71, 69, 70, 78], ![77, 70, 67, 69, 75, 76, 74, 70, 76, 73, 72, 67, 71, 74, 69, 70, 70, 76, 73, 70, 73, 72, 71, 79, 77, 75, 70, 65, 73, 75, 71, 77, 74, 72, 71, 70, 74, 74, 71, 75, 71, 74, 77, 71, 69, 73, 76, 69, 77], ![71, 71, 73, 70, 78, 81, 71, 70, 76, 70, 67, 76, 74, 75, 71, 72, 76, 68, 69, 75, 70, 77, 76, 71, 73, 78, 66, 66, 78, 75, 76, 71, 72, 69, 74, 74, 71, 70, 78, 71, 70, 73, 80, 70, 70, 77, 71, 73, 76], ![66, 72, 76, 73, 70, 77, 68, 69, 72, 78, 74, 75, 75, 77, 76, 71, 73, 72, 74, 78, 69, 74, 80, 73, 72, 71, 74, 75, 79, 72, 72, 70, 67, 73, 71, 66, 77, 70, 77, 67, 68, 75, 74, 72, 69, 71, 82, 73, 69], ![70, 74, 79, 72, 73, 67, 69, 70, 71, 74, 81, 72, 71, 74, 70, 69, 73, 74, 79, 68, 71, 76, 75, 73, 71, 74, 76, 76, 75, 70, 74, 73, 64, 72, 76, 74, 69, 72, 68, 72, 75, 73, 74, 69, 77, 68, 74, 75, 72], ![73, 73, 73, 73, 71, 74, 77, 73, 68, 74, 73, 72, 68, 70, 74, 76, 72, 69, 72, 68, 70, 70, 72, 75, 78, 71, 76, 75, 72, 73, 74, 72, 79, 79, 75, 73, 67, 70, 74, 73, 76, 71, 71, 74, 69, 71, 71, 79, 74], ![77, 74, 71, 70, 73, 69, 73, 79, 72, 73, 73, 68, 68, 77, 75, 74, 72, 70, 71, 77, 76, 73, 75, 75, 72, 69, 71, 76, 66, 68, 73, 68, 74, 68, 71, 74, 70, 69, 74, 80, 76, 74, 72, 74, 74, 74, 77, 75, 71], ![72, 74, 69, 79, 73, 75, 77, 76, 70, 67, 75, 77, 76, 71, 72, 81, 69, 68, 71, 71, 73, 71, 71, 71, 72, 69, 75, 74, 71, 73, 70, 76, 75, 72, 74, 75, 78, 77, 73, 74, 74, 66, 71, 75, 73, 76, 73, 72, 68], ![72, 72, 68, 74, 74, 72, 75, 74, 76, 72, 71, 69, 75, 73, 71, 72, 74, 71, 75, 76, 75, 68, 72, 72, 73, 73, 73, 71, 70, 70, 71, 73, 76, 66, 71, 72, 74, 74, 71, 71, 76, 74, 69, 77, 79, 73, 73, 71, 72]]

def tailEnvelope0003FailureFibreMaxOne : Fin 9 → Nat :=
  ![82, 84, 78, 81, 78, 81, 79, 78, 80]

def tailEnvelope0003FailureFibreMaxThree : Fin 9 → Nat :=
  ![79, 79, 81, 82, 81, 79, 80, 81, 79]

theorem tailEnvelope0003FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5100750 (tailEnvelope0003CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0003FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0003FailureCutoffTreeOne0Check :
    tailEnvelope0003FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0003FailureFibreExactOne 0) 5100750 0 = true := by decide

theorem tailEnvelope0003FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5100750 (tailEnvelope0003FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0003FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0003FailureCutoffTreeOne0Check

def tailEnvelope0003FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0003FailureCutoffTreeOne1Check :
    tailEnvelope0003FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0003FailureFibreExactOne 1) 5100750 0 = true := by decide

theorem tailEnvelope0003FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5100750 (tailEnvelope0003FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0003FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0003FailureCutoffTreeOne1Check

def tailEnvelope0003FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0003FailureCutoffTreeOne2Check :
    tailEnvelope0003FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0003FailureFibreExactOne 2) 5100750 0 = true := by decide

theorem tailEnvelope0003FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5100750 (tailEnvelope0003FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0003FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0003FailureCutoffTreeOne2Check

def tailEnvelope0003FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0003FailureCutoffTreeOne3Check :
    tailEnvelope0003FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0003FailureFibreExactOne 3) 5100750 0 = true := by decide

theorem tailEnvelope0003FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5100750 (tailEnvelope0003FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0003FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0003FailureCutoffTreeOne3Check

def tailEnvelope0003FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0003FailureCutoffTreeOne4Check :
    tailEnvelope0003FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0003FailureFibreExactOne 4) 5100750 0 = true := by decide

theorem tailEnvelope0003FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5100750 (tailEnvelope0003FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0003FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0003FailureCutoffTreeOne4Check

def tailEnvelope0003FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0003FailureCutoffTreeOne5Check :
    tailEnvelope0003FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0003FailureFibreExactOne 5) 5100750 0 = true := by decide

theorem tailEnvelope0003FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5100750 (tailEnvelope0003FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0003FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0003FailureCutoffTreeOne5Check

def tailEnvelope0003FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0003FailureCutoffTreeOne6Check :
    tailEnvelope0003FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0003FailureFibreExactOne 6) 5100750 0 = true := by decide

theorem tailEnvelope0003FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5100750 (tailEnvelope0003FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0003FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0003FailureCutoffTreeOne6Check

def tailEnvelope0003FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0003FailureCutoffTreeOne7Check :
    tailEnvelope0003FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0003FailureFibreExactOne 7) 5100750 0 = true := by decide

theorem tailEnvelope0003FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5100750 (tailEnvelope0003FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0003FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0003FailureCutoffTreeOne7Check

def tailEnvelope0003FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0003FailureCutoffTreeOne8Check :
    tailEnvelope0003FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0003FailureFibreExactOne 8) 5100750 0 = true := by decide

theorem tailEnvelope0003FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5100750 (tailEnvelope0003FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0003FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0003FailureCutoffTreeOne8Check

theorem tailEnvelope0003FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5100750 (tailEnvelope0003FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0003FailureFibreCutoffOne0 residue
  · exact tailEnvelope0003FailureFibreCutoffOne1 residue
  · exact tailEnvelope0003FailureFibreCutoffOne2 residue
  · exact tailEnvelope0003FailureFibreCutoffOne3 residue
  · exact tailEnvelope0003FailureFibreCutoffOne4 residue
  · exact tailEnvelope0003FailureFibreCutoffOne5 residue
  · exact tailEnvelope0003FailureFibreCutoffOne6 residue
  · exact tailEnvelope0003FailureFibreCutoffOne7 residue
  · exact tailEnvelope0003FailureFibreCutoffOne8 residue

theorem tailEnvelope0003FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0003FailureFibreExactOne cell residue ≤ tailEnvelope0003FailureFibreMaxOne cell := by decide

theorem tailEnvelope0003FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0003CountsOne tailEnvelope0003FailureFibreMaxOne 18118 = true := by decide

theorem tailEnvelope0003FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0003CountsOne tailEnvelope0003FailureFibreMaxOne 18196 = true := by decide

theorem tailEnvelope0003FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5100750 (tailEnvelope0003CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0003FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0003FailureCutoffTreeThree0Check :
    tailEnvelope0003FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0003FailureFibreExactThree 0) 5100750 0 = true := by decide

theorem tailEnvelope0003FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5100750 (tailEnvelope0003FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0003FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0003FailureCutoffTreeThree0Check

def tailEnvelope0003FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0003FailureCutoffTreeThree1Check :
    tailEnvelope0003FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0003FailureFibreExactThree 1) 5100750 0 = true := by decide

theorem tailEnvelope0003FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5100750 (tailEnvelope0003FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0003FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0003FailureCutoffTreeThree1Check

def tailEnvelope0003FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0003FailureCutoffTreeThree2Check :
    tailEnvelope0003FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0003FailureFibreExactThree 2) 5100750 0 = true := by decide

theorem tailEnvelope0003FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5100750 (tailEnvelope0003FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0003FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0003FailureCutoffTreeThree2Check

def tailEnvelope0003FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0003FailureCutoffTreeThree3Check :
    tailEnvelope0003FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0003FailureFibreExactThree 3) 5100750 0 = true := by decide

theorem tailEnvelope0003FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5100750 (tailEnvelope0003FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0003FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0003FailureCutoffTreeThree3Check

def tailEnvelope0003FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0003FailureCutoffTreeThree4Check :
    tailEnvelope0003FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0003FailureFibreExactThree 4) 5100750 0 = true := by decide

theorem tailEnvelope0003FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5100750 (tailEnvelope0003FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0003FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0003FailureCutoffTreeThree4Check

def tailEnvelope0003FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0003FailureCutoffTreeThree5Check :
    tailEnvelope0003FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0003FailureFibreExactThree 5) 5100750 0 = true := by decide

theorem tailEnvelope0003FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5100750 (tailEnvelope0003FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0003FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0003FailureCutoffTreeThree5Check

def tailEnvelope0003FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0003FailureCutoffTreeThree6Check :
    tailEnvelope0003FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0003FailureFibreExactThree 6) 5100750 0 = true := by decide

theorem tailEnvelope0003FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5100750 (tailEnvelope0003FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0003FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0003FailureCutoffTreeThree6Check

def tailEnvelope0003FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0003FailureCutoffTreeThree7Check :
    tailEnvelope0003FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0003FailureFibreExactThree 7) 5100750 0 = true := by decide

theorem tailEnvelope0003FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5100750 (tailEnvelope0003FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0003FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0003FailureCutoffTreeThree7Check

def tailEnvelope0003FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0003FailureCutoffTreeThree8Check :
    tailEnvelope0003FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0003FailureFibreExactThree 8) 5100750 0 = true := by decide

theorem tailEnvelope0003FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5100750 (tailEnvelope0003FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0003FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0003FailureCutoffTreeThree8Check

theorem tailEnvelope0003FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5100750 (tailEnvelope0003FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0003FailureFibreCutoffThree0 residue
  · exact tailEnvelope0003FailureFibreCutoffThree1 residue
  · exact tailEnvelope0003FailureFibreCutoffThree2 residue
  · exact tailEnvelope0003FailureFibreCutoffThree3 residue
  · exact tailEnvelope0003FailureFibreCutoffThree4 residue
  · exact tailEnvelope0003FailureFibreCutoffThree5 residue
  · exact tailEnvelope0003FailureFibreCutoffThree6 residue
  · exact tailEnvelope0003FailureFibreCutoffThree7 residue
  · exact tailEnvelope0003FailureFibreCutoffThree8 residue

theorem tailEnvelope0003FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0003FailureFibreExactThree cell residue ≤ tailEnvelope0003FailureFibreMaxThree cell := by decide

theorem tailEnvelope0003FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0003CountsThree tailEnvelope0003FailureFibreMaxThree 18098 = true := by decide

theorem tailEnvelope0003FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0003CountsThree tailEnvelope0003FailureFibreMaxThree 18177 = true := by decide

theorem tailEnvelope0003FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5075375 5100751
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5100750 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0003CountsOne) (fibre := tailEnvelope0003FailureFibreMaxOne) (bound := 18118) tailEnvelope0003FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0003CountsOne tailEnvelope0003FailureFibreMaxOne tailEnvelope0003FailureFibreExactOne
      (lower := 5075375) (upper := 5100750) (N := N) (bound := 18118)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0003FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0003FailureFibreCutoffOne
      tailEnvelope0003FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0003CountsThree) (fibre := tailEnvelope0003FailureFibreMaxThree) (bound := 18098) tailEnvelope0003FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0003CountsThree tailEnvelope0003FailureFibreMaxThree tailEnvelope0003FailureFibreExactThree
      (lower := 5075375) (upper := 5100750) (N := N) (bound := 18098)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0003FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0003FailureFibreCutoffThree
      tailEnvelope0003FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0003FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5075375 5100751
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5100750 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0003CountsOne) (fibre := tailEnvelope0003FailureFibreMaxOne) (bound := 18196) tailEnvelope0003FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0003CountsOne tailEnvelope0003FailureFibreMaxOne tailEnvelope0003FailureFibreExactOne
      (lower := 5075375) (upper := 5100750) (N := N) (bound := 18196)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0003FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0003FailureFibreCutoffOne
      tailEnvelope0003FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0003CountsThree) (fibre := tailEnvelope0003FailureFibreMaxThree) (bound := 18177) tailEnvelope0003FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0003CountsThree tailEnvelope0003FailureFibreMaxThree tailEnvelope0003FailureFibreExactThree
      (lower := 5075375) (upper := 5100750) (N := N) (bound := 18177)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0003FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0003FailureFibreCutoffThree
      tailEnvelope0003FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0004FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![70, 74, 76, 72, 77, 78, 69, 65, 74, 74, 78, 70, 71, 73, 77, 77, 70, 66, 78, 74, 71, 75, 79, 75, 70, 73, 70, 76, 83, 71, 71, 76, 72, 69, 72, 74, 70, 72, 72, 70, 71, 75, 70, 75, 69, 76, 78, 73, 73], ![69, 69, 76, 75, 70, 73, 75, 75, 73, 69, 79, 73, 73, 79, 76, 72, 72, 71, 78, 84, 74, 73, 77, 72, 65, 68, 75, 73, 76, 74, 75, 68, 69, 77, 73, 77, 73, 75, 72, 80, 75, 70, 73, 75, 75, 72, 76, 74, 70], ![68, 79, 77, 75, 72, 70, 69, 76, 74, 74, 70, 73, 65, 70, 70, 76, 67, 79, 73, 76, 72, 74, 73, 74, 75, 78, 75, 73, 72, 68, 69, 72, 72, 76, 74, 72, 72, 71, 72, 70, 75, 74, 74, 72, 72, 75, 68, 73, 71], ![69, 71, 74, 68, 70, 74, 72, 76, 76, 68, 75, 72, 75, 74, 73, 75, 75, 74, 75, 73, 76, 74, 69, 76, 78, 75, 70, 70, 74, 69, 69, 80, 81, 73, 73, 73, 71, 73, 76, 75, 79, 70, 73, 76, 76, 70, 70, 71, 77], ![76, 73, 74, 74, 76, 77, 78, 77, 77, 69, 74, 71, 74, 78, 72, 73, 71, 71, 67, 73, 68, 68, 70, 72, 77, 70, 72, 72, 73, 73, 73, 76, 79, 71, 74, 70, 76, 75, 72, 70, 71, 67, 73, 69, 71, 73, 72, 73, 77], ![74, 69, 68, 75, 80, 71, 77, 74, 74, 72, 68, 74, 81, 76, 70, 73, 75, 76, 76, 68, 76, 74, 69, 74, 74, 75, 70, 72, 72, 80, 74, 65, 72, 77, 70, 71, 81, 77, 69, 74, 67, 69, 77, 70, 76, 76, 72, 70, 74], ![79, 80, 72, 70, 77, 71, 73, 75, 66, 76, 76, 75, 78, 70, 64, 67, 79, 74, 72, 73, 70, 72, 72, 70, 75, 76, 75, 75, 72, 73, 74, 71, 69, 75, 73, 77, 72, 75, 71, 69, 69, 76, 73, 73, 68, 72, 78, 70, 71], ![74, 74, 69, 75, 73, 74, 70, 72, 76, 78, 73, 70, 71, 71, 71, 71, 77, 75, 73, 67, 74, 74, 74, 72, 71, 73, 73, 72, 68, 75, 71, 73, 77, 70, 77, 78, 69, 71, 73, 77, 72, 77, 72, 69, 76, 70, 73, 74, 78], ![71, 72, 74, 74, 70, 77, 75, 70, 72, 72, 70, 71, 73, 70, 82, 73, 75, 74, 74, 67, 76, 78, 73, 72, 74, 69, 71, 71, 74, 72, 73, 76, 71, 72, 76, 73, 71, 76, 72, 77, 75, 74, 73, 76, 73, 70, 81, 79, 69]]

def tailEnvelope0004FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![80, 76, 71, 73, 68, 73, 73, 77, 75, 77, 79, 76, 74, 71, 69, 72, 77, 75, 70, 73, 76, 64, 68, 74, 74, 77, 79, 69, 72, 74, 74, 71, 75, 77, 69, 71, 75, 76, 74, 69, 71, 77, 78, 72, 73, 71, 69, 70, 78], ![78, 70, 68, 69, 76, 76, 75, 70, 77, 73, 72, 67, 71, 74, 70, 70, 70, 76, 74, 71, 75, 72, 71, 79, 77, 77, 70, 65, 73, 75, 71, 77, 74, 73, 72, 70, 75, 74, 71, 76, 71, 75, 77, 72, 69, 73, 76, 70, 78], ![71, 71, 73, 70, 79, 81, 73, 70, 76, 71, 67, 77, 74, 75, 71, 72, 76, 68, 70, 75, 70, 77, 76, 72, 73, 78, 66, 67, 78, 76, 76, 73, 72, 69, 74, 74, 71, 71, 79, 72, 70, 73, 80, 70, 71, 78, 71, 74, 76], ![67, 72, 77, 73, 70, 77, 68, 69, 72, 78, 74, 75, 75, 78, 76, 72, 74, 72, 75, 79, 69, 76, 80, 73, 72, 71, 75, 76, 79, 73, 72, 70, 67, 73, 71, 67, 77, 71, 77, 67, 68, 75, 77, 73, 69, 71, 82, 73, 69], ![70, 77, 79, 73, 74, 67, 69, 71, 71, 76, 81, 73, 71, 74, 70, 69, 73, 76, 79, 68, 71, 76, 75, 75, 71, 75, 76, 77, 75, 70, 74, 73, 65, 73, 76, 74, 69, 72, 68, 72, 76, 73, 75, 69, 77, 68, 74, 75, 72], ![74, 74, 73, 73, 71, 74, 77, 74, 68, 75, 74, 72, 68, 70, 75, 77, 73, 70, 72, 68, 70, 70, 72, 75, 78, 71, 76, 75, 72, 73, 74, 73, 79, 80, 75, 73, 67, 71, 75, 73, 77, 71, 72, 74, 69, 71, 71, 80, 75], ![77, 74, 71, 70, 74, 71, 74, 79, 73, 73, 73, 68, 68, 77, 75, 74, 72, 70, 71, 77, 76, 73, 76, 75, 73, 69, 71, 76, 66, 68, 74, 68, 75, 68, 71, 74, 70, 69, 76, 80, 79, 74, 72, 74, 74, 74, 78, 75, 72], ![72, 74, 69, 79, 73, 75, 77, 76, 70, 67, 75, 77, 76, 71, 73, 81, 70, 68, 71, 71, 74, 71, 72, 71, 72, 69, 76, 74, 71, 74, 72, 77, 75, 73, 74, 75, 79, 77, 74, 74, 74, 66, 71, 75, 75, 77, 74, 73, 69], ![72, 72, 68, 74, 74, 72, 75, 74, 78, 72, 72, 70, 75, 74, 71, 72, 74, 71, 76, 76, 77, 69, 73, 72, 73, 73, 74, 71, 71, 70, 71, 73, 76, 66, 73, 72, 76, 74, 73, 71, 76, 74, 69, 77, 79, 73, 73, 71, 72]]

def tailEnvelope0004FailureFibreMaxOne : Fin 9 → Nat :=
  ![83, 84, 79, 81, 79, 81, 80, 78, 82]

def tailEnvelope0004FailureFibreMaxThree : Fin 9 → Nat :=
  ![80, 79, 81, 82, 81, 80, 80, 81, 79]

theorem tailEnvelope0004FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5126253 (tailEnvelope0004CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0004FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0004FailureCutoffTreeOne0Check :
    tailEnvelope0004FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0004FailureFibreExactOne 0) 5126253 0 = true := by decide

theorem tailEnvelope0004FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5126253 (tailEnvelope0004FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0004FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0004FailureCutoffTreeOne0Check

def tailEnvelope0004FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0004FailureCutoffTreeOne1Check :
    tailEnvelope0004FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0004FailureFibreExactOne 1) 5126253 0 = true := by decide

theorem tailEnvelope0004FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5126253 (tailEnvelope0004FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0004FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0004FailureCutoffTreeOne1Check

def tailEnvelope0004FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0004FailureCutoffTreeOne2Check :
    tailEnvelope0004FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0004FailureFibreExactOne 2) 5126253 0 = true := by decide

theorem tailEnvelope0004FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5126253 (tailEnvelope0004FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0004FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0004FailureCutoffTreeOne2Check

def tailEnvelope0004FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0004FailureCutoffTreeOne3Check :
    tailEnvelope0004FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0004FailureFibreExactOne 3) 5126253 0 = true := by decide

theorem tailEnvelope0004FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5126253 (tailEnvelope0004FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0004FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0004FailureCutoffTreeOne3Check

def tailEnvelope0004FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0004FailureCutoffTreeOne4Check :
    tailEnvelope0004FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0004FailureFibreExactOne 4) 5126253 0 = true := by decide

theorem tailEnvelope0004FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5126253 (tailEnvelope0004FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0004FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0004FailureCutoffTreeOne4Check

def tailEnvelope0004FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0004FailureCutoffTreeOne5Check :
    tailEnvelope0004FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0004FailureFibreExactOne 5) 5126253 0 = true := by decide

theorem tailEnvelope0004FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5126253 (tailEnvelope0004FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0004FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0004FailureCutoffTreeOne5Check

def tailEnvelope0004FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0004FailureCutoffTreeOne6Check :
    tailEnvelope0004FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0004FailureFibreExactOne 6) 5126253 0 = true := by decide

theorem tailEnvelope0004FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5126253 (tailEnvelope0004FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0004FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0004FailureCutoffTreeOne6Check

def tailEnvelope0004FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0004FailureCutoffTreeOne7Check :
    tailEnvelope0004FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0004FailureFibreExactOne 7) 5126253 0 = true := by decide

theorem tailEnvelope0004FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5126253 (tailEnvelope0004FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0004FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0004FailureCutoffTreeOne7Check

def tailEnvelope0004FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0004FailureCutoffTreeOne8Check :
    tailEnvelope0004FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0004FailureFibreExactOne 8) 5126253 0 = true := by decide

theorem tailEnvelope0004FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5126253 (tailEnvelope0004FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0004FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0004FailureCutoffTreeOne8Check

theorem tailEnvelope0004FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5126253 (tailEnvelope0004FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0004FailureFibreCutoffOne0 residue
  · exact tailEnvelope0004FailureFibreCutoffOne1 residue
  · exact tailEnvelope0004FailureFibreCutoffOne2 residue
  · exact tailEnvelope0004FailureFibreCutoffOne3 residue
  · exact tailEnvelope0004FailureFibreCutoffOne4 residue
  · exact tailEnvelope0004FailureFibreCutoffOne5 residue
  · exact tailEnvelope0004FailureFibreCutoffOne6 residue
  · exact tailEnvelope0004FailureFibreCutoffOne7 residue
  · exact tailEnvelope0004FailureFibreCutoffOne8 residue

theorem tailEnvelope0004FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0004FailureFibreExactOne cell residue ≤ tailEnvelope0004FailureFibreMaxOne cell := by decide

theorem tailEnvelope0004FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0004CountsOne tailEnvelope0004FailureFibreMaxOne 18206 = true := by decide

theorem tailEnvelope0004FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0004CountsOne tailEnvelope0004FailureFibreMaxOne 18284 = true := by decide

theorem tailEnvelope0004FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5126253 (tailEnvelope0004CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0004FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0004FailureCutoffTreeThree0Check :
    tailEnvelope0004FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0004FailureFibreExactThree 0) 5126253 0 = true := by decide

theorem tailEnvelope0004FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5126253 (tailEnvelope0004FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0004FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0004FailureCutoffTreeThree0Check

def tailEnvelope0004FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0004FailureCutoffTreeThree1Check :
    tailEnvelope0004FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0004FailureFibreExactThree 1) 5126253 0 = true := by decide

theorem tailEnvelope0004FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5126253 (tailEnvelope0004FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0004FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0004FailureCutoffTreeThree1Check

def tailEnvelope0004FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0004FailureCutoffTreeThree2Check :
    tailEnvelope0004FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0004FailureFibreExactThree 2) 5126253 0 = true := by decide

theorem tailEnvelope0004FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5126253 (tailEnvelope0004FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0004FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0004FailureCutoffTreeThree2Check

def tailEnvelope0004FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0004FailureCutoffTreeThree3Check :
    tailEnvelope0004FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0004FailureFibreExactThree 3) 5126253 0 = true := by decide

theorem tailEnvelope0004FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5126253 (tailEnvelope0004FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0004FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0004FailureCutoffTreeThree3Check

def tailEnvelope0004FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0004FailureCutoffTreeThree4Check :
    tailEnvelope0004FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0004FailureFibreExactThree 4) 5126253 0 = true := by decide

theorem tailEnvelope0004FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5126253 (tailEnvelope0004FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0004FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0004FailureCutoffTreeThree4Check

def tailEnvelope0004FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0004FailureCutoffTreeThree5Check :
    tailEnvelope0004FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0004FailureFibreExactThree 5) 5126253 0 = true := by decide

theorem tailEnvelope0004FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5126253 (tailEnvelope0004FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0004FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0004FailureCutoffTreeThree5Check

def tailEnvelope0004FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0004FailureCutoffTreeThree6Check :
    tailEnvelope0004FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0004FailureFibreExactThree 6) 5126253 0 = true := by decide

theorem tailEnvelope0004FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5126253 (tailEnvelope0004FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0004FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0004FailureCutoffTreeThree6Check

def tailEnvelope0004FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0004FailureCutoffTreeThree7Check :
    tailEnvelope0004FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0004FailureFibreExactThree 7) 5126253 0 = true := by decide

theorem tailEnvelope0004FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5126253 (tailEnvelope0004FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0004FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0004FailureCutoffTreeThree7Check

def tailEnvelope0004FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0004FailureCutoffTreeThree8Check :
    tailEnvelope0004FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0004FailureFibreExactThree 8) 5126253 0 = true := by decide

theorem tailEnvelope0004FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5126253 (tailEnvelope0004FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0004FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0004FailureCutoffTreeThree8Check

theorem tailEnvelope0004FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5126253 (tailEnvelope0004FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0004FailureFibreCutoffThree0 residue
  · exact tailEnvelope0004FailureFibreCutoffThree1 residue
  · exact tailEnvelope0004FailureFibreCutoffThree2 residue
  · exact tailEnvelope0004FailureFibreCutoffThree3 residue
  · exact tailEnvelope0004FailureFibreCutoffThree4 residue
  · exact tailEnvelope0004FailureFibreCutoffThree5 residue
  · exact tailEnvelope0004FailureFibreCutoffThree6 residue
  · exact tailEnvelope0004FailureFibreCutoffThree7 residue
  · exact tailEnvelope0004FailureFibreCutoffThree8 residue

theorem tailEnvelope0004FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0004FailureFibreExactThree cell residue ≤ tailEnvelope0004FailureFibreMaxThree cell := by decide

theorem tailEnvelope0004FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0004CountsThree tailEnvelope0004FailureFibreMaxThree 18186 = true := by decide

theorem tailEnvelope0004FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0004CountsThree tailEnvelope0004FailureFibreMaxThree 18265 = true := by decide

theorem tailEnvelope0004FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5100751 5126254
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5126253 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0004CountsOne) (fibre := tailEnvelope0004FailureFibreMaxOne) (bound := 18206) tailEnvelope0004FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0004CountsOne tailEnvelope0004FailureFibreMaxOne tailEnvelope0004FailureFibreExactOne
      (lower := 5100751) (upper := 5126253) (N := N) (bound := 18206)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0004FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0004FailureFibreCutoffOne
      tailEnvelope0004FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0004CountsThree) (fibre := tailEnvelope0004FailureFibreMaxThree) (bound := 18186) tailEnvelope0004FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0004CountsThree tailEnvelope0004FailureFibreMaxThree tailEnvelope0004FailureFibreExactThree
      (lower := 5100751) (upper := 5126253) (N := N) (bound := 18186)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0004FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0004FailureFibreCutoffThree
      tailEnvelope0004FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0004FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5100751 5126254
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5126253 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0004CountsOne) (fibre := tailEnvelope0004FailureFibreMaxOne) (bound := 18284) tailEnvelope0004FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0004CountsOne tailEnvelope0004FailureFibreMaxOne tailEnvelope0004FailureFibreExactOne
      (lower := 5100751) (upper := 5126253) (N := N) (bound := 18284)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0004FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0004FailureFibreCutoffOne
      tailEnvelope0004FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0004CountsThree) (fibre := tailEnvelope0004FailureFibreMaxThree) (bound := 18265) tailEnvelope0004FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0004CountsThree tailEnvelope0004FailureFibreMaxThree tailEnvelope0004FailureFibreExactThree
      (lower := 5100751) (upper := 5126253) (N := N) (bound := 18265)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0004FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0004FailureFibreCutoffThree
      tailEnvelope0004FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0005FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![70, 74, 77, 73, 78, 79, 69, 65, 74, 74, 78, 71, 71, 74, 78, 77, 70, 66, 79, 74, 72, 75, 79, 75, 70, 73, 70, 76, 83, 71, 72, 76, 72, 69, 73, 76, 71, 72, 73, 70, 71, 76, 70, 75, 70, 76, 79, 73, 74], ![69, 70, 76, 75, 70, 73, 75, 75, 73, 70, 79, 74, 73, 79, 76, 72, 73, 71, 79, 84, 75, 73, 77, 72, 66, 70, 76, 74, 77, 74, 75, 68, 70, 78, 74, 77, 73, 75, 73, 80, 75, 70, 75, 75, 77, 73, 76, 74, 70], ![69, 79, 77, 77, 72, 70, 69, 76, 75, 74, 71, 73, 65, 70, 70, 76, 69, 79, 75, 76, 72, 74, 73, 74, 76, 78, 76, 73, 72, 68, 69, 72, 73, 77, 76, 74, 73, 71, 72, 70, 75, 74, 74, 72, 72, 75, 68, 73, 71], ![70, 71, 74, 68, 70, 74, 74, 77, 77, 69, 75, 72, 75, 74, 74, 75, 76, 74, 76, 73, 76, 75, 70, 77, 78, 75, 70, 70, 74, 69, 69, 80, 81, 75, 73, 73, 71, 73, 77, 75, 80, 70, 74, 76, 76, 70, 71, 72, 77], ![77, 73, 74, 74, 77, 77, 79, 77, 77, 69, 74, 71, 75, 78, 73, 73, 71, 71, 67, 73, 71, 68, 70, 72, 77, 71, 72, 72, 73, 73, 74, 77, 79, 72, 74, 70, 76, 76, 72, 71, 71, 67, 73, 69, 71, 74, 72, 74, 77], ![74, 71, 69, 75, 81, 72, 77, 74, 74, 72, 68, 74, 81, 76, 70, 73, 75, 76, 76, 68, 76, 74, 70, 74, 74, 75, 71, 73, 72, 80, 74, 65, 72, 77, 70, 72, 81, 78, 70, 74, 68, 69, 77, 71, 76, 77, 72, 70, 74], ![79, 82, 72, 70, 77, 71, 73, 75, 66, 76, 76, 76, 78, 71, 64, 68, 79, 75, 72, 74, 70, 73, 72, 70, 76, 77, 75, 76, 72, 74, 74, 72, 69, 75, 73, 78, 72, 77, 71, 69, 69, 77, 73, 74, 68, 73, 78, 71, 71], ![74, 75, 69, 76, 73, 74, 71, 73, 76, 79, 73, 70, 71, 71, 71, 72, 77, 76, 75, 67, 74, 75, 75, 73, 71, 74, 73, 72, 68, 75, 71, 74, 77, 71, 77, 78, 70, 71, 74, 77, 72, 77, 72, 69, 76, 70, 73, 74, 78], ![71, 73, 74, 74, 70, 79, 75, 71, 72, 72, 70, 72, 73, 72, 82, 74, 75, 74, 74, 67, 77, 79, 73, 72, 74, 69, 71, 72, 74, 73, 73, 76, 71, 73, 76, 73, 71, 76, 72, 77, 76, 74, 73, 76, 73, 70, 82, 79, 70]]

def tailEnvelope0005FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![80, 77, 71, 74, 69, 73, 73, 78, 75, 77, 80, 76, 75, 71, 69, 72, 77, 75, 70, 74, 76, 64, 68, 74, 74, 77, 81, 69, 73, 74, 74, 71, 76, 77, 70, 71, 75, 76, 74, 69, 72, 77, 79, 72, 73, 72, 69, 70, 79], ![78, 71, 68, 70, 76, 76, 75, 70, 77, 73, 72, 67, 71, 74, 70, 70, 71, 77, 74, 73, 75, 72, 72, 79, 78, 77, 71, 65, 73, 75, 72, 77, 75, 73, 72, 70, 75, 74, 72, 76, 72, 75, 77, 72, 69, 73, 77, 70, 81], ![72, 71, 74, 70, 80, 81, 74, 70, 77, 71, 68, 77, 75, 75, 71, 72, 76, 69, 70, 75, 71, 77, 77, 72, 73, 78, 66, 67, 79, 76, 77, 73, 72, 70, 74, 74, 72, 71, 80, 72, 70, 74, 80, 71, 71, 78, 71, 74, 76], ![67, 73, 78, 73, 71, 77, 68, 69, 72, 78, 75, 75, 76, 78, 76, 72, 74, 73, 75, 79, 70, 76, 80, 73, 72, 71, 76, 76, 79, 73, 72, 70, 69, 74, 72, 67, 79, 71, 77, 67, 68, 75, 78, 73, 69, 72, 82, 73, 70], ![71, 77, 79, 73, 74, 67, 70, 72, 73, 76, 82, 73, 71, 74, 70, 69, 74, 77, 79, 68, 71, 76, 76, 76, 71, 76, 77, 77, 75, 70, 74, 73, 65, 73, 76, 75, 69, 72, 68, 73, 76, 75, 75, 70, 77, 68, 74, 75, 72], ![75, 74, 73, 73, 73, 74, 77, 75, 68, 75, 74, 72, 68, 70, 75, 79, 73, 70, 73, 68, 70, 70, 72, 75, 78, 72, 76, 75, 72, 73, 75, 74, 80, 81, 75, 73, 67, 71, 75, 74, 77, 72, 72, 75, 69, 71, 72, 81, 76], ![77, 74, 71, 70, 74, 72, 74, 79, 74, 73, 73, 68, 68, 78, 75, 75, 72, 70, 71, 77, 76, 74, 76, 77, 74, 69, 72, 76, 66, 69, 74, 69, 75, 68, 73, 74, 70, 71, 76, 83, 79, 74, 72, 74, 74, 75, 78, 75, 72], ![72, 74, 69, 80, 73, 76, 77, 76, 70, 67, 75, 77, 77, 72, 75, 81, 72, 68, 71, 72, 75, 74, 72, 71, 72, 69, 76, 75, 72, 75, 73, 77, 75, 73, 74, 75, 79, 78, 74, 74, 74, 66, 71, 75, 76, 77, 74, 73, 69], ![72, 73, 70, 75, 74, 73, 75, 74, 78, 73, 72, 71, 75, 75, 71, 72, 74, 72, 76, 78, 77, 70, 73, 73, 73, 73, 74, 71, 71, 70, 71, 73, 76, 67, 73, 73, 76, 75, 73, 71, 76, 74, 70, 77, 81, 73, 73, 71, 72]]

def tailEnvelope0005FailureFibreMaxOne : Fin 9 → Nat :=
  ![83, 84, 79, 81, 79, 81, 82, 79, 82]

def tailEnvelope0005FailureFibreMaxThree : Fin 9 → Nat :=
  ![81, 81, 81, 82, 82, 81, 83, 81, 81]

theorem tailEnvelope0005FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5151884 (tailEnvelope0005CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0005FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0005FailureCutoffTreeOne0Check :
    tailEnvelope0005FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0005FailureFibreExactOne 0) 5151884 0 = true := by decide

theorem tailEnvelope0005FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5151884 (tailEnvelope0005FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0005FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0005FailureCutoffTreeOne0Check

def tailEnvelope0005FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0005FailureCutoffTreeOne1Check :
    tailEnvelope0005FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0005FailureFibreExactOne 1) 5151884 0 = true := by decide

theorem tailEnvelope0005FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5151884 (tailEnvelope0005FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0005FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0005FailureCutoffTreeOne1Check

def tailEnvelope0005FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0005FailureCutoffTreeOne2Check :
    tailEnvelope0005FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0005FailureFibreExactOne 2) 5151884 0 = true := by decide

theorem tailEnvelope0005FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5151884 (tailEnvelope0005FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0005FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0005FailureCutoffTreeOne2Check

def tailEnvelope0005FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0005FailureCutoffTreeOne3Check :
    tailEnvelope0005FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0005FailureFibreExactOne 3) 5151884 0 = true := by decide

theorem tailEnvelope0005FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5151884 (tailEnvelope0005FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0005FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0005FailureCutoffTreeOne3Check

def tailEnvelope0005FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0005FailureCutoffTreeOne4Check :
    tailEnvelope0005FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0005FailureFibreExactOne 4) 5151884 0 = true := by decide

theorem tailEnvelope0005FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5151884 (tailEnvelope0005FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0005FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0005FailureCutoffTreeOne4Check

def tailEnvelope0005FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0005FailureCutoffTreeOne5Check :
    tailEnvelope0005FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0005FailureFibreExactOne 5) 5151884 0 = true := by decide

theorem tailEnvelope0005FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5151884 (tailEnvelope0005FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0005FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0005FailureCutoffTreeOne5Check

def tailEnvelope0005FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0005FailureCutoffTreeOne6Check :
    tailEnvelope0005FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0005FailureFibreExactOne 6) 5151884 0 = true := by decide

theorem tailEnvelope0005FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5151884 (tailEnvelope0005FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0005FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0005FailureCutoffTreeOne6Check

def tailEnvelope0005FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0005FailureCutoffTreeOne7Check :
    tailEnvelope0005FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0005FailureFibreExactOne 7) 5151884 0 = true := by decide

theorem tailEnvelope0005FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5151884 (tailEnvelope0005FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0005FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0005FailureCutoffTreeOne7Check

def tailEnvelope0005FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0005FailureCutoffTreeOne8Check :
    tailEnvelope0005FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0005FailureFibreExactOne 8) 5151884 0 = true := by decide

theorem tailEnvelope0005FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5151884 (tailEnvelope0005FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0005FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0005FailureCutoffTreeOne8Check

theorem tailEnvelope0005FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5151884 (tailEnvelope0005FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0005FailureFibreCutoffOne0 residue
  · exact tailEnvelope0005FailureFibreCutoffOne1 residue
  · exact tailEnvelope0005FailureFibreCutoffOne2 residue
  · exact tailEnvelope0005FailureFibreCutoffOne3 residue
  · exact tailEnvelope0005FailureFibreCutoffOne4 residue
  · exact tailEnvelope0005FailureFibreCutoffOne5 residue
  · exact tailEnvelope0005FailureFibreCutoffOne6 residue
  · exact tailEnvelope0005FailureFibreCutoffOne7 residue
  · exact tailEnvelope0005FailureFibreCutoffOne8 residue

theorem tailEnvelope0005FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0005FailureFibreExactOne cell residue ≤ tailEnvelope0005FailureFibreMaxOne cell := by decide

theorem tailEnvelope0005FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0005CountsOne tailEnvelope0005FailureFibreMaxOne 18297 = true := by decide

theorem tailEnvelope0005FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0005CountsOne tailEnvelope0005FailureFibreMaxOne 18376 = true := by decide

theorem tailEnvelope0005FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5151884 (tailEnvelope0005CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0005FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0005FailureCutoffTreeThree0Check :
    tailEnvelope0005FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0005FailureFibreExactThree 0) 5151884 0 = true := by decide

theorem tailEnvelope0005FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5151884 (tailEnvelope0005FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0005FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0005FailureCutoffTreeThree0Check

def tailEnvelope0005FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0005FailureCutoffTreeThree1Check :
    tailEnvelope0005FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0005FailureFibreExactThree 1) 5151884 0 = true := by decide

theorem tailEnvelope0005FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5151884 (tailEnvelope0005FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0005FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0005FailureCutoffTreeThree1Check

def tailEnvelope0005FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0005FailureCutoffTreeThree2Check :
    tailEnvelope0005FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0005FailureFibreExactThree 2) 5151884 0 = true := by decide

theorem tailEnvelope0005FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5151884 (tailEnvelope0005FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0005FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0005FailureCutoffTreeThree2Check

def tailEnvelope0005FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0005FailureCutoffTreeThree3Check :
    tailEnvelope0005FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0005FailureFibreExactThree 3) 5151884 0 = true := by decide

theorem tailEnvelope0005FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5151884 (tailEnvelope0005FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0005FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0005FailureCutoffTreeThree3Check

def tailEnvelope0005FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0005FailureCutoffTreeThree4Check :
    tailEnvelope0005FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0005FailureFibreExactThree 4) 5151884 0 = true := by decide

theorem tailEnvelope0005FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5151884 (tailEnvelope0005FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0005FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0005FailureCutoffTreeThree4Check

def tailEnvelope0005FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0005FailureCutoffTreeThree5Check :
    tailEnvelope0005FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0005FailureFibreExactThree 5) 5151884 0 = true := by decide

theorem tailEnvelope0005FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5151884 (tailEnvelope0005FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0005FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0005FailureCutoffTreeThree5Check

def tailEnvelope0005FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0005FailureCutoffTreeThree6Check :
    tailEnvelope0005FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0005FailureFibreExactThree 6) 5151884 0 = true := by decide

theorem tailEnvelope0005FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5151884 (tailEnvelope0005FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0005FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0005FailureCutoffTreeThree6Check

def tailEnvelope0005FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0005FailureCutoffTreeThree7Check :
    tailEnvelope0005FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0005FailureFibreExactThree 7) 5151884 0 = true := by decide

theorem tailEnvelope0005FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5151884 (tailEnvelope0005FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0005FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0005FailureCutoffTreeThree7Check

def tailEnvelope0005FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0005FailureCutoffTreeThree8Check :
    tailEnvelope0005FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0005FailureFibreExactThree 8) 5151884 0 = true := by decide

theorem tailEnvelope0005FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5151884 (tailEnvelope0005FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0005FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0005FailureCutoffTreeThree8Check

theorem tailEnvelope0005FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5151884 (tailEnvelope0005FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0005FailureFibreCutoffThree0 residue
  · exact tailEnvelope0005FailureFibreCutoffThree1 residue
  · exact tailEnvelope0005FailureFibreCutoffThree2 residue
  · exact tailEnvelope0005FailureFibreCutoffThree3 residue
  · exact tailEnvelope0005FailureFibreCutoffThree4 residue
  · exact tailEnvelope0005FailureFibreCutoffThree5 residue
  · exact tailEnvelope0005FailureFibreCutoffThree6 residue
  · exact tailEnvelope0005FailureFibreCutoffThree7 residue
  · exact tailEnvelope0005FailureFibreCutoffThree8 residue

theorem tailEnvelope0005FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0005FailureFibreExactThree cell residue ≤ tailEnvelope0005FailureFibreMaxThree cell := by decide

theorem tailEnvelope0005FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0005CountsThree tailEnvelope0005FailureFibreMaxThree 18279 = true := by decide

theorem tailEnvelope0005FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0005CountsThree tailEnvelope0005FailureFibreMaxThree 18360 = true := by decide

theorem tailEnvelope0005FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5126254 5151885
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5151884 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0005CountsOne) (fibre := tailEnvelope0005FailureFibreMaxOne) (bound := 18297) tailEnvelope0005FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0005CountsOne tailEnvelope0005FailureFibreMaxOne tailEnvelope0005FailureFibreExactOne
      (lower := 5126254) (upper := 5151884) (N := N) (bound := 18297)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0005FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0005FailureFibreCutoffOne
      tailEnvelope0005FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0005CountsThree) (fibre := tailEnvelope0005FailureFibreMaxThree) (bound := 18279) tailEnvelope0005FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0005CountsThree tailEnvelope0005FailureFibreMaxThree tailEnvelope0005FailureFibreExactThree
      (lower := 5126254) (upper := 5151884) (N := N) (bound := 18279)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0005FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0005FailureFibreCutoffThree
      tailEnvelope0005FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0005FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5126254 5151885
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5151884 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0005CountsOne) (fibre := tailEnvelope0005FailureFibreMaxOne) (bound := 18376) tailEnvelope0005FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0005CountsOne tailEnvelope0005FailureFibreMaxOne tailEnvelope0005FailureFibreExactOne
      (lower := 5126254) (upper := 5151884) (N := N) (bound := 18376)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0005FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0005FailureFibreCutoffOne
      tailEnvelope0005FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0005CountsThree) (fibre := tailEnvelope0005FailureFibreMaxThree) (bound := 18360) tailEnvelope0005FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0005CountsThree tailEnvelope0005FailureFibreMaxThree tailEnvelope0005FailureFibreExactThree
      (lower := 5126254) (upper := 5151884) (N := N) (bound := 18360)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0005FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0005FailureFibreCutoffThree
      tailEnvelope0005FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0006FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![70, 75, 77, 74, 78, 79, 69, 65, 74, 74, 78, 71, 71, 75, 78, 77, 70, 67, 79, 76, 72, 76, 79, 75, 70, 73, 70, 77, 83, 74, 73, 76, 72, 69, 74, 76, 72, 73, 73, 70, 71, 76, 70, 76, 70, 77, 80, 74, 74], ![69, 70, 76, 76, 70, 73, 75, 75, 74, 71, 80, 75, 73, 79, 76, 72, 75, 73, 79, 84, 75, 73, 79, 72, 66, 71, 76, 75, 77, 74, 75, 68, 70, 79, 74, 77, 73, 75, 73, 80, 76, 71, 75, 76, 77, 73, 76, 74, 70], ![70, 81, 77, 78, 72, 70, 69, 77, 75, 75, 71, 73, 65, 70, 70, 77, 69, 80, 75, 76, 72, 74, 73, 74, 76, 78, 76, 73, 72, 68, 69, 72, 74, 77, 77, 74, 73, 71, 72, 70, 75, 74, 75, 72, 72, 75, 71, 73, 73], ![70, 71, 74, 68, 70, 75, 75, 78, 78, 69, 75, 72, 75, 75, 74, 75, 76, 74, 76, 73, 76, 75, 70, 78, 78, 76, 70, 71, 74, 69, 70, 80, 82, 75, 73, 73, 71, 73, 78, 76, 81, 70, 74, 76, 76, 70, 72, 72, 78], ![77, 73, 75, 75, 77, 77, 79, 77, 78, 69, 74, 71, 76, 78, 76, 73, 72, 71, 67, 73, 72, 69, 71, 72, 77, 72, 72, 72, 73, 75, 76, 77, 80, 72, 74, 70, 77, 77, 73, 71, 71, 67, 74, 69, 72, 75, 73, 74, 78], ![74, 71, 69, 75, 81, 72, 77, 75, 74, 72, 70, 74, 82, 76, 70, 73, 75, 76, 77, 69, 77, 75, 70, 75, 74, 75, 72, 73, 73, 80, 74, 66, 72, 77, 71, 72, 82, 78, 70, 75, 69, 69, 77, 71, 78, 77, 72, 70, 74], ![80, 82, 75, 70, 77, 71, 74, 75, 67, 76, 77, 76, 79, 71, 64, 69, 80, 75, 73, 74, 70, 73, 72, 70, 77, 77, 75, 76, 73, 74, 76, 74, 69, 75, 74, 78, 72, 77, 71, 69, 69, 77, 73, 74, 68, 73, 78, 71, 71], ![75, 75, 69, 77, 73, 75, 72, 73, 77, 79, 73, 70, 73, 72, 72, 73, 78, 76, 75, 68, 74, 76, 75, 73, 71, 75, 73, 72, 68, 75, 71, 74, 77, 71, 77, 79, 70, 71, 74, 78, 72, 79, 72, 69, 76, 70, 73, 75, 78], ![71, 73, 74, 74, 71, 79, 76, 71, 72, 72, 70, 72, 74, 72, 82, 74, 75, 74, 74, 67, 77, 79, 73, 73, 74, 69, 73, 72, 75, 74, 73, 76, 71, 73, 76, 73, 71, 77, 72, 79, 76, 74, 73, 77, 73, 72, 82, 80, 72]]

def tailEnvelope0006FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![80, 77, 71, 74, 69, 73, 73, 78, 75, 79, 81, 77, 75, 71, 69, 73, 77, 76, 70, 74, 76, 64, 68, 75, 74, 78, 81, 69, 73, 75, 74, 72, 77, 78, 70, 71, 75, 76, 75, 71, 72, 77, 79, 72, 74, 72, 69, 71, 79], ![79, 71, 70, 70, 76, 77, 75, 71, 77, 73, 72, 67, 71, 76, 70, 71, 72, 77, 75, 73, 75, 73, 72, 80, 78, 77, 71, 65, 73, 76, 72, 78, 75, 75, 72, 71, 75, 74, 72, 76, 72, 75, 77, 73, 69, 73, 77, 71, 81], ![72, 71, 74, 71, 80, 82, 74, 71, 78, 71, 68, 79, 75, 76, 72, 72, 76, 70, 70, 76, 71, 78, 77, 72, 74, 78, 67, 67, 79, 77, 77, 73, 73, 70, 74, 74, 72, 71, 80, 72, 72, 74, 81, 71, 72, 78, 71, 74, 76], ![69, 73, 78, 74, 71, 77, 69, 69, 72, 79, 75, 76, 76, 78, 76, 72, 75, 73, 75, 79, 70, 76, 80, 73, 72, 71, 76, 76, 80, 73, 74, 71, 69, 75, 73, 67, 80, 71, 77, 67, 68, 75, 79, 73, 70, 72, 82, 74, 71], ![72, 78, 79, 73, 74, 67, 70, 72, 73, 76, 82, 74, 71, 74, 70, 69, 74, 77, 80, 69, 71, 76, 77, 76, 73, 76, 78, 77, 75, 70, 74, 73, 66, 74, 78, 75, 69, 72, 69, 73, 79, 75, 76, 70, 77, 68, 74, 75, 73], ![75, 74, 74, 73, 73, 74, 77, 75, 69, 75, 74, 72, 68, 71, 76, 81, 74, 70, 73, 68, 71, 71, 73, 75, 79, 72, 76, 75, 72, 74, 76, 75, 81, 81, 75, 73, 67, 71, 76, 74, 77, 72, 72, 75, 69, 72, 72, 83, 76], ![77, 75, 71, 70, 76, 72, 76, 79, 74, 73, 73, 68, 69, 78, 76, 75, 72, 70, 72, 77, 78, 75, 78, 77, 75, 69, 72, 76, 68, 69, 74, 69, 75, 68, 73, 74, 71, 71, 77, 83, 79, 74, 72, 74, 74, 76, 78, 76, 72], ![72, 74, 70, 80, 74, 76, 77, 76, 70, 67, 76, 78, 78, 73, 77, 83, 72, 68, 72, 73, 75, 74, 72, 71, 72, 69, 76, 76, 72, 76, 73, 77, 75, 73, 74, 76, 79, 79, 74, 74, 75, 66, 71, 76, 76, 78, 74, 74, 69], ![73, 73, 72, 75, 75, 73, 75, 74, 78, 73, 72, 71, 75, 75, 71, 73, 74, 73, 77, 78, 78, 70, 73, 73, 73, 75, 74, 73, 72, 70, 71, 73, 76, 68, 74, 74, 76, 75, 73, 71, 76, 75, 70, 78, 81, 75, 73, 71, 72]]

def tailEnvelope0006FailureFibreMaxOne : Fin 9 → Nat :=
  ![83, 84, 81, 82, 80, 82, 82, 79, 82]

def tailEnvelope0006FailureFibreMaxThree : Fin 9 → Nat :=
  ![81, 81, 82, 82, 82, 83, 83, 83, 81]

theorem tailEnvelope0006FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5177643 (tailEnvelope0006CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0006FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0006FailureCutoffTreeOne0Check :
    tailEnvelope0006FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0006FailureFibreExactOne 0) 5177643 0 = true := by decide

theorem tailEnvelope0006FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5177643 (tailEnvelope0006FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0006FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0006FailureCutoffTreeOne0Check

def tailEnvelope0006FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0006FailureCutoffTreeOne1Check :
    tailEnvelope0006FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0006FailureFibreExactOne 1) 5177643 0 = true := by decide

theorem tailEnvelope0006FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5177643 (tailEnvelope0006FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0006FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0006FailureCutoffTreeOne1Check

def tailEnvelope0006FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0006FailureCutoffTreeOne2Check :
    tailEnvelope0006FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0006FailureFibreExactOne 2) 5177643 0 = true := by decide

theorem tailEnvelope0006FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5177643 (tailEnvelope0006FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0006FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0006FailureCutoffTreeOne2Check

def tailEnvelope0006FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0006FailureCutoffTreeOne3Check :
    tailEnvelope0006FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0006FailureFibreExactOne 3) 5177643 0 = true := by decide

theorem tailEnvelope0006FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5177643 (tailEnvelope0006FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0006FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0006FailureCutoffTreeOne3Check

def tailEnvelope0006FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0006FailureCutoffTreeOne4Check :
    tailEnvelope0006FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0006FailureFibreExactOne 4) 5177643 0 = true := by decide

theorem tailEnvelope0006FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5177643 (tailEnvelope0006FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0006FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0006FailureCutoffTreeOne4Check

def tailEnvelope0006FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0006FailureCutoffTreeOne5Check :
    tailEnvelope0006FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0006FailureFibreExactOne 5) 5177643 0 = true := by decide

theorem tailEnvelope0006FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5177643 (tailEnvelope0006FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0006FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0006FailureCutoffTreeOne5Check

def tailEnvelope0006FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0006FailureCutoffTreeOne6Check :
    tailEnvelope0006FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0006FailureFibreExactOne 6) 5177643 0 = true := by decide

theorem tailEnvelope0006FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5177643 (tailEnvelope0006FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0006FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0006FailureCutoffTreeOne6Check

def tailEnvelope0006FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0006FailureCutoffTreeOne7Check :
    tailEnvelope0006FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0006FailureFibreExactOne 7) 5177643 0 = true := by decide

theorem tailEnvelope0006FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5177643 (tailEnvelope0006FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0006FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0006FailureCutoffTreeOne7Check

def tailEnvelope0006FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0006FailureCutoffTreeOne8Check :
    tailEnvelope0006FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0006FailureFibreExactOne 8) 5177643 0 = true := by decide

theorem tailEnvelope0006FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5177643 (tailEnvelope0006FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0006FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0006FailureCutoffTreeOne8Check

theorem tailEnvelope0006FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5177643 (tailEnvelope0006FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0006FailureFibreCutoffOne0 residue
  · exact tailEnvelope0006FailureFibreCutoffOne1 residue
  · exact tailEnvelope0006FailureFibreCutoffOne2 residue
  · exact tailEnvelope0006FailureFibreCutoffOne3 residue
  · exact tailEnvelope0006FailureFibreCutoffOne4 residue
  · exact tailEnvelope0006FailureFibreCutoffOne5 residue
  · exact tailEnvelope0006FailureFibreCutoffOne6 residue
  · exact tailEnvelope0006FailureFibreCutoffOne7 residue
  · exact tailEnvelope0006FailureFibreCutoffOne8 residue

theorem tailEnvelope0006FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0006FailureFibreExactOne cell residue ≤ tailEnvelope0006FailureFibreMaxOne cell := by decide

theorem tailEnvelope0006FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0006CountsOne tailEnvelope0006FailureFibreMaxOne 18386 = true := by decide

theorem tailEnvelope0006FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0006CountsOne tailEnvelope0006FailureFibreMaxOne 18465 = true := by decide

theorem tailEnvelope0006FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5177643 (tailEnvelope0006CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0006FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0006FailureCutoffTreeThree0Check :
    tailEnvelope0006FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0006FailureFibreExactThree 0) 5177643 0 = true := by decide

theorem tailEnvelope0006FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5177643 (tailEnvelope0006FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0006FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0006FailureCutoffTreeThree0Check

def tailEnvelope0006FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0006FailureCutoffTreeThree1Check :
    tailEnvelope0006FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0006FailureFibreExactThree 1) 5177643 0 = true := by decide

theorem tailEnvelope0006FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5177643 (tailEnvelope0006FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0006FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0006FailureCutoffTreeThree1Check

def tailEnvelope0006FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0006FailureCutoffTreeThree2Check :
    tailEnvelope0006FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0006FailureFibreExactThree 2) 5177643 0 = true := by decide

theorem tailEnvelope0006FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5177643 (tailEnvelope0006FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0006FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0006FailureCutoffTreeThree2Check

def tailEnvelope0006FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0006FailureCutoffTreeThree3Check :
    tailEnvelope0006FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0006FailureFibreExactThree 3) 5177643 0 = true := by decide

theorem tailEnvelope0006FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5177643 (tailEnvelope0006FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0006FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0006FailureCutoffTreeThree3Check

def tailEnvelope0006FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0006FailureCutoffTreeThree4Check :
    tailEnvelope0006FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0006FailureFibreExactThree 4) 5177643 0 = true := by decide

theorem tailEnvelope0006FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5177643 (tailEnvelope0006FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0006FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0006FailureCutoffTreeThree4Check

def tailEnvelope0006FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0006FailureCutoffTreeThree5Check :
    tailEnvelope0006FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0006FailureFibreExactThree 5) 5177643 0 = true := by decide

theorem tailEnvelope0006FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5177643 (tailEnvelope0006FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0006FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0006FailureCutoffTreeThree5Check

def tailEnvelope0006FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0006FailureCutoffTreeThree6Check :
    tailEnvelope0006FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0006FailureFibreExactThree 6) 5177643 0 = true := by decide

theorem tailEnvelope0006FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5177643 (tailEnvelope0006FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0006FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0006FailureCutoffTreeThree6Check

def tailEnvelope0006FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0006FailureCutoffTreeThree7Check :
    tailEnvelope0006FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0006FailureFibreExactThree 7) 5177643 0 = true := by decide

theorem tailEnvelope0006FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5177643 (tailEnvelope0006FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0006FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0006FailureCutoffTreeThree7Check

def tailEnvelope0006FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0006FailureCutoffTreeThree8Check :
    tailEnvelope0006FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0006FailureFibreExactThree 8) 5177643 0 = true := by decide

theorem tailEnvelope0006FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5177643 (tailEnvelope0006FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0006FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0006FailureCutoffTreeThree8Check

theorem tailEnvelope0006FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5177643 (tailEnvelope0006FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0006FailureFibreCutoffThree0 residue
  · exact tailEnvelope0006FailureFibreCutoffThree1 residue
  · exact tailEnvelope0006FailureFibreCutoffThree2 residue
  · exact tailEnvelope0006FailureFibreCutoffThree3 residue
  · exact tailEnvelope0006FailureFibreCutoffThree4 residue
  · exact tailEnvelope0006FailureFibreCutoffThree5 residue
  · exact tailEnvelope0006FailureFibreCutoffThree6 residue
  · exact tailEnvelope0006FailureFibreCutoffThree7 residue
  · exact tailEnvelope0006FailureFibreCutoffThree8 residue

theorem tailEnvelope0006FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0006FailureFibreExactThree cell residue ≤ tailEnvelope0006FailureFibreMaxThree cell := by decide

theorem tailEnvelope0006FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0006CountsThree tailEnvelope0006FailureFibreMaxThree 18372 = true := by decide

theorem tailEnvelope0006FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0006CountsThree tailEnvelope0006FailureFibreMaxThree 18453 = true := by decide

theorem tailEnvelope0006FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5151885 5177644
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5177643 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0006CountsOne) (fibre := tailEnvelope0006FailureFibreMaxOne) (bound := 18386) tailEnvelope0006FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0006CountsOne tailEnvelope0006FailureFibreMaxOne tailEnvelope0006FailureFibreExactOne
      (lower := 5151885) (upper := 5177643) (N := N) (bound := 18386)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0006FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0006FailureFibreCutoffOne
      tailEnvelope0006FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0006CountsThree) (fibre := tailEnvelope0006FailureFibreMaxThree) (bound := 18372) tailEnvelope0006FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0006CountsThree tailEnvelope0006FailureFibreMaxThree tailEnvelope0006FailureFibreExactThree
      (lower := 5151885) (upper := 5177643) (N := N) (bound := 18372)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0006FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0006FailureFibreCutoffThree
      tailEnvelope0006FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0006FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5151885 5177644
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5177643 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0006CountsOne) (fibre := tailEnvelope0006FailureFibreMaxOne) (bound := 18465) tailEnvelope0006FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0006CountsOne tailEnvelope0006FailureFibreMaxOne tailEnvelope0006FailureFibreExactOne
      (lower := 5151885) (upper := 5177643) (N := N) (bound := 18465)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0006FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0006FailureFibreCutoffOne
      tailEnvelope0006FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0006CountsThree) (fibre := tailEnvelope0006FailureFibreMaxThree) (bound := 18453) tailEnvelope0006FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0006CountsThree tailEnvelope0006FailureFibreMaxThree tailEnvelope0006FailureFibreExactThree
      (lower := 5151885) (upper := 5177643) (N := N) (bound := 18453)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0006FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0006FailureFibreCutoffThree
      tailEnvelope0006FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0007FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![70, 75, 79, 74, 80, 79, 69, 65, 74, 74, 79, 71, 72, 75, 79, 77, 70, 67, 79, 76, 73, 76, 79, 77, 70, 73, 71, 77, 84, 74, 73, 76, 72, 70, 74, 78, 72, 73, 73, 70, 72, 76, 70, 76, 70, 77, 80, 75, 74], ![70, 70, 77, 76, 70, 73, 75, 76, 75, 72, 83, 75, 73, 80, 76, 73, 76, 73, 80, 84, 75, 73, 79, 72, 67, 71, 77, 75, 77, 74, 75, 68, 70, 79, 74, 78, 73, 75, 73, 80, 77, 72, 76, 77, 77, 73, 77, 74, 70], ![72, 81, 77, 78, 72, 70, 70, 77, 76, 75, 71, 73, 65, 70, 70, 78, 69, 81, 75, 76, 72, 74, 73, 74, 76, 79, 76, 73, 72, 68, 69, 74, 74, 79, 77, 74, 74, 71, 72, 71, 76, 75, 75, 72, 72, 75, 71, 75, 73], ![70, 71, 74, 68, 70, 75, 75, 78, 78, 69, 75, 73, 75, 75, 74, 76, 76, 74, 76, 73, 76, 76, 71, 79, 79, 76, 70, 73, 74, 70, 70, 81, 82, 75, 73, 73, 71, 74, 79, 77, 82, 71, 75, 76, 77, 71, 72, 72, 78], ![77, 73, 75, 75, 77, 78, 79, 77, 78, 69, 74, 72, 77, 80, 76, 74, 72, 71, 67, 74, 72, 69, 71, 72, 77, 72, 72, 73, 73, 77, 76, 77, 80, 72, 74, 72, 77, 77, 73, 71, 71, 67, 74, 69, 72, 75, 73, 74, 78], ![74, 72, 69, 76, 82, 72, 78, 75, 74, 73, 70, 75, 82, 76, 70, 73, 76, 77, 77, 70, 78, 75, 71, 75, 74, 75, 72, 73, 73, 81, 74, 66, 73, 77, 71, 72, 83, 78, 70, 75, 69, 70, 78, 71, 79, 77, 72, 70, 75], ![80, 83, 75, 70, 77, 71, 74, 76, 67, 76, 77, 77, 79, 72, 64, 70, 80, 75, 73, 74, 70, 73, 72, 70, 77, 78, 75, 76, 73, 75, 76, 74, 70, 75, 75, 78, 72, 77, 71, 69, 71, 77, 74, 74, 69, 73, 79, 71, 72], ![75, 75, 70, 77, 73, 75, 73, 73, 77, 79, 73, 70, 73, 72, 72, 73, 78, 77, 76, 68, 75, 76, 76, 73, 72, 76, 73, 72, 68, 75, 71, 74, 78, 71, 77, 79, 70, 72, 75, 78, 73, 79, 72, 69, 76, 70, 74, 75, 80], ![71, 73, 74, 75, 71, 79, 76, 71, 72, 74, 71, 73, 75, 72, 82, 74, 75, 74, 74, 67, 78, 79, 74, 74, 75, 69, 73, 73, 76, 74, 74, 76, 71, 73, 76, 73, 72, 78, 73, 79, 76, 74, 75, 78, 74, 72, 82, 80, 72]]

def tailEnvelope0007FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![81, 77, 71, 74, 69, 73, 74, 78, 77, 79, 82, 77, 75, 71, 70, 73, 78, 76, 70, 74, 76, 64, 69, 75, 75, 79, 83, 70, 73, 75, 75, 72, 77, 79, 70, 71, 75, 76, 75, 71, 73, 78, 80, 73, 74, 72, 69, 71, 79], ![79, 72, 70, 70, 77, 77, 76, 73, 77, 73, 73, 67, 72, 76, 71, 71, 72, 78, 75, 74, 76, 73, 72, 80, 78, 77, 71, 66, 73, 76, 72, 78, 75, 75, 73, 71, 75, 75, 72, 77, 72, 75, 77, 73, 69, 73, 78, 72, 82], ![72, 71, 75, 71, 81, 82, 74, 71, 78, 71, 69, 79, 75, 76, 72, 72, 76, 70, 70, 76, 71, 78, 77, 73, 74, 79, 67, 68, 79, 78, 78, 73, 73, 70, 74, 75, 72, 72, 80, 73, 72, 76, 81, 74, 72, 79, 71, 75, 76], ![69, 73, 78, 74, 71, 77, 69, 69, 72, 79, 75, 76, 76, 78, 77, 72, 76, 74, 75, 80, 70, 76, 82, 73, 74, 72, 76, 77, 80, 73, 75, 71, 70, 76, 73, 68, 80, 71, 77, 68, 68, 76, 79, 74, 70, 72, 83, 74, 71], ![72, 78, 79, 73, 74, 68, 70, 73, 74, 77, 82, 75, 71, 74, 70, 70, 74, 78, 80, 69, 71, 77, 77, 78, 73, 77, 78, 77, 75, 70, 74, 74, 66, 75, 78, 75, 69, 73, 69, 74, 79, 75, 76, 70, 77, 68, 75, 75, 73], ![75, 74, 74, 74, 73, 76, 77, 76, 69, 75, 74, 72, 69, 72, 77, 82, 75, 70, 73, 68, 71, 72, 73, 76, 79, 72, 76, 75, 74, 74, 77, 75, 81, 81, 75, 73, 67, 71, 76, 74, 78, 74, 72, 75, 70, 72, 73, 84, 76], ![77, 75, 72, 71, 76, 74, 77, 79, 75, 73, 73, 69, 69, 79, 76, 75, 72, 70, 72, 79, 78, 76, 78, 77, 75, 69, 72, 77, 68, 70, 75, 69, 75, 68, 73, 74, 72, 71, 78, 83, 79, 75, 72, 74, 76, 76, 79, 76, 72], ![72, 75, 70, 82, 74, 76, 77, 76, 70, 69, 77, 78, 79, 73, 77, 84, 72, 68, 72, 73, 76, 74, 72, 71, 72, 69, 78, 76, 73, 76, 73, 77, 75, 73, 75, 76, 79, 79, 74, 74, 76, 66, 72, 77, 77, 79, 74, 74, 69], ![73, 74, 72, 76, 75, 73, 75, 74, 78, 73, 73, 71, 75, 75, 71, 74, 75, 74, 78, 79, 78, 70, 73, 73, 74, 75, 75, 73, 72, 70, 72, 74, 77, 68, 77, 74, 76, 75, 73, 73, 76, 76, 70, 78, 81, 75, 73, 71, 72]]

def tailEnvelope0007FailureFibreMaxOne : Fin 9 → Nat :=
  ![84, 84, 81, 82, 80, 83, 83, 80, 82]

def tailEnvelope0007FailureFibreMaxThree : Fin 9 → Nat :=
  ![83, 82, 82, 83, 82, 84, 83, 84, 81]

theorem tailEnvelope0007FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5203531 (tailEnvelope0007CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0007FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0007FailureCutoffTreeOne0Check :
    tailEnvelope0007FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0007FailureFibreExactOne 0) 5203531 0 = true := by decide

theorem tailEnvelope0007FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5203531 (tailEnvelope0007FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0007FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0007FailureCutoffTreeOne0Check

def tailEnvelope0007FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0007FailureCutoffTreeOne1Check :
    tailEnvelope0007FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0007FailureFibreExactOne 1) 5203531 0 = true := by decide

theorem tailEnvelope0007FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5203531 (tailEnvelope0007FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0007FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0007FailureCutoffTreeOne1Check

def tailEnvelope0007FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0007FailureCutoffTreeOne2Check :
    tailEnvelope0007FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0007FailureFibreExactOne 2) 5203531 0 = true := by decide

theorem tailEnvelope0007FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5203531 (tailEnvelope0007FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0007FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0007FailureCutoffTreeOne2Check

def tailEnvelope0007FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0007FailureCutoffTreeOne3Check :
    tailEnvelope0007FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0007FailureFibreExactOne 3) 5203531 0 = true := by decide

theorem tailEnvelope0007FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5203531 (tailEnvelope0007FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0007FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0007FailureCutoffTreeOne3Check

def tailEnvelope0007FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0007FailureCutoffTreeOne4Check :
    tailEnvelope0007FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0007FailureFibreExactOne 4) 5203531 0 = true := by decide

theorem tailEnvelope0007FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5203531 (tailEnvelope0007FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0007FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0007FailureCutoffTreeOne4Check

def tailEnvelope0007FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0007FailureCutoffTreeOne5Check :
    tailEnvelope0007FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0007FailureFibreExactOne 5) 5203531 0 = true := by decide

theorem tailEnvelope0007FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5203531 (tailEnvelope0007FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0007FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0007FailureCutoffTreeOne5Check

def tailEnvelope0007FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0007FailureCutoffTreeOne6Check :
    tailEnvelope0007FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0007FailureFibreExactOne 6) 5203531 0 = true := by decide

theorem tailEnvelope0007FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5203531 (tailEnvelope0007FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0007FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0007FailureCutoffTreeOne6Check

def tailEnvelope0007FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0007FailureCutoffTreeOne7Check :
    tailEnvelope0007FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0007FailureFibreExactOne 7) 5203531 0 = true := by decide

theorem tailEnvelope0007FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5203531 (tailEnvelope0007FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0007FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0007FailureCutoffTreeOne7Check

def tailEnvelope0007FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0007FailureCutoffTreeOne8Check :
    tailEnvelope0007FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0007FailureFibreExactOne 8) 5203531 0 = true := by decide

theorem tailEnvelope0007FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5203531 (tailEnvelope0007FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0007FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0007FailureCutoffTreeOne8Check

theorem tailEnvelope0007FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5203531 (tailEnvelope0007FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0007FailureFibreCutoffOne0 residue
  · exact tailEnvelope0007FailureFibreCutoffOne1 residue
  · exact tailEnvelope0007FailureFibreCutoffOne2 residue
  · exact tailEnvelope0007FailureFibreCutoffOne3 residue
  · exact tailEnvelope0007FailureFibreCutoffOne4 residue
  · exact tailEnvelope0007FailureFibreCutoffOne5 residue
  · exact tailEnvelope0007FailureFibreCutoffOne6 residue
  · exact tailEnvelope0007FailureFibreCutoffOne7 residue
  · exact tailEnvelope0007FailureFibreCutoffOne8 residue

theorem tailEnvelope0007FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0007FailureFibreExactOne cell residue ≤ tailEnvelope0007FailureFibreMaxOne cell := by decide

theorem tailEnvelope0007FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0007CountsOne tailEnvelope0007FailureFibreMaxOne 18480 = true := by decide

theorem tailEnvelope0007FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0007CountsOne tailEnvelope0007FailureFibreMaxOne 18560 = true := by decide

theorem tailEnvelope0007FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5203531 (tailEnvelope0007CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0007FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0007FailureCutoffTreeThree0Check :
    tailEnvelope0007FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0007FailureFibreExactThree 0) 5203531 0 = true := by decide

theorem tailEnvelope0007FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5203531 (tailEnvelope0007FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0007FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0007FailureCutoffTreeThree0Check

def tailEnvelope0007FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0007FailureCutoffTreeThree1Check :
    tailEnvelope0007FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0007FailureFibreExactThree 1) 5203531 0 = true := by decide

theorem tailEnvelope0007FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5203531 (tailEnvelope0007FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0007FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0007FailureCutoffTreeThree1Check

def tailEnvelope0007FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0007FailureCutoffTreeThree2Check :
    tailEnvelope0007FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0007FailureFibreExactThree 2) 5203531 0 = true := by decide

theorem tailEnvelope0007FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5203531 (tailEnvelope0007FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0007FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0007FailureCutoffTreeThree2Check

def tailEnvelope0007FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0007FailureCutoffTreeThree3Check :
    tailEnvelope0007FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0007FailureFibreExactThree 3) 5203531 0 = true := by decide

theorem tailEnvelope0007FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5203531 (tailEnvelope0007FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0007FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0007FailureCutoffTreeThree3Check

def tailEnvelope0007FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0007FailureCutoffTreeThree4Check :
    tailEnvelope0007FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0007FailureFibreExactThree 4) 5203531 0 = true := by decide

theorem tailEnvelope0007FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5203531 (tailEnvelope0007FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0007FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0007FailureCutoffTreeThree4Check

def tailEnvelope0007FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0007FailureCutoffTreeThree5Check :
    tailEnvelope0007FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0007FailureFibreExactThree 5) 5203531 0 = true := by decide

theorem tailEnvelope0007FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5203531 (tailEnvelope0007FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0007FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0007FailureCutoffTreeThree5Check

def tailEnvelope0007FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0007FailureCutoffTreeThree6Check :
    tailEnvelope0007FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0007FailureFibreExactThree 6) 5203531 0 = true := by decide

theorem tailEnvelope0007FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5203531 (tailEnvelope0007FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0007FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0007FailureCutoffTreeThree6Check

def tailEnvelope0007FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0007FailureCutoffTreeThree7Check :
    tailEnvelope0007FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0007FailureFibreExactThree 7) 5203531 0 = true := by decide

theorem tailEnvelope0007FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5203531 (tailEnvelope0007FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0007FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0007FailureCutoffTreeThree7Check

def tailEnvelope0007FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0007FailureCutoffTreeThree8Check :
    tailEnvelope0007FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0007FailureFibreExactThree 8) 5203531 0 = true := by decide

theorem tailEnvelope0007FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5203531 (tailEnvelope0007FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0007FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0007FailureCutoffTreeThree8Check

theorem tailEnvelope0007FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5203531 (tailEnvelope0007FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0007FailureFibreCutoffThree0 residue
  · exact tailEnvelope0007FailureFibreCutoffThree1 residue
  · exact tailEnvelope0007FailureFibreCutoffThree2 residue
  · exact tailEnvelope0007FailureFibreCutoffThree3 residue
  · exact tailEnvelope0007FailureFibreCutoffThree4 residue
  · exact tailEnvelope0007FailureFibreCutoffThree5 residue
  · exact tailEnvelope0007FailureFibreCutoffThree6 residue
  · exact tailEnvelope0007FailureFibreCutoffThree7 residue
  · exact tailEnvelope0007FailureFibreCutoffThree8 residue

theorem tailEnvelope0007FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0007FailureFibreExactThree cell residue ≤ tailEnvelope0007FailureFibreMaxThree cell := by decide

theorem tailEnvelope0007FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0007CountsThree tailEnvelope0007FailureFibreMaxThree 18467 = true := by decide

theorem tailEnvelope0007FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0007CountsThree tailEnvelope0007FailureFibreMaxThree 18548 = true := by decide

theorem tailEnvelope0007FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5177644 5203532
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5203531 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0007CountsOne) (fibre := tailEnvelope0007FailureFibreMaxOne) (bound := 18480) tailEnvelope0007FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0007CountsOne tailEnvelope0007FailureFibreMaxOne tailEnvelope0007FailureFibreExactOne
      (lower := 5177644) (upper := 5203531) (N := N) (bound := 18480)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0007FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0007FailureFibreCutoffOne
      tailEnvelope0007FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0007CountsThree) (fibre := tailEnvelope0007FailureFibreMaxThree) (bound := 18467) tailEnvelope0007FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0007CountsThree tailEnvelope0007FailureFibreMaxThree tailEnvelope0007FailureFibreExactThree
      (lower := 5177644) (upper := 5203531) (N := N) (bound := 18467)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0007FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0007FailureFibreCutoffThree
      tailEnvelope0007FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0007FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5177644 5203532
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5203531 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0007CountsOne) (fibre := tailEnvelope0007FailureFibreMaxOne) (bound := 18560) tailEnvelope0007FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0007CountsOne tailEnvelope0007FailureFibreMaxOne tailEnvelope0007FailureFibreExactOne
      (lower := 5177644) (upper := 5203531) (N := N) (bound := 18560)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0007FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0007FailureFibreCutoffOne
      tailEnvelope0007FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0007CountsThree) (fibre := tailEnvelope0007FailureFibreMaxThree) (bound := 18548) tailEnvelope0007FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0007CountsThree tailEnvelope0007FailureFibreMaxThree tailEnvelope0007FailureFibreExactThree
      (lower := 5177644) (upper := 5203531) (N := N) (bound := 18548)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0007FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0007FailureFibreCutoffThree
      tailEnvelope0007FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0008FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![70, 77, 79, 75, 80, 79, 69, 65, 74, 75, 79, 71, 72, 75, 79, 78, 71, 68, 80, 76, 73, 77, 79, 77, 70, 73, 71, 77, 84, 74, 73, 76, 73, 70, 76, 78, 73, 74, 73, 70, 72, 76, 71, 76, 71, 77, 80, 75, 76], ![70, 71, 77, 76, 72, 73, 75, 76, 75, 72, 83, 75, 74, 81, 76, 73, 76, 73, 80, 84, 75, 73, 79, 73, 68, 72, 78, 75, 77, 74, 75, 68, 71, 79, 75, 78, 73, 75, 73, 80, 78, 73, 77, 77, 77, 73, 77, 74, 71], ![72, 81, 77, 78, 72, 70, 70, 77, 76, 75, 71, 73, 65, 70, 72, 78, 70, 81, 75, 76, 72, 74, 74, 75, 77, 79, 76, 73, 72, 69, 71, 74, 75, 80, 79, 74, 74, 71, 73, 71, 77, 75, 76, 72, 72, 75, 71, 75, 73], ![70, 72, 74, 68, 71, 76, 76, 79, 78, 69, 75, 73, 76, 75, 75, 76, 76, 75, 76, 74, 76, 79, 72, 80, 79, 76, 71, 73, 75, 70, 71, 81, 83, 75, 73, 73, 71, 75, 79, 78, 82, 71, 76, 77, 77, 71, 72, 74, 78], ![77, 73, 78, 75, 77, 78, 79, 77, 78, 70, 75, 72, 79, 81, 77, 74, 72, 71, 68, 74, 73, 69, 71, 72, 77, 72, 73, 73, 74, 77, 78, 77, 80, 72, 74, 72, 77, 78, 73, 71, 71, 68, 74, 70, 72, 77, 73, 75, 78], ![76, 72, 70, 77, 82, 73, 78, 75, 74, 73, 72, 75, 82, 77, 70, 73, 76, 77, 77, 71, 79, 75, 71, 75, 74, 75, 72, 74, 73, 81, 74, 66, 73, 78, 71, 73, 83, 78, 73, 75, 69, 72, 78, 72, 79, 77, 72, 70, 75], ![80, 83, 75, 70, 77, 72, 74, 76, 67, 76, 78, 77, 80, 72, 64, 70, 80, 76, 73, 76, 70, 73, 72, 71, 77, 79, 75, 76, 73, 75, 76, 76, 70, 76, 75, 78, 72, 77, 71, 70, 71, 78, 74, 75, 69, 74, 79, 72, 72], ![75, 76, 70, 78, 73, 77, 74, 74, 78, 80, 73, 70, 73, 72, 72, 74, 78, 77, 76, 69, 75, 77, 76, 74, 72, 76, 73, 72, 69, 76, 71, 75, 78, 71, 78, 79, 71, 73, 75, 78, 73, 79, 72, 69, 76, 71, 74, 75, 80], ![71, 73, 74, 76, 71, 80, 76, 71, 73, 74, 72, 74, 75, 73, 82, 74, 75, 74, 74, 68, 78, 80, 74, 74, 75, 70, 73, 75, 77, 75, 74, 76, 71, 73, 76, 73, 74, 78, 73, 79, 76, 75, 75, 78, 75, 72, 83, 80, 72]]

def tailEnvelope0008FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![81, 77, 71, 74, 70, 74, 74, 79, 77, 79, 82, 78, 75, 72, 71, 74, 78, 76, 70, 74, 78, 64, 69, 75, 76, 79, 83, 70, 73, 76, 75, 72, 78, 79, 70, 71, 75, 76, 76, 72, 76, 78, 81, 73, 74, 72, 70, 71, 81], ![80, 75, 70, 71, 77, 77, 76, 73, 78, 73, 73, 68, 72, 76, 71, 72, 72, 79, 75, 74, 76, 73, 73, 81, 78, 78, 71, 66, 74, 76, 73, 79, 75, 76, 73, 71, 76, 75, 72, 77, 72, 75, 77, 73, 70, 73, 79, 74, 82], ![72, 71, 75, 71, 81, 82, 75, 71, 79, 71, 69, 79, 76, 76, 72, 72, 76, 70, 71, 76, 72, 78, 77, 73, 75, 79, 68, 68, 80, 78, 78, 74, 73, 70, 75, 75, 73, 74, 81, 73, 73, 76, 81, 75, 73, 79, 71, 75, 76], ![70, 73, 79, 74, 71, 77, 69, 69, 73, 79, 76, 77, 76, 79, 77, 74, 77, 74, 78, 80, 70, 76, 82, 73, 75, 72, 76, 77, 80, 74, 75, 72, 71, 76, 73, 68, 80, 71, 77, 68, 68, 76, 79, 74, 70, 72, 83, 74, 71], ![73, 78, 79, 73, 75, 70, 72, 74, 75, 77, 82, 75, 71, 74, 71, 70, 75, 78, 80, 69, 72, 77, 79, 78, 73, 77, 78, 77, 75, 70, 75, 74, 66, 75, 78, 75, 70, 73, 70, 75, 79, 76, 76, 70, 77, 68, 75, 75, 73], ![75, 74, 74, 74, 74, 76, 78, 76, 69, 75, 74, 73, 69, 73, 77, 82, 75, 70, 73, 68, 72, 72, 73, 76, 79, 73, 76, 76, 74, 75, 77, 75, 81, 81, 75, 75, 67, 72, 77, 75, 78, 75, 72, 75, 70, 73, 74, 85, 76], ![77, 75, 73, 72, 77, 74, 77, 79, 75, 73, 73, 69, 69, 79, 76, 75, 72, 70, 73, 80, 79, 77, 80, 77, 75, 69, 72, 78, 68, 71, 75, 69, 75, 68, 73, 76, 72, 73, 78, 83, 79, 75, 72, 75, 76, 78, 79, 77, 72], ![72, 75, 70, 84, 74, 76, 77, 76, 70, 71, 77, 80, 79, 73, 77, 84, 72, 70, 72, 74, 76, 74, 72, 71, 72, 70, 78, 78, 74, 76, 73, 77, 75, 74, 75, 77, 79, 79, 75, 74, 76, 66, 73, 78, 78, 79, 74, 74, 69], ![75, 76, 73, 76, 75, 73, 75, 75, 78, 74, 73, 71, 75, 75, 71, 76, 75, 75, 79, 79, 78, 70, 73, 74, 74, 76, 75, 73, 73, 70, 72, 74, 77, 69, 77, 75, 76, 75, 73, 73, 76, 76, 71, 78, 81, 75, 73, 71, 73]]

def tailEnvelope0008FailureFibreMaxOne : Fin 9 → Nat :=
  ![84, 84, 81, 83, 81, 83, 83, 80, 83]

def tailEnvelope0008FailureFibreMaxThree : Fin 9 → Nat :=
  ![83, 82, 82, 83, 82, 85, 83, 84, 81]

theorem tailEnvelope0008FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5229548 (tailEnvelope0008CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0008FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0008FailureCutoffTreeOne0Check :
    tailEnvelope0008FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0008FailureFibreExactOne 0) 5229548 0 = true := by decide

theorem tailEnvelope0008FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5229548 (tailEnvelope0008FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0008FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0008FailureCutoffTreeOne0Check

def tailEnvelope0008FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0008FailureCutoffTreeOne1Check :
    tailEnvelope0008FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0008FailureFibreExactOne 1) 5229548 0 = true := by decide

theorem tailEnvelope0008FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5229548 (tailEnvelope0008FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0008FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0008FailureCutoffTreeOne1Check

def tailEnvelope0008FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0008FailureCutoffTreeOne2Check :
    tailEnvelope0008FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0008FailureFibreExactOne 2) 5229548 0 = true := by decide

theorem tailEnvelope0008FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5229548 (tailEnvelope0008FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0008FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0008FailureCutoffTreeOne2Check

def tailEnvelope0008FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0008FailureCutoffTreeOne3Check :
    tailEnvelope0008FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0008FailureFibreExactOne 3) 5229548 0 = true := by decide

theorem tailEnvelope0008FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5229548 (tailEnvelope0008FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0008FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0008FailureCutoffTreeOne3Check

def tailEnvelope0008FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0008FailureCutoffTreeOne4Check :
    tailEnvelope0008FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0008FailureFibreExactOne 4) 5229548 0 = true := by decide

theorem tailEnvelope0008FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5229548 (tailEnvelope0008FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0008FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0008FailureCutoffTreeOne4Check

def tailEnvelope0008FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0008FailureCutoffTreeOne5Check :
    tailEnvelope0008FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0008FailureFibreExactOne 5) 5229548 0 = true := by decide

theorem tailEnvelope0008FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5229548 (tailEnvelope0008FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0008FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0008FailureCutoffTreeOne5Check

def tailEnvelope0008FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0008FailureCutoffTreeOne6Check :
    tailEnvelope0008FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0008FailureFibreExactOne 6) 5229548 0 = true := by decide

theorem tailEnvelope0008FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5229548 (tailEnvelope0008FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0008FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0008FailureCutoffTreeOne6Check

def tailEnvelope0008FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0008FailureCutoffTreeOne7Check :
    tailEnvelope0008FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0008FailureFibreExactOne 7) 5229548 0 = true := by decide

theorem tailEnvelope0008FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5229548 (tailEnvelope0008FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0008FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0008FailureCutoffTreeOne7Check

def tailEnvelope0008FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0008FailureCutoffTreeOne8Check :
    tailEnvelope0008FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0008FailureFibreExactOne 8) 5229548 0 = true := by decide

theorem tailEnvelope0008FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5229548 (tailEnvelope0008FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0008FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0008FailureCutoffTreeOne8Check

theorem tailEnvelope0008FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5229548 (tailEnvelope0008FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0008FailureFibreCutoffOne0 residue
  · exact tailEnvelope0008FailureFibreCutoffOne1 residue
  · exact tailEnvelope0008FailureFibreCutoffOne2 residue
  · exact tailEnvelope0008FailureFibreCutoffOne3 residue
  · exact tailEnvelope0008FailureFibreCutoffOne4 residue
  · exact tailEnvelope0008FailureFibreCutoffOne5 residue
  · exact tailEnvelope0008FailureFibreCutoffOne6 residue
  · exact tailEnvelope0008FailureFibreCutoffOne7 residue
  · exact tailEnvelope0008FailureFibreCutoffOne8 residue

theorem tailEnvelope0008FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0008FailureFibreExactOne cell residue ≤ tailEnvelope0008FailureFibreMaxOne cell := by decide

theorem tailEnvelope0008FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0008CountsOne tailEnvelope0008FailureFibreMaxOne 18575 = true := by decide

theorem tailEnvelope0008FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0008CountsOne tailEnvelope0008FailureFibreMaxOne 18655 = true := by decide

theorem tailEnvelope0008FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5229548 (tailEnvelope0008CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0008FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0008FailureCutoffTreeThree0Check :
    tailEnvelope0008FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0008FailureFibreExactThree 0) 5229548 0 = true := by decide

theorem tailEnvelope0008FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5229548 (tailEnvelope0008FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0008FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0008FailureCutoffTreeThree0Check

def tailEnvelope0008FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0008FailureCutoffTreeThree1Check :
    tailEnvelope0008FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0008FailureFibreExactThree 1) 5229548 0 = true := by decide

theorem tailEnvelope0008FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5229548 (tailEnvelope0008FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0008FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0008FailureCutoffTreeThree1Check

def tailEnvelope0008FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0008FailureCutoffTreeThree2Check :
    tailEnvelope0008FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0008FailureFibreExactThree 2) 5229548 0 = true := by decide

theorem tailEnvelope0008FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5229548 (tailEnvelope0008FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0008FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0008FailureCutoffTreeThree2Check

def tailEnvelope0008FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0008FailureCutoffTreeThree3Check :
    tailEnvelope0008FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0008FailureFibreExactThree 3) 5229548 0 = true := by decide

theorem tailEnvelope0008FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5229548 (tailEnvelope0008FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0008FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0008FailureCutoffTreeThree3Check

def tailEnvelope0008FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0008FailureCutoffTreeThree4Check :
    tailEnvelope0008FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0008FailureFibreExactThree 4) 5229548 0 = true := by decide

theorem tailEnvelope0008FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5229548 (tailEnvelope0008FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0008FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0008FailureCutoffTreeThree4Check

def tailEnvelope0008FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0008FailureCutoffTreeThree5Check :
    tailEnvelope0008FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0008FailureFibreExactThree 5) 5229548 0 = true := by decide

theorem tailEnvelope0008FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5229548 (tailEnvelope0008FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0008FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0008FailureCutoffTreeThree5Check

def tailEnvelope0008FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0008FailureCutoffTreeThree6Check :
    tailEnvelope0008FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0008FailureFibreExactThree 6) 5229548 0 = true := by decide

theorem tailEnvelope0008FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5229548 (tailEnvelope0008FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0008FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0008FailureCutoffTreeThree6Check

def tailEnvelope0008FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0008FailureCutoffTreeThree7Check :
    tailEnvelope0008FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0008FailureFibreExactThree 7) 5229548 0 = true := by decide

theorem tailEnvelope0008FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5229548 (tailEnvelope0008FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0008FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0008FailureCutoffTreeThree7Check

def tailEnvelope0008FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0008FailureCutoffTreeThree8Check :
    tailEnvelope0008FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0008FailureFibreExactThree 8) 5229548 0 = true := by decide

theorem tailEnvelope0008FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5229548 (tailEnvelope0008FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0008FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0008FailureCutoffTreeThree8Check

theorem tailEnvelope0008FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5229548 (tailEnvelope0008FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0008FailureFibreCutoffThree0 residue
  · exact tailEnvelope0008FailureFibreCutoffThree1 residue
  · exact tailEnvelope0008FailureFibreCutoffThree2 residue
  · exact tailEnvelope0008FailureFibreCutoffThree3 residue
  · exact tailEnvelope0008FailureFibreCutoffThree4 residue
  · exact tailEnvelope0008FailureFibreCutoffThree5 residue
  · exact tailEnvelope0008FailureFibreCutoffThree6 residue
  · exact tailEnvelope0008FailureFibreCutoffThree7 residue
  · exact tailEnvelope0008FailureFibreCutoffThree8 residue

theorem tailEnvelope0008FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0008FailureFibreExactThree cell residue ≤ tailEnvelope0008FailureFibreMaxThree cell := by decide

theorem tailEnvelope0008FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0008CountsThree tailEnvelope0008FailureFibreMaxThree 18560 = true := by decide

theorem tailEnvelope0008FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0008CountsThree tailEnvelope0008FailureFibreMaxThree 18641 = true := by decide

theorem tailEnvelope0008FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5203532 5229549
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5229548 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0008CountsOne) (fibre := tailEnvelope0008FailureFibreMaxOne) (bound := 18575) tailEnvelope0008FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0008CountsOne tailEnvelope0008FailureFibreMaxOne tailEnvelope0008FailureFibreExactOne
      (lower := 5203532) (upper := 5229548) (N := N) (bound := 18575)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0008FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0008FailureFibreCutoffOne
      tailEnvelope0008FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0008CountsThree) (fibre := tailEnvelope0008FailureFibreMaxThree) (bound := 18560) tailEnvelope0008FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0008CountsThree tailEnvelope0008FailureFibreMaxThree tailEnvelope0008FailureFibreExactThree
      (lower := 5203532) (upper := 5229548) (N := N) (bound := 18560)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0008FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0008FailureFibreCutoffThree
      tailEnvelope0008FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0008FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5203532 5229549
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5229548 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0008CountsOne) (fibre := tailEnvelope0008FailureFibreMaxOne) (bound := 18655) tailEnvelope0008FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0008CountsOne tailEnvelope0008FailureFibreMaxOne tailEnvelope0008FailureFibreExactOne
      (lower := 5203532) (upper := 5229548) (N := N) (bound := 18655)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0008FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0008FailureFibreCutoffOne
      tailEnvelope0008FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0008CountsThree) (fibre := tailEnvelope0008FailureFibreMaxThree) (bound := 18641) tailEnvelope0008FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0008CountsThree tailEnvelope0008FailureFibreMaxThree tailEnvelope0008FailureFibreExactThree
      (lower := 5203532) (upper := 5229548) (N := N) (bound := 18641)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0008FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0008FailureFibreCutoffThree
      tailEnvelope0008FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0009FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![71, 77, 79, 75, 80, 79, 69, 65, 74, 75, 79, 71, 72, 75, 79, 80, 71, 70, 80, 77, 73, 77, 79, 77, 70, 74, 71, 78, 84, 74, 73, 77, 73, 71, 76, 79, 74, 74, 73, 70, 72, 77, 71, 77, 71, 77, 80, 75, 76], ![70, 71, 77, 76, 73, 73, 76, 77, 76, 73, 83, 75, 74, 81, 76, 73, 76, 74, 81, 84, 75, 73, 80, 74, 69, 73, 78, 75, 77, 74, 75, 69, 71, 80, 75, 78, 73, 75, 75, 81, 79, 73, 77, 77, 77, 73, 77, 76, 71], ![72, 81, 77, 78, 72, 71, 70, 78, 76, 75, 71, 74, 65, 72, 72, 80, 70, 81, 75, 76, 72, 75, 74, 76, 78, 79, 77, 73, 72, 70, 71, 75, 75, 80, 79, 74, 74, 71, 73, 71, 77, 75, 76, 72, 72, 75, 73, 75, 74], ![70, 73, 74, 68, 72, 77, 77, 79, 78, 69, 75, 74, 76, 76, 75, 78, 76, 75, 76, 75, 77, 79, 73, 80, 79, 76, 71, 73, 75, 70, 71, 81, 83, 76, 74, 73, 72, 75, 80, 78, 83, 71, 76, 77, 78, 71, 73, 74, 78], ![77, 74, 78, 76, 77, 78, 79, 77, 78, 70, 75, 73, 79, 82, 77, 74, 72, 71, 68, 74, 73, 69, 71, 72, 77, 73, 74, 73, 75, 77, 78, 78, 80, 72, 75, 72, 78, 78, 73, 71, 71, 68, 75, 70, 74, 79, 74, 75, 78], ![76, 72, 71, 77, 83, 73, 79, 75, 74, 73, 72, 75, 82, 77, 70, 73, 77, 77, 79, 71, 79, 75, 71, 75, 75, 75, 74, 74, 73, 81, 74, 66, 76, 78, 72, 74, 83, 79, 73, 75, 70, 72, 79, 72, 79, 77, 73, 70, 75], ![81, 83, 75, 71, 77, 72, 75, 77, 68, 77, 78, 77, 80, 74, 65, 70, 81, 77, 73, 76, 71, 73, 73, 71, 78, 79, 76, 76, 74, 75, 79, 76, 71, 76, 75, 78, 72, 77, 72, 70, 71, 78, 75, 75, 70, 75, 79, 72, 72], ![78, 76, 71, 79, 75, 77, 74, 74, 78, 81, 73, 70, 74, 72, 73, 74, 78, 77, 76, 70, 76, 77, 77, 74, 72, 76, 73, 72, 69, 76, 71, 75, 78, 72, 78, 80, 71, 73, 77, 79, 73, 79, 73, 69, 76, 72, 74, 76, 80], ![71, 73, 75, 76, 73, 80, 76, 71, 73, 74, 72, 74, 75, 74, 82, 74, 75, 74, 74, 68, 78, 80, 74, 74, 76, 71, 75, 75, 77, 76, 76, 76, 71, 73, 76, 74, 74, 79, 73, 79, 77, 75, 76, 79, 75, 73, 83, 80, 72]]

def tailEnvelope0009FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![81, 77, 71, 74, 70, 74, 74, 80, 77, 80, 82, 78, 75, 72, 73, 74, 78, 76, 70, 74, 78, 66, 69, 77, 76, 80, 83, 70, 73, 77, 75, 73, 80, 79, 70, 71, 75, 76, 76, 74, 76, 80, 82, 73, 74, 73, 70, 72, 81], ![80, 75, 70, 71, 77, 78, 76, 74, 78, 73, 73, 69, 72, 77, 72, 72, 72, 79, 75, 75, 76, 73, 73, 81, 78, 78, 71, 67, 74, 77, 74, 79, 76, 76, 73, 72, 76, 76, 72, 77, 72, 75, 77, 73, 70, 73, 79, 74, 82], ![72, 72, 75, 72, 81, 83, 75, 72, 79, 72, 69, 80, 77, 76, 72, 72, 76, 71, 71, 77, 72, 79, 77, 74, 75, 79, 68, 69, 80, 78, 78, 76, 73, 71, 75, 76, 73, 75, 81, 73, 73, 76, 81, 75, 75, 79, 71, 75, 76], ![70, 74, 79, 74, 71, 77, 69, 70, 73, 80, 76, 77, 78, 79, 78, 75, 77, 75, 78, 80, 70, 76, 82, 74, 75, 72, 76, 77, 81, 74, 76, 72, 71, 76, 74, 68, 81, 71, 77, 68, 69, 76, 80, 74, 71, 73, 83, 75, 72], ![73, 78, 79, 74, 75, 73, 74, 74, 75, 77, 82, 75, 71, 74, 71, 70, 75, 78, 80, 70, 73, 78, 79, 78, 74, 77, 78, 77, 75, 70, 75, 74, 67, 75, 79, 75, 71, 73, 71, 75, 80, 77, 76, 70, 77, 68, 76, 75, 75], ![75, 74, 74, 74, 74, 76, 79, 76, 69, 75, 75, 73, 71, 73, 78, 82, 75, 71, 73, 68, 73, 72, 74, 76, 79, 73, 77, 76, 75, 78, 78, 75, 81, 81, 75, 75, 68, 72, 78, 75, 78, 75, 72, 76, 72, 75, 74, 85, 76], ![77, 76, 74, 73, 78, 74, 77, 79, 75, 73, 74, 69, 70, 79, 76, 75, 72, 70, 74, 81, 80, 77, 80, 77, 75, 69, 73, 78, 68, 71, 75, 69, 75, 68, 74, 76, 73, 73, 78, 83, 79, 75, 72, 75, 76, 78, 79, 77, 72], ![74, 75, 71, 84, 74, 76, 77, 76, 72, 71, 78, 80, 79, 73, 77, 84, 73, 70, 73, 74, 76, 74, 72, 71, 73, 71, 78, 79, 74, 76, 73, 77, 75, 74, 75, 77, 79, 79, 75, 74, 76, 69, 73, 80, 78, 79, 76, 74, 69], ![76, 77, 73, 76, 75, 73, 76, 75, 79, 74, 73, 71, 75, 75, 71, 76, 76, 75, 80, 79, 78, 71, 73, 74, 75, 76, 75, 73, 73, 70, 72, 75, 78, 70, 78, 75, 76, 75, 73, 74, 76, 77, 71, 78, 81, 75, 73, 72, 74]]

def tailEnvelope0009FailureFibreMaxOne : Fin 9 → Nat :=
  ![84, 84, 81, 83, 82, 83, 83, 81, 83]

def tailEnvelope0009FailureFibreMaxThree : Fin 9 → Nat :=
  ![83, 82, 83, 83, 82, 85, 83, 84, 81]

theorem tailEnvelope0009FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5255695 (tailEnvelope0009CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0009FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0009FailureCutoffTreeOne0Check :
    tailEnvelope0009FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0009FailureFibreExactOne 0) 5255695 0 = true := by decide

theorem tailEnvelope0009FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5255695 (tailEnvelope0009FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0009FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0009FailureCutoffTreeOne0Check

def tailEnvelope0009FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0009FailureCutoffTreeOne1Check :
    tailEnvelope0009FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0009FailureFibreExactOne 1) 5255695 0 = true := by decide

theorem tailEnvelope0009FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5255695 (tailEnvelope0009FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0009FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0009FailureCutoffTreeOne1Check

def tailEnvelope0009FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0009FailureCutoffTreeOne2Check :
    tailEnvelope0009FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0009FailureFibreExactOne 2) 5255695 0 = true := by decide

theorem tailEnvelope0009FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5255695 (tailEnvelope0009FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0009FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0009FailureCutoffTreeOne2Check

def tailEnvelope0009FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0009FailureCutoffTreeOne3Check :
    tailEnvelope0009FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0009FailureFibreExactOne 3) 5255695 0 = true := by decide

theorem tailEnvelope0009FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5255695 (tailEnvelope0009FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0009FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0009FailureCutoffTreeOne3Check

def tailEnvelope0009FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0009FailureCutoffTreeOne4Check :
    tailEnvelope0009FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0009FailureFibreExactOne 4) 5255695 0 = true := by decide

theorem tailEnvelope0009FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5255695 (tailEnvelope0009FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0009FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0009FailureCutoffTreeOne4Check

def tailEnvelope0009FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0009FailureCutoffTreeOne5Check :
    tailEnvelope0009FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0009FailureFibreExactOne 5) 5255695 0 = true := by decide

theorem tailEnvelope0009FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5255695 (tailEnvelope0009FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0009FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0009FailureCutoffTreeOne5Check

def tailEnvelope0009FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0009FailureCutoffTreeOne6Check :
    tailEnvelope0009FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0009FailureFibreExactOne 6) 5255695 0 = true := by decide

theorem tailEnvelope0009FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5255695 (tailEnvelope0009FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0009FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0009FailureCutoffTreeOne6Check

def tailEnvelope0009FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0009FailureCutoffTreeOne7Check :
    tailEnvelope0009FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0009FailureFibreExactOne 7) 5255695 0 = true := by decide

theorem tailEnvelope0009FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5255695 (tailEnvelope0009FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0009FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0009FailureCutoffTreeOne7Check

def tailEnvelope0009FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0009FailureCutoffTreeOne8Check :
    tailEnvelope0009FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0009FailureFibreExactOne 8) 5255695 0 = true := by decide

theorem tailEnvelope0009FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5255695 (tailEnvelope0009FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0009FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0009FailureCutoffTreeOne8Check

theorem tailEnvelope0009FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5255695 (tailEnvelope0009FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0009FailureFibreCutoffOne0 residue
  · exact tailEnvelope0009FailureFibreCutoffOne1 residue
  · exact tailEnvelope0009FailureFibreCutoffOne2 residue
  · exact tailEnvelope0009FailureFibreCutoffOne3 residue
  · exact tailEnvelope0009FailureFibreCutoffOne4 residue
  · exact tailEnvelope0009FailureFibreCutoffOne5 residue
  · exact tailEnvelope0009FailureFibreCutoffOne6 residue
  · exact tailEnvelope0009FailureFibreCutoffOne7 residue
  · exact tailEnvelope0009FailureFibreCutoffOne8 residue

theorem tailEnvelope0009FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0009FailureFibreExactOne cell residue ≤ tailEnvelope0009FailureFibreMaxOne cell := by decide

theorem tailEnvelope0009FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0009CountsOne tailEnvelope0009FailureFibreMaxOne 18662 = true := by decide

theorem tailEnvelope0009FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0009CountsOne tailEnvelope0009FailureFibreMaxOne 18743 = true := by decide

theorem tailEnvelope0009FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5255695 (tailEnvelope0009CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0009FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0009FailureCutoffTreeThree0Check :
    tailEnvelope0009FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0009FailureFibreExactThree 0) 5255695 0 = true := by decide

theorem tailEnvelope0009FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5255695 (tailEnvelope0009FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0009FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0009FailureCutoffTreeThree0Check

def tailEnvelope0009FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0009FailureCutoffTreeThree1Check :
    tailEnvelope0009FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0009FailureFibreExactThree 1) 5255695 0 = true := by decide

theorem tailEnvelope0009FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5255695 (tailEnvelope0009FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0009FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0009FailureCutoffTreeThree1Check

def tailEnvelope0009FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0009FailureCutoffTreeThree2Check :
    tailEnvelope0009FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0009FailureFibreExactThree 2) 5255695 0 = true := by decide

theorem tailEnvelope0009FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5255695 (tailEnvelope0009FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0009FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0009FailureCutoffTreeThree2Check

def tailEnvelope0009FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0009FailureCutoffTreeThree3Check :
    tailEnvelope0009FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0009FailureFibreExactThree 3) 5255695 0 = true := by decide

theorem tailEnvelope0009FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5255695 (tailEnvelope0009FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0009FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0009FailureCutoffTreeThree3Check

def tailEnvelope0009FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0009FailureCutoffTreeThree4Check :
    tailEnvelope0009FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0009FailureFibreExactThree 4) 5255695 0 = true := by decide

theorem tailEnvelope0009FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5255695 (tailEnvelope0009FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0009FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0009FailureCutoffTreeThree4Check

def tailEnvelope0009FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0009FailureCutoffTreeThree5Check :
    tailEnvelope0009FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0009FailureFibreExactThree 5) 5255695 0 = true := by decide

theorem tailEnvelope0009FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5255695 (tailEnvelope0009FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0009FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0009FailureCutoffTreeThree5Check

def tailEnvelope0009FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0009FailureCutoffTreeThree6Check :
    tailEnvelope0009FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0009FailureFibreExactThree 6) 5255695 0 = true := by decide

theorem tailEnvelope0009FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5255695 (tailEnvelope0009FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0009FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0009FailureCutoffTreeThree6Check

def tailEnvelope0009FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0009FailureCutoffTreeThree7Check :
    tailEnvelope0009FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0009FailureFibreExactThree 7) 5255695 0 = true := by decide

theorem tailEnvelope0009FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5255695 (tailEnvelope0009FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0009FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0009FailureCutoffTreeThree7Check

def tailEnvelope0009FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0009FailureCutoffTreeThree8Check :
    tailEnvelope0009FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0009FailureFibreExactThree 8) 5255695 0 = true := by decide

theorem tailEnvelope0009FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5255695 (tailEnvelope0009FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0009FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0009FailureCutoffTreeThree8Check

theorem tailEnvelope0009FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5255695 (tailEnvelope0009FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0009FailureFibreCutoffThree0 residue
  · exact tailEnvelope0009FailureFibreCutoffThree1 residue
  · exact tailEnvelope0009FailureFibreCutoffThree2 residue
  · exact tailEnvelope0009FailureFibreCutoffThree3 residue
  · exact tailEnvelope0009FailureFibreCutoffThree4 residue
  · exact tailEnvelope0009FailureFibreCutoffThree5 residue
  · exact tailEnvelope0009FailureFibreCutoffThree6 residue
  · exact tailEnvelope0009FailureFibreCutoffThree7 residue
  · exact tailEnvelope0009FailureFibreCutoffThree8 residue

theorem tailEnvelope0009FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0009FailureFibreExactThree cell residue ≤ tailEnvelope0009FailureFibreMaxThree cell := by decide

theorem tailEnvelope0009FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0009CountsThree tailEnvelope0009FailureFibreMaxThree 18653 = true := by decide

theorem tailEnvelope0009FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0009CountsThree tailEnvelope0009FailureFibreMaxThree 18734 = true := by decide

theorem tailEnvelope0009FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5229549 5255696
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5255695 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0009CountsOne) (fibre := tailEnvelope0009FailureFibreMaxOne) (bound := 18662) tailEnvelope0009FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0009CountsOne tailEnvelope0009FailureFibreMaxOne tailEnvelope0009FailureFibreExactOne
      (lower := 5229549) (upper := 5255695) (N := N) (bound := 18662)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0009FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0009FailureFibreCutoffOne
      tailEnvelope0009FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0009CountsThree) (fibre := tailEnvelope0009FailureFibreMaxThree) (bound := 18653) tailEnvelope0009FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0009CountsThree tailEnvelope0009FailureFibreMaxThree tailEnvelope0009FailureFibreExactThree
      (lower := 5229549) (upper := 5255695) (N := N) (bound := 18653)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0009FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0009FailureFibreCutoffThree
      tailEnvelope0009FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0009FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5229549 5255696
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5255695 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0009CountsOne) (fibre := tailEnvelope0009FailureFibreMaxOne) (bound := 18743) tailEnvelope0009FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0009CountsOne tailEnvelope0009FailureFibreMaxOne tailEnvelope0009FailureFibreExactOne
      (lower := 5229549) (upper := 5255695) (N := N) (bound := 18743)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0009FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0009FailureFibreCutoffOne
      tailEnvelope0009FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0009CountsThree) (fibre := tailEnvelope0009FailureFibreMaxThree) (bound := 18734) tailEnvelope0009FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0009CountsThree tailEnvelope0009FailureFibreMaxThree tailEnvelope0009FailureFibreExactThree
      (lower := 5229549) (upper := 5255695) (N := N) (bound := 18734)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0009FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0009FailureFibreCutoffThree
      tailEnvelope0009FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0010FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![72, 77, 80, 75, 80, 79, 69, 66, 75, 75, 80, 73, 72, 75, 80, 80, 73, 70, 81, 77, 73, 77, 79, 77, 71, 74, 72, 79, 84, 74, 74, 77, 74, 71, 77, 79, 74, 74, 73, 70, 72, 77, 71, 77, 71, 77, 80, 76, 76], ![71, 71, 78, 76, 73, 74, 77, 78, 77, 73, 83, 75, 74, 82, 77, 73, 77, 74, 81, 84, 75, 74, 82, 75, 70, 73, 79, 75, 77, 74, 75, 69, 71, 80, 75, 78, 73, 76, 75, 81, 79, 75, 77, 77, 77, 73, 78, 77, 71], ![72, 81, 77, 78, 73, 71, 71, 78, 76, 76, 71, 74, 67, 72, 73, 80, 70, 81, 75, 77, 72, 75, 74, 76, 78, 79, 77, 73, 74, 70, 71, 76, 77, 80, 79, 74, 74, 73, 73, 72, 77, 75, 76, 72, 72, 77, 73, 77, 74], ![70, 73, 75, 69, 72, 78, 77, 79, 78, 71, 75, 74, 76, 76, 75, 78, 76, 75, 76, 75, 78, 81, 73, 80, 79, 76, 71, 74, 75, 71, 71, 81, 83, 76, 74, 74, 73, 76, 81, 78, 83, 71, 76, 78, 78, 71, 73, 74, 78], ![77, 74, 79, 76, 77, 78, 79, 77, 78, 71, 77, 74, 80, 82, 77, 76, 72, 72, 68, 75, 73, 69, 71, 72, 77, 74, 74, 75, 75, 78, 78, 79, 80, 73, 75, 73, 78, 78, 73, 71, 71, 69, 75, 71, 74, 80, 74, 75, 78], ![76, 73, 71, 78, 83, 73, 79, 76, 74, 74, 72, 75, 82, 77, 70, 74, 77, 78, 79, 71, 80, 75, 71, 76, 75, 76, 76, 74, 73, 81, 74, 67, 76, 78, 73, 74, 84, 79, 73, 76, 70, 72, 79, 72, 79, 77, 73, 70, 76], ![82, 83, 75, 71, 77, 72, 75, 79, 68, 77, 78, 77, 80, 75, 67, 71, 81, 77, 73, 76, 72, 73, 73, 71, 78, 80, 76, 77, 74, 75, 79, 76, 71, 76, 75, 78, 72, 77, 73, 70, 72, 79, 75, 76, 70, 75, 80, 73, 73], ![78, 76, 71, 80, 75, 78, 74, 74, 78, 81, 73, 71, 74, 72, 73, 74, 79, 77, 77, 70, 76, 78, 77, 74, 72, 76, 73, 72, 70, 76, 72, 75, 79, 72, 79, 80, 72, 73, 77, 79, 73, 79, 73, 71, 77, 72, 75, 76, 81], ![71, 73, 75, 76, 73, 80, 76, 71, 73, 75, 73, 74, 76, 74, 82, 74, 76, 74, 75, 69, 79, 80, 74, 75, 76, 72, 76, 75, 78, 76, 76, 76, 71, 73, 77, 74, 75, 79, 73, 80, 77, 76, 76, 79, 76, 73, 83, 80, 72]]

def tailEnvelope0010FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![81, 77, 71, 74, 71, 74, 76, 80, 80, 80, 82, 78, 77, 72, 74, 74, 79, 76, 70, 74, 78, 66, 70, 77, 77, 80, 83, 70, 74, 77, 76, 73, 80, 79, 71, 72, 77, 76, 77, 74, 76, 80, 82, 73, 74, 73, 70, 72, 81], ![80, 75, 71, 71, 78, 78, 76, 74, 78, 73, 74, 69, 73, 79, 72, 73, 72, 79, 76, 75, 77, 73, 73, 81, 78, 78, 72, 67, 74, 78, 74, 80, 76, 76, 73, 72, 76, 76, 72, 77, 72, 75, 78, 74, 72, 74, 80, 74, 83], ![73, 72, 76, 72, 82, 83, 75, 72, 80, 72, 70, 80, 77, 76, 72, 72, 76, 72, 71, 77, 73, 79, 78, 74, 75, 81, 69, 69, 81, 78, 78, 76, 73, 72, 75, 77, 73, 76, 81, 74, 73, 77, 81, 76, 75, 79, 71, 75, 76], ![71, 74, 79, 74, 71, 77, 69, 71, 73, 80, 76, 78, 79, 80, 78, 75, 77, 76, 78, 80, 70, 76, 82, 75, 75, 73, 76, 77, 81, 74, 76, 73, 71, 77, 74, 68, 81, 72, 77, 69, 69, 77, 80, 74, 72, 74, 84, 76, 72], ![73, 78, 79, 74, 76, 73, 74, 75, 76, 77, 82, 75, 71, 75, 71, 71, 75, 78, 80, 70, 73, 79, 80, 78, 74, 77, 79, 77, 75, 71, 75, 75, 67, 75, 79, 76, 71, 75, 71, 76, 80, 77, 78, 70, 77, 68, 76, 75, 75], ![75, 75, 74, 75, 74, 78, 79, 76, 70, 76, 75, 74, 71, 74, 79, 82, 75, 71, 73, 69, 73, 73, 74, 77, 79, 73, 78, 76, 75, 79, 78, 75, 81, 81, 75, 75, 68, 72, 78, 75, 78, 75, 73, 76, 73, 75, 75, 85, 76], ![78, 77, 75, 74, 78, 75, 77, 80, 75, 75, 76, 69, 70, 79, 76, 75, 72, 72, 74, 83, 80, 77, 80, 77, 75, 69, 73, 78, 69, 71, 75, 69, 75, 69, 74, 78, 74, 73, 78, 83, 79, 75, 73, 75, 77, 78, 79, 77, 72], ![74, 76, 72, 84, 74, 76, 77, 77, 72, 71, 79, 80, 79, 73, 77, 84, 73, 70, 74, 74, 77, 74, 72, 71, 73, 71, 80, 79, 74, 76, 73, 77, 75, 75, 77, 77, 79, 79, 75, 75, 80, 69, 75, 80, 78, 79, 76, 74, 70], ![76, 78, 73, 76, 75, 73, 77, 75, 80, 74, 73, 71, 75, 75, 72, 77, 76, 76, 80, 79, 78, 71, 75, 75, 76, 76, 75, 75, 73, 71, 73, 76, 79, 71, 78, 75, 76, 75, 74, 74, 77, 77, 71, 78, 81, 75, 74, 72, 74]]

def tailEnvelope0010FailureFibreMaxOne : Fin 9 → Nat :=
  ![84, 84, 81, 83, 82, 84, 83, 81, 83]

def tailEnvelope0010FailureFibreMaxThree : Fin 9 → Nat :=
  ![83, 83, 83, 84, 82, 85, 83, 84, 81]

theorem tailEnvelope0010FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5281973 (tailEnvelope0010CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0010FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0010FailureCutoffTreeOne0Check :
    tailEnvelope0010FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0010FailureFibreExactOne 0) 5281973 0 = true := by decide

theorem tailEnvelope0010FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5281973 (tailEnvelope0010FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0010FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0010FailureCutoffTreeOne0Check

def tailEnvelope0010FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0010FailureCutoffTreeOne1Check :
    tailEnvelope0010FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0010FailureFibreExactOne 1) 5281973 0 = true := by decide

theorem tailEnvelope0010FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5281973 (tailEnvelope0010FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0010FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0010FailureCutoffTreeOne1Check

def tailEnvelope0010FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0010FailureCutoffTreeOne2Check :
    tailEnvelope0010FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0010FailureFibreExactOne 2) 5281973 0 = true := by decide

theorem tailEnvelope0010FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5281973 (tailEnvelope0010FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0010FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0010FailureCutoffTreeOne2Check

def tailEnvelope0010FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0010FailureCutoffTreeOne3Check :
    tailEnvelope0010FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0010FailureFibreExactOne 3) 5281973 0 = true := by decide

theorem tailEnvelope0010FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5281973 (tailEnvelope0010FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0010FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0010FailureCutoffTreeOne3Check

def tailEnvelope0010FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0010FailureCutoffTreeOne4Check :
    tailEnvelope0010FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0010FailureFibreExactOne 4) 5281973 0 = true := by decide

theorem tailEnvelope0010FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5281973 (tailEnvelope0010FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0010FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0010FailureCutoffTreeOne4Check

def tailEnvelope0010FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0010FailureCutoffTreeOne5Check :
    tailEnvelope0010FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0010FailureFibreExactOne 5) 5281973 0 = true := by decide

theorem tailEnvelope0010FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5281973 (tailEnvelope0010FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0010FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0010FailureCutoffTreeOne5Check

def tailEnvelope0010FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0010FailureCutoffTreeOne6Check :
    tailEnvelope0010FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0010FailureFibreExactOne 6) 5281973 0 = true := by decide

theorem tailEnvelope0010FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5281973 (tailEnvelope0010FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0010FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0010FailureCutoffTreeOne6Check

def tailEnvelope0010FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0010FailureCutoffTreeOne7Check :
    tailEnvelope0010FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0010FailureFibreExactOne 7) 5281973 0 = true := by decide

theorem tailEnvelope0010FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5281973 (tailEnvelope0010FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0010FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0010FailureCutoffTreeOne7Check

def tailEnvelope0010FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0010FailureCutoffTreeOne8Check :
    tailEnvelope0010FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0010FailureFibreExactOne 8) 5281973 0 = true := by decide

theorem tailEnvelope0010FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5281973 (tailEnvelope0010FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0010FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0010FailureCutoffTreeOne8Check

theorem tailEnvelope0010FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5281973 (tailEnvelope0010FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0010FailureFibreCutoffOne0 residue
  · exact tailEnvelope0010FailureFibreCutoffOne1 residue
  · exact tailEnvelope0010FailureFibreCutoffOne2 residue
  · exact tailEnvelope0010FailureFibreCutoffOne3 residue
  · exact tailEnvelope0010FailureFibreCutoffOne4 residue
  · exact tailEnvelope0010FailureFibreCutoffOne5 residue
  · exact tailEnvelope0010FailureFibreCutoffOne6 residue
  · exact tailEnvelope0010FailureFibreCutoffOne7 residue
  · exact tailEnvelope0010FailureFibreCutoffOne8 residue

theorem tailEnvelope0010FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0010FailureFibreExactOne cell residue ≤ tailEnvelope0010FailureFibreMaxOne cell := by decide

theorem tailEnvelope0010FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0010CountsOne tailEnvelope0010FailureFibreMaxOne 18747 = true := by decide

theorem tailEnvelope0010FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0010CountsOne tailEnvelope0010FailureFibreMaxOne 18828 = true := by decide

theorem tailEnvelope0010FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5281973 (tailEnvelope0010CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0010FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0010FailureCutoffTreeThree0Check :
    tailEnvelope0010FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0010FailureFibreExactThree 0) 5281973 0 = true := by decide

theorem tailEnvelope0010FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5281973 (tailEnvelope0010FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0010FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0010FailureCutoffTreeThree0Check

def tailEnvelope0010FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0010FailureCutoffTreeThree1Check :
    tailEnvelope0010FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0010FailureFibreExactThree 1) 5281973 0 = true := by decide

theorem tailEnvelope0010FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5281973 (tailEnvelope0010FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0010FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0010FailureCutoffTreeThree1Check

def tailEnvelope0010FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0010FailureCutoffTreeThree2Check :
    tailEnvelope0010FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0010FailureFibreExactThree 2) 5281973 0 = true := by decide

theorem tailEnvelope0010FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5281973 (tailEnvelope0010FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0010FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0010FailureCutoffTreeThree2Check

def tailEnvelope0010FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0010FailureCutoffTreeThree3Check :
    tailEnvelope0010FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0010FailureFibreExactThree 3) 5281973 0 = true := by decide

theorem tailEnvelope0010FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5281973 (tailEnvelope0010FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0010FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0010FailureCutoffTreeThree3Check

def tailEnvelope0010FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0010FailureCutoffTreeThree4Check :
    tailEnvelope0010FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0010FailureFibreExactThree 4) 5281973 0 = true := by decide

theorem tailEnvelope0010FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5281973 (tailEnvelope0010FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0010FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0010FailureCutoffTreeThree4Check

def tailEnvelope0010FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0010FailureCutoffTreeThree5Check :
    tailEnvelope0010FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0010FailureFibreExactThree 5) 5281973 0 = true := by decide

theorem tailEnvelope0010FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5281973 (tailEnvelope0010FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0010FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0010FailureCutoffTreeThree5Check

def tailEnvelope0010FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0010FailureCutoffTreeThree6Check :
    tailEnvelope0010FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0010FailureFibreExactThree 6) 5281973 0 = true := by decide

theorem tailEnvelope0010FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5281973 (tailEnvelope0010FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0010FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0010FailureCutoffTreeThree6Check

def tailEnvelope0010FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0010FailureCutoffTreeThree7Check :
    tailEnvelope0010FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0010FailureFibreExactThree 7) 5281973 0 = true := by decide

theorem tailEnvelope0010FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5281973 (tailEnvelope0010FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0010FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0010FailureCutoffTreeThree7Check

def tailEnvelope0010FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0010FailureCutoffTreeThree8Check :
    tailEnvelope0010FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0010FailureFibreExactThree 8) 5281973 0 = true := by decide

theorem tailEnvelope0010FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5281973 (tailEnvelope0010FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0010FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0010FailureCutoffTreeThree8Check

theorem tailEnvelope0010FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5281973 (tailEnvelope0010FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0010FailureFibreCutoffThree0 residue
  · exact tailEnvelope0010FailureFibreCutoffThree1 residue
  · exact tailEnvelope0010FailureFibreCutoffThree2 residue
  · exact tailEnvelope0010FailureFibreCutoffThree3 residue
  · exact tailEnvelope0010FailureFibreCutoffThree4 residue
  · exact tailEnvelope0010FailureFibreCutoffThree5 residue
  · exact tailEnvelope0010FailureFibreCutoffThree6 residue
  · exact tailEnvelope0010FailureFibreCutoffThree7 residue
  · exact tailEnvelope0010FailureFibreCutoffThree8 residue

theorem tailEnvelope0010FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0010FailureFibreExactThree cell residue ≤ tailEnvelope0010FailureFibreMaxThree cell := by decide

theorem tailEnvelope0010FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0010CountsThree tailEnvelope0010FailureFibreMaxThree 18746 = true := by decide

theorem tailEnvelope0010FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0010CountsThree tailEnvelope0010FailureFibreMaxThree 18827 = true := by decide

theorem tailEnvelope0010FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5255696 5281974
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5281973 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0010CountsOne) (fibre := tailEnvelope0010FailureFibreMaxOne) (bound := 18747) tailEnvelope0010FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0010CountsOne tailEnvelope0010FailureFibreMaxOne tailEnvelope0010FailureFibreExactOne
      (lower := 5255696) (upper := 5281973) (N := N) (bound := 18747)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0010FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0010FailureFibreCutoffOne
      tailEnvelope0010FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0010CountsThree) (fibre := tailEnvelope0010FailureFibreMaxThree) (bound := 18746) tailEnvelope0010FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0010CountsThree tailEnvelope0010FailureFibreMaxThree tailEnvelope0010FailureFibreExactThree
      (lower := 5255696) (upper := 5281973) (N := N) (bound := 18746)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0010FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0010FailureFibreCutoffThree
      tailEnvelope0010FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0010FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5255696 5281974
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5281973 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0010CountsOne) (fibre := tailEnvelope0010FailureFibreMaxOne) (bound := 18828) tailEnvelope0010FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0010CountsOne tailEnvelope0010FailureFibreMaxOne tailEnvelope0010FailureFibreExactOne
      (lower := 5255696) (upper := 5281973) (N := N) (bound := 18828)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0010FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0010FailureFibreCutoffOne
      tailEnvelope0010FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0010CountsThree) (fibre := tailEnvelope0010FailureFibreMaxThree) (bound := 18827) tailEnvelope0010FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0010CountsThree tailEnvelope0010FailureFibreMaxThree tailEnvelope0010FailureFibreExactThree
      (lower := 5255696) (upper := 5281973) (N := N) (bound := 18827)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0010FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0010FailureFibreCutoffThree
      tailEnvelope0010FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0011FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![72, 78, 80, 75, 80, 81, 69, 67, 75, 76, 80, 73, 72, 76, 80, 82, 73, 71, 81, 77, 73, 77, 79, 77, 71, 74, 72, 79, 84, 75, 74, 77, 74, 72, 77, 80, 74, 74, 73, 70, 73, 77, 72, 77, 71, 78, 80, 76, 78], ![71, 71, 78, 76, 74, 75, 78, 79, 78, 73, 83, 75, 74, 82, 77, 73, 77, 74, 81, 84, 76, 74, 83, 75, 70, 73, 79, 75, 77, 74, 76, 69, 72, 80, 75, 80, 73, 77, 76, 82, 79, 75, 77, 77, 77, 73, 79, 77, 73], ![72, 81, 78, 78, 73, 71, 71, 78, 76, 76, 71, 75, 67, 72, 74, 80, 71, 81, 75, 77, 73, 75, 76, 76, 78, 79, 77, 73, 76, 70, 73, 76, 77, 80, 79, 74, 75, 73, 74, 73, 77, 75, 76, 72, 73, 77, 75, 77, 74], ![70, 73, 76, 71, 74, 78, 77, 79, 78, 71, 76, 74, 77, 76, 75, 78, 76, 75, 77, 75, 79, 81, 73, 80, 79, 76, 72, 74, 75, 71, 72, 81, 83, 76, 75, 75, 74, 77, 81, 78, 84, 71, 76, 78, 78, 71, 73, 74, 78], ![78, 75, 80, 76, 77, 78, 79, 77, 79, 71, 78, 74, 80, 82, 77, 76, 73, 72, 69, 75, 73, 70, 71, 72, 78, 74, 76, 75, 76, 78, 78, 79, 81, 73, 75, 73, 78, 79, 73, 73, 71, 69, 76, 72, 75, 80, 74, 75, 78], ![78, 73, 72, 78, 83, 73, 80, 77, 75, 74, 72, 75, 82, 77, 71, 74, 77, 79, 79, 72, 83, 76, 71, 76, 75, 76, 76, 75, 73, 81, 74, 67, 77, 79, 73, 75, 84, 79, 73, 77, 70, 73, 80, 72, 79, 78, 73, 71, 76], ![82, 83, 75, 71, 79, 73, 75, 79, 69, 77, 79, 77, 80, 75, 67, 71, 81, 77, 73, 76, 72, 74, 73, 73, 79, 80, 77, 77, 74, 76, 79, 77, 72, 76, 75, 78, 72, 77, 73, 71, 73, 79, 76, 76, 70, 76, 80, 75, 73], ![78, 76, 71, 80, 75, 78, 74, 74, 78, 81, 74, 72, 74, 73, 73, 76, 79, 78, 77, 71, 76, 79, 77, 74, 72, 77, 73, 73, 71, 77, 72, 76, 79, 73, 79, 82, 72, 76, 77, 79, 73, 79, 73, 73, 77, 72, 75, 77, 81], ![72, 74, 75, 77, 73, 81, 77, 71, 74, 76, 73, 75, 76, 74, 82, 75, 76, 75, 76, 70, 79, 80, 75, 75, 77, 73, 77, 76, 78, 76, 76, 76, 71, 74, 77, 75, 75, 79, 73, 80, 77, 76, 76, 79, 76, 73, 83, 80, 72]]

def tailEnvelope0011FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![81, 77, 73, 75, 71, 76, 76, 81, 80, 80, 82, 79, 77, 72, 74, 74, 79, 76, 70, 75, 78, 68, 71, 78, 77, 80, 83, 70, 74, 77, 76, 74, 80, 79, 71, 72, 77, 76, 79, 75, 77, 80, 82, 73, 75, 73, 71, 72, 81], ![80, 76, 72, 72, 78, 78, 76, 74, 78, 74, 74, 69, 74, 79, 73, 73, 72, 79, 76, 75, 77, 73, 73, 83, 78, 78, 72, 67, 75, 78, 74, 80, 76, 76, 74, 72, 77, 76, 74, 77, 72, 75, 79, 74, 73, 76, 81, 76, 83], ![73, 72, 76, 73, 82, 84, 75, 72, 80, 72, 70, 80, 77, 77, 72, 72, 78, 72, 72, 79, 73, 79, 79, 74, 76, 81, 70, 70, 81, 78, 78, 76, 74, 72, 77, 77, 74, 76, 83, 74, 74, 77, 82, 76, 75, 79, 71, 75, 77], ![71, 75, 80, 74, 71, 77, 72, 71, 74, 80, 77, 78, 80, 80, 79, 75, 78, 76, 78, 80, 70, 76, 82, 75, 78, 73, 76, 78, 81, 75, 77, 73, 72, 77, 74, 68, 81, 72, 78, 69, 69, 77, 80, 75, 72, 76, 84, 76, 72], ![73, 79, 79, 75, 77, 73, 74, 76, 76, 78, 83, 75, 72, 75, 72, 71, 75, 78, 81, 70, 75, 79, 81, 78, 74, 77, 79, 77, 76, 72, 75, 75, 67, 75, 80, 77, 74, 75, 71, 76, 80, 77, 78, 70, 77, 69, 76, 76, 75], ![75, 75, 75, 75, 75, 78, 79, 76, 70, 76, 75, 75, 72, 74, 79, 82, 75, 71, 73, 69, 73, 73, 74, 78, 79, 74, 78, 77, 75, 79, 78, 75, 81, 81, 76, 76, 68, 73, 78, 75, 78, 75, 73, 78, 73, 76, 75, 85, 76], ![79, 77, 76, 74, 80, 76, 77, 80, 75, 75, 76, 69, 70, 79, 76, 76, 73, 72, 74, 83, 80, 77, 80, 77, 75, 70, 73, 79, 69, 71, 75, 69, 77, 70, 75, 79, 74, 73, 78, 83, 79, 76, 73, 76, 77, 78, 79, 77, 72], ![74, 76, 72, 85, 75, 76, 77, 78, 73, 73, 79, 80, 79, 73, 77, 84, 73, 71, 74, 74, 77, 74, 72, 73, 73, 73, 80, 79, 74, 76, 73, 78, 75, 76, 78, 77, 79, 79, 75, 78, 80, 70, 75, 80, 78, 79, 76, 74, 70], ![77, 79, 73, 76, 75, 74, 77, 76, 81, 74, 73, 71, 75, 76, 73, 79, 77, 76, 80, 79, 78, 74, 75, 76, 76, 76, 75, 75, 73, 72, 74, 77, 80, 71, 78, 75, 76, 75, 74, 74, 77, 77, 71, 78, 81, 75, 74, 73, 75]]

def tailEnvelope0011FailureFibreMaxOne : Fin 9 → Nat :=
  ![84, 84, 81, 84, 82, 84, 83, 82, 83]

def tailEnvelope0011FailureFibreMaxThree : Fin 9 → Nat :=
  ![83, 83, 84, 84, 83, 85, 83, 85, 81]

theorem tailEnvelope0011FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5308382 (tailEnvelope0011CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0011FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0011FailureCutoffTreeOne0Check :
    tailEnvelope0011FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0011FailureFibreExactOne 0) 5308382 0 = true := by decide

theorem tailEnvelope0011FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5308382 (tailEnvelope0011FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0011FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0011FailureCutoffTreeOne0Check

def tailEnvelope0011FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0011FailureCutoffTreeOne1Check :
    tailEnvelope0011FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0011FailureFibreExactOne 1) 5308382 0 = true := by decide

theorem tailEnvelope0011FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5308382 (tailEnvelope0011FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0011FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0011FailureCutoffTreeOne1Check

def tailEnvelope0011FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0011FailureCutoffTreeOne2Check :
    tailEnvelope0011FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0011FailureFibreExactOne 2) 5308382 0 = true := by decide

theorem tailEnvelope0011FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5308382 (tailEnvelope0011FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0011FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0011FailureCutoffTreeOne2Check

def tailEnvelope0011FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0011FailureCutoffTreeOne3Check :
    tailEnvelope0011FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0011FailureFibreExactOne 3) 5308382 0 = true := by decide

theorem tailEnvelope0011FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5308382 (tailEnvelope0011FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0011FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0011FailureCutoffTreeOne3Check

def tailEnvelope0011FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0011FailureCutoffTreeOne4Check :
    tailEnvelope0011FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0011FailureFibreExactOne 4) 5308382 0 = true := by decide

theorem tailEnvelope0011FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5308382 (tailEnvelope0011FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0011FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0011FailureCutoffTreeOne4Check

def tailEnvelope0011FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0011FailureCutoffTreeOne5Check :
    tailEnvelope0011FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0011FailureFibreExactOne 5) 5308382 0 = true := by decide

theorem tailEnvelope0011FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5308382 (tailEnvelope0011FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0011FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0011FailureCutoffTreeOne5Check

def tailEnvelope0011FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0011FailureCutoffTreeOne6Check :
    tailEnvelope0011FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0011FailureFibreExactOne 6) 5308382 0 = true := by decide

theorem tailEnvelope0011FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5308382 (tailEnvelope0011FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0011FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0011FailureCutoffTreeOne6Check

def tailEnvelope0011FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0011FailureCutoffTreeOne7Check :
    tailEnvelope0011FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0011FailureFibreExactOne 7) 5308382 0 = true := by decide

theorem tailEnvelope0011FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5308382 (tailEnvelope0011FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0011FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0011FailureCutoffTreeOne7Check

def tailEnvelope0011FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0011FailureCutoffTreeOne8Check :
    tailEnvelope0011FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0011FailureFibreExactOne 8) 5308382 0 = true := by decide

theorem tailEnvelope0011FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5308382 (tailEnvelope0011FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0011FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0011FailureCutoffTreeOne8Check

theorem tailEnvelope0011FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5308382 (tailEnvelope0011FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0011FailureFibreCutoffOne0 residue
  · exact tailEnvelope0011FailureFibreCutoffOne1 residue
  · exact tailEnvelope0011FailureFibreCutoffOne2 residue
  · exact tailEnvelope0011FailureFibreCutoffOne3 residue
  · exact tailEnvelope0011FailureFibreCutoffOne4 residue
  · exact tailEnvelope0011FailureFibreCutoffOne5 residue
  · exact tailEnvelope0011FailureFibreCutoffOne6 residue
  · exact tailEnvelope0011FailureFibreCutoffOne7 residue
  · exact tailEnvelope0011FailureFibreCutoffOne8 residue

theorem tailEnvelope0011FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0011FailureFibreExactOne cell residue ≤ tailEnvelope0011FailureFibreMaxOne cell := by decide

theorem tailEnvelope0011FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0011CountsOne tailEnvelope0011FailureFibreMaxOne 18841 = true := by decide

theorem tailEnvelope0011FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0011CountsOne tailEnvelope0011FailureFibreMaxOne 18922 = true := by decide

theorem tailEnvelope0011FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5308382 (tailEnvelope0011CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0011FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0011FailureCutoffTreeThree0Check :
    tailEnvelope0011FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0011FailureFibreExactThree 0) 5308382 0 = true := by decide

theorem tailEnvelope0011FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5308382 (tailEnvelope0011FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0011FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0011FailureCutoffTreeThree0Check

def tailEnvelope0011FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0011FailureCutoffTreeThree1Check :
    tailEnvelope0011FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0011FailureFibreExactThree 1) 5308382 0 = true := by decide

theorem tailEnvelope0011FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5308382 (tailEnvelope0011FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0011FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0011FailureCutoffTreeThree1Check

def tailEnvelope0011FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0011FailureCutoffTreeThree2Check :
    tailEnvelope0011FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0011FailureFibreExactThree 2) 5308382 0 = true := by decide

theorem tailEnvelope0011FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5308382 (tailEnvelope0011FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0011FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0011FailureCutoffTreeThree2Check

def tailEnvelope0011FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0011FailureCutoffTreeThree3Check :
    tailEnvelope0011FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0011FailureFibreExactThree 3) 5308382 0 = true := by decide

theorem tailEnvelope0011FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5308382 (tailEnvelope0011FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0011FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0011FailureCutoffTreeThree3Check

def tailEnvelope0011FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0011FailureCutoffTreeThree4Check :
    tailEnvelope0011FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0011FailureFibreExactThree 4) 5308382 0 = true := by decide

theorem tailEnvelope0011FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5308382 (tailEnvelope0011FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0011FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0011FailureCutoffTreeThree4Check

def tailEnvelope0011FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0011FailureCutoffTreeThree5Check :
    tailEnvelope0011FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0011FailureFibreExactThree 5) 5308382 0 = true := by decide

theorem tailEnvelope0011FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5308382 (tailEnvelope0011FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0011FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0011FailureCutoffTreeThree5Check

def tailEnvelope0011FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0011FailureCutoffTreeThree6Check :
    tailEnvelope0011FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0011FailureFibreExactThree 6) 5308382 0 = true := by decide

theorem tailEnvelope0011FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5308382 (tailEnvelope0011FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0011FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0011FailureCutoffTreeThree6Check

def tailEnvelope0011FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0011FailureCutoffTreeThree7Check :
    tailEnvelope0011FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0011FailureFibreExactThree 7) 5308382 0 = true := by decide

theorem tailEnvelope0011FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5308382 (tailEnvelope0011FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0011FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0011FailureCutoffTreeThree7Check

def tailEnvelope0011FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0011FailureCutoffTreeThree8Check :
    tailEnvelope0011FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0011FailureFibreExactThree 8) 5308382 0 = true := by decide

theorem tailEnvelope0011FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5308382 (tailEnvelope0011FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0011FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0011FailureCutoffTreeThree8Check

theorem tailEnvelope0011FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5308382 (tailEnvelope0011FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0011FailureFibreCutoffThree0 residue
  · exact tailEnvelope0011FailureFibreCutoffThree1 residue
  · exact tailEnvelope0011FailureFibreCutoffThree2 residue
  · exact tailEnvelope0011FailureFibreCutoffThree3 residue
  · exact tailEnvelope0011FailureFibreCutoffThree4 residue
  · exact tailEnvelope0011FailureFibreCutoffThree5 residue
  · exact tailEnvelope0011FailureFibreCutoffThree6 residue
  · exact tailEnvelope0011FailureFibreCutoffThree7 residue
  · exact tailEnvelope0011FailureFibreCutoffThree8 residue

theorem tailEnvelope0011FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0011FailureFibreExactThree cell residue ≤ tailEnvelope0011FailureFibreMaxThree cell := by decide

theorem tailEnvelope0011FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0011CountsThree tailEnvelope0011FailureFibreMaxThree 18838 = true := by decide

theorem tailEnvelope0011FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0011CountsThree tailEnvelope0011FailureFibreMaxThree 18919 = true := by decide

theorem tailEnvelope0011FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5281974 5308383
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5308382 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0011CountsOne) (fibre := tailEnvelope0011FailureFibreMaxOne) (bound := 18841) tailEnvelope0011FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0011CountsOne tailEnvelope0011FailureFibreMaxOne tailEnvelope0011FailureFibreExactOne
      (lower := 5281974) (upper := 5308382) (N := N) (bound := 18841)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0011FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0011FailureFibreCutoffOne
      tailEnvelope0011FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0011CountsThree) (fibre := tailEnvelope0011FailureFibreMaxThree) (bound := 18838) tailEnvelope0011FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0011CountsThree tailEnvelope0011FailureFibreMaxThree tailEnvelope0011FailureFibreExactThree
      (lower := 5281974) (upper := 5308382) (N := N) (bound := 18838)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0011FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0011FailureFibreCutoffThree
      tailEnvelope0011FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0011FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5281974 5308383
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5308382 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0011CountsOne) (fibre := tailEnvelope0011FailureFibreMaxOne) (bound := 18922) tailEnvelope0011FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0011CountsOne tailEnvelope0011FailureFibreMaxOne tailEnvelope0011FailureFibreExactOne
      (lower := 5281974) (upper := 5308382) (N := N) (bound := 18922)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0011FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0011FailureFibreCutoffOne
      tailEnvelope0011FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0011CountsThree) (fibre := tailEnvelope0011FailureFibreMaxThree) (bound := 18919) tailEnvelope0011FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0011CountsThree tailEnvelope0011FailureFibreMaxThree tailEnvelope0011FailureFibreExactThree
      (lower := 5281974) (upper := 5308382) (N := N) (bound := 18919)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0011FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0011FailureFibreCutoffThree
      tailEnvelope0011FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0012FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![73, 79, 80, 75, 80, 81, 70, 67, 75, 76, 80, 73, 73, 76, 81, 82, 74, 72, 81, 77, 73, 77, 79, 78, 71, 75, 72, 80, 84, 75, 74, 79, 74, 74, 77, 80, 74, 74, 73, 70, 73, 78, 72, 77, 71, 79, 80, 78, 80], ![71, 71, 78, 77, 74, 76, 78, 79, 78, 73, 83, 75, 74, 83, 77, 74, 77, 74, 81, 84, 76, 75, 83, 75, 70, 73, 79, 76, 77, 76, 76, 70, 72, 80, 75, 80, 73, 78, 77, 83, 79, 76, 77, 77, 77, 74, 79, 77, 74], ![72, 81, 78, 79, 73, 72, 71, 78, 76, 76, 73, 77, 67, 73, 74, 80, 73, 81, 75, 79, 73, 76, 76, 77, 78, 79, 77, 74, 76, 72, 73, 76, 77, 80, 79, 75, 75, 73, 75, 73, 78, 75, 76, 73, 73, 78, 75, 77, 74], ![71, 75, 76, 72, 74, 78, 77, 79, 78, 72, 76, 76, 77, 76, 75, 78, 76, 76, 78, 76, 80, 82, 73, 80, 79, 77, 72, 74, 75, 71, 72, 82, 83, 76, 76, 75, 75, 77, 81, 78, 84, 71, 77, 78, 79, 71, 76, 74, 78], ![78, 76, 80, 76, 77, 79, 79, 78, 79, 72, 78, 75, 80, 82, 77, 76, 73, 72, 69, 75, 73, 70, 71, 72, 78, 75, 76, 76, 76, 78, 78, 80, 81, 75, 76, 74, 78, 79, 73, 73, 72, 70, 77, 73, 75, 80, 74, 75, 79], ![79, 73, 72, 78, 83, 73, 80, 77, 75, 74, 72, 75, 82, 77, 73, 74, 79, 79, 80, 72, 83, 76, 72, 76, 76, 76, 76, 75, 73, 82, 75, 67, 79, 79, 74, 75, 84, 79, 74, 77, 71, 73, 80, 72, 79, 78, 74, 71, 77], ![82, 85, 75, 71, 79, 73, 76, 80, 69, 78, 80, 77, 81, 75, 68, 71, 81, 77, 73, 76, 73, 74, 74, 74, 79, 81, 78, 77, 75, 76, 79, 77, 73, 76, 75, 78, 73, 77, 74, 71, 73, 79, 76, 77, 70, 76, 80, 75, 73], ![79, 76, 72, 80, 76, 78, 74, 74, 78, 81, 75, 72, 75, 73, 74, 77, 80, 78, 78, 71, 77, 79, 77, 74, 72, 77, 74, 73, 72, 77, 73, 78, 80, 73, 80, 82, 72, 76, 77, 79, 73, 79, 73, 73, 77, 74, 75, 78, 81], ![73, 74, 76, 77, 73, 82, 77, 72, 75, 77, 74, 75, 76, 74, 82, 75, 78, 75, 77, 70, 79, 81, 76, 76, 77, 73, 77, 76, 78, 76, 76, 76, 71, 74, 77, 75, 75, 79, 74, 80, 77, 78, 77, 80, 76, 73, 83, 80, 72]]

def tailEnvelope0012FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![81, 77, 74, 75, 72, 76, 77, 81, 80, 80, 82, 79, 77, 72, 74, 74, 79, 76, 70, 75, 79, 68, 71, 78, 77, 80, 83, 71, 75, 78, 76, 74, 80, 79, 71, 73, 77, 78, 79, 76, 77, 80, 82, 74, 75, 73, 71, 72, 81], ![80, 76, 72, 73, 78, 78, 76, 74, 78, 74, 74, 71, 74, 80, 73, 73, 72, 80, 76, 76, 77, 73, 73, 83, 78, 79, 72, 68, 76, 78, 75, 80, 77, 77, 74, 73, 77, 76, 74, 77, 72, 76, 79, 75, 74, 76, 82, 76, 84], ![73, 72, 77, 73, 83, 84, 75, 73, 80, 74, 70, 81, 77, 79, 72, 73, 78, 73, 72, 80, 73, 80, 79, 75, 76, 82, 70, 70, 81, 78, 78, 77, 74, 73, 77, 78, 74, 77, 83, 74, 74, 77, 82, 76, 75, 79, 71, 75, 77], ![72, 75, 80, 74, 71, 77, 72, 72, 74, 80, 77, 78, 80, 81, 79, 76, 78, 76, 78, 80, 70, 77, 82, 76, 78, 73, 77, 78, 82, 76, 77, 73, 72, 77, 75, 69, 81, 72, 78, 69, 70, 77, 81, 75, 74, 76, 85, 76, 73], ![73, 79, 79, 76, 77, 74, 74, 76, 76, 78, 83, 76, 72, 75, 72, 71, 76, 80, 81, 71, 75, 79, 81, 78, 74, 77, 79, 77, 76, 72, 78, 76, 67, 76, 80, 77, 75, 75, 72, 77, 80, 77, 78, 71, 78, 69, 77, 76, 75], ![75, 76, 75, 75, 75, 78, 79, 76, 71, 76, 76, 75, 72, 75, 80, 82, 75, 73, 75, 69, 74, 73, 74, 78, 80, 74, 80, 77, 76, 79, 78, 75, 81, 81, 77, 76, 69, 73, 78, 75, 80, 75, 75, 78, 74, 76, 76, 85, 76], ![79, 78, 76, 75, 80, 76, 77, 80, 77, 76, 77, 69, 70, 80, 76, 77, 74, 73, 75, 83, 80, 77, 80, 77, 76, 70, 74, 79, 69, 71, 75, 69, 78, 72, 76, 79, 74, 73, 78, 83, 80, 76, 73, 76, 78, 78, 79, 79, 74], ![75, 76, 72, 85, 75, 76, 79, 78, 73, 73, 79, 80, 79, 73, 78, 84, 74, 71, 74, 75, 77, 74, 73, 74, 75, 74, 80, 79, 74, 76, 74, 78, 75, 76, 79, 77, 79, 79, 75, 78, 81, 71, 75, 81, 78, 79, 76, 75, 70], ![77, 79, 75, 76, 76, 74, 78, 76, 81, 74, 73, 71, 75, 77, 74, 81, 77, 76, 80, 79, 78, 75, 75, 76, 76, 76, 75, 75, 73, 72, 75, 77, 80, 71, 78, 75, 76, 76, 74, 75, 77, 77, 71, 78, 81, 76, 75, 75, 76]]

def tailEnvelope0012FailureFibreMaxOne : Fin 9 → Nat :=
  ![84, 84, 81, 84, 82, 84, 85, 82, 83]

def tailEnvelope0012FailureFibreMaxThree : Fin 9 → Nat :=
  ![83, 84, 84, 85, 83, 85, 83, 85, 81]

theorem tailEnvelope0012FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5334923 (tailEnvelope0012CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0012FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0012FailureCutoffTreeOne0Check :
    tailEnvelope0012FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0012FailureFibreExactOne 0) 5334923 0 = true := by decide

theorem tailEnvelope0012FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5334923 (tailEnvelope0012FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0012FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0012FailureCutoffTreeOne0Check

def tailEnvelope0012FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0012FailureCutoffTreeOne1Check :
    tailEnvelope0012FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0012FailureFibreExactOne 1) 5334923 0 = true := by decide

theorem tailEnvelope0012FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5334923 (tailEnvelope0012FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0012FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0012FailureCutoffTreeOne1Check

def tailEnvelope0012FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0012FailureCutoffTreeOne2Check :
    tailEnvelope0012FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0012FailureFibreExactOne 2) 5334923 0 = true := by decide

theorem tailEnvelope0012FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5334923 (tailEnvelope0012FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0012FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0012FailureCutoffTreeOne2Check

def tailEnvelope0012FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0012FailureCutoffTreeOne3Check :
    tailEnvelope0012FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0012FailureFibreExactOne 3) 5334923 0 = true := by decide

theorem tailEnvelope0012FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5334923 (tailEnvelope0012FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0012FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0012FailureCutoffTreeOne3Check

def tailEnvelope0012FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0012FailureCutoffTreeOne4Check :
    tailEnvelope0012FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0012FailureFibreExactOne 4) 5334923 0 = true := by decide

theorem tailEnvelope0012FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5334923 (tailEnvelope0012FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0012FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0012FailureCutoffTreeOne4Check

def tailEnvelope0012FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0012FailureCutoffTreeOne5Check :
    tailEnvelope0012FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0012FailureFibreExactOne 5) 5334923 0 = true := by decide

theorem tailEnvelope0012FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5334923 (tailEnvelope0012FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0012FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0012FailureCutoffTreeOne5Check

def tailEnvelope0012FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0012FailureCutoffTreeOne6Check :
    tailEnvelope0012FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0012FailureFibreExactOne 6) 5334923 0 = true := by decide

theorem tailEnvelope0012FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5334923 (tailEnvelope0012FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0012FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0012FailureCutoffTreeOne6Check

def tailEnvelope0012FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0012FailureCutoffTreeOne7Check :
    tailEnvelope0012FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0012FailureFibreExactOne 7) 5334923 0 = true := by decide

theorem tailEnvelope0012FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5334923 (tailEnvelope0012FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0012FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0012FailureCutoffTreeOne7Check

def tailEnvelope0012FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0012FailureCutoffTreeOne8Check :
    tailEnvelope0012FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0012FailureFibreExactOne 8) 5334923 0 = true := by decide

theorem tailEnvelope0012FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5334923 (tailEnvelope0012FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0012FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0012FailureCutoffTreeOne8Check

theorem tailEnvelope0012FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5334923 (tailEnvelope0012FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0012FailureFibreCutoffOne0 residue
  · exact tailEnvelope0012FailureFibreCutoffOne1 residue
  · exact tailEnvelope0012FailureFibreCutoffOne2 residue
  · exact tailEnvelope0012FailureFibreCutoffOne3 residue
  · exact tailEnvelope0012FailureFibreCutoffOne4 residue
  · exact tailEnvelope0012FailureFibreCutoffOne5 residue
  · exact tailEnvelope0012FailureFibreCutoffOne6 residue
  · exact tailEnvelope0012FailureFibreCutoffOne7 residue
  · exact tailEnvelope0012FailureFibreCutoffOne8 residue

theorem tailEnvelope0012FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0012FailureFibreExactOne cell residue ≤ tailEnvelope0012FailureFibreMaxOne cell := by decide

theorem tailEnvelope0012FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0012CountsOne tailEnvelope0012FailureFibreMaxOne 18934 = true := by decide

theorem tailEnvelope0012FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0012CountsOne tailEnvelope0012FailureFibreMaxOne 19015 = true := by decide

theorem tailEnvelope0012FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5334923 (tailEnvelope0012CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0012FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0012FailureCutoffTreeThree0Check :
    tailEnvelope0012FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0012FailureFibreExactThree 0) 5334923 0 = true := by decide

theorem tailEnvelope0012FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5334923 (tailEnvelope0012FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0012FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0012FailureCutoffTreeThree0Check

def tailEnvelope0012FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0012FailureCutoffTreeThree1Check :
    tailEnvelope0012FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0012FailureFibreExactThree 1) 5334923 0 = true := by decide

theorem tailEnvelope0012FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5334923 (tailEnvelope0012FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0012FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0012FailureCutoffTreeThree1Check

def tailEnvelope0012FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0012FailureCutoffTreeThree2Check :
    tailEnvelope0012FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0012FailureFibreExactThree 2) 5334923 0 = true := by decide

theorem tailEnvelope0012FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5334923 (tailEnvelope0012FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0012FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0012FailureCutoffTreeThree2Check

def tailEnvelope0012FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0012FailureCutoffTreeThree3Check :
    tailEnvelope0012FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0012FailureFibreExactThree 3) 5334923 0 = true := by decide

theorem tailEnvelope0012FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5334923 (tailEnvelope0012FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0012FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0012FailureCutoffTreeThree3Check

def tailEnvelope0012FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0012FailureCutoffTreeThree4Check :
    tailEnvelope0012FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0012FailureFibreExactThree 4) 5334923 0 = true := by decide

theorem tailEnvelope0012FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5334923 (tailEnvelope0012FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0012FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0012FailureCutoffTreeThree4Check

def tailEnvelope0012FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0012FailureCutoffTreeThree5Check :
    tailEnvelope0012FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0012FailureFibreExactThree 5) 5334923 0 = true := by decide

theorem tailEnvelope0012FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5334923 (tailEnvelope0012FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0012FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0012FailureCutoffTreeThree5Check

def tailEnvelope0012FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0012FailureCutoffTreeThree6Check :
    tailEnvelope0012FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0012FailureFibreExactThree 6) 5334923 0 = true := by decide

theorem tailEnvelope0012FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5334923 (tailEnvelope0012FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0012FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0012FailureCutoffTreeThree6Check

def tailEnvelope0012FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0012FailureCutoffTreeThree7Check :
    tailEnvelope0012FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0012FailureFibreExactThree 7) 5334923 0 = true := by decide

theorem tailEnvelope0012FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5334923 (tailEnvelope0012FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0012FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0012FailureCutoffTreeThree7Check

def tailEnvelope0012FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0012FailureCutoffTreeThree8Check :
    tailEnvelope0012FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0012FailureFibreExactThree 8) 5334923 0 = true := by decide

theorem tailEnvelope0012FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5334923 (tailEnvelope0012FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0012FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0012FailureCutoffTreeThree8Check

theorem tailEnvelope0012FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5334923 (tailEnvelope0012FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0012FailureFibreCutoffThree0 residue
  · exact tailEnvelope0012FailureFibreCutoffThree1 residue
  · exact tailEnvelope0012FailureFibreCutoffThree2 residue
  · exact tailEnvelope0012FailureFibreCutoffThree3 residue
  · exact tailEnvelope0012FailureFibreCutoffThree4 residue
  · exact tailEnvelope0012FailureFibreCutoffThree5 residue
  · exact tailEnvelope0012FailureFibreCutoffThree6 residue
  · exact tailEnvelope0012FailureFibreCutoffThree7 residue
  · exact tailEnvelope0012FailureFibreCutoffThree8 residue

theorem tailEnvelope0012FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0012FailureFibreExactThree cell residue ≤ tailEnvelope0012FailureFibreMaxThree cell := by decide

theorem tailEnvelope0012FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0012CountsThree tailEnvelope0012FailureFibreMaxThree 18928 = true := by decide

theorem tailEnvelope0012FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0012CountsThree tailEnvelope0012FailureFibreMaxThree 19009 = true := by decide

theorem tailEnvelope0012FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5308383 5334924
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5334923 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0012CountsOne) (fibre := tailEnvelope0012FailureFibreMaxOne) (bound := 18934) tailEnvelope0012FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0012CountsOne tailEnvelope0012FailureFibreMaxOne tailEnvelope0012FailureFibreExactOne
      (lower := 5308383) (upper := 5334923) (N := N) (bound := 18934)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0012FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0012FailureFibreCutoffOne
      tailEnvelope0012FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0012CountsThree) (fibre := tailEnvelope0012FailureFibreMaxThree) (bound := 18928) tailEnvelope0012FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0012CountsThree tailEnvelope0012FailureFibreMaxThree tailEnvelope0012FailureFibreExactThree
      (lower := 5308383) (upper := 5334923) (N := N) (bound := 18928)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0012FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0012FailureFibreCutoffThree
      tailEnvelope0012FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0012FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5308383 5334924
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5334923 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0012CountsOne) (fibre := tailEnvelope0012FailureFibreMaxOne) (bound := 19015) tailEnvelope0012FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0012CountsOne tailEnvelope0012FailureFibreMaxOne tailEnvelope0012FailureFibreExactOne
      (lower := 5308383) (upper := 5334923) (N := N) (bound := 19015)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0012FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0012FailureFibreCutoffOne
      tailEnvelope0012FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0012CountsThree) (fibre := tailEnvelope0012FailureFibreMaxThree) (bound := 19009) tailEnvelope0012FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0012CountsThree tailEnvelope0012FailureFibreMaxThree tailEnvelope0012FailureFibreExactThree
      (lower := 5308383) (upper := 5334923) (N := N) (bound := 19009)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0012FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0012FailureFibreCutoffThree
      tailEnvelope0012FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0013FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![73, 79, 80, 75, 80, 81, 70, 67, 76, 76, 80, 75, 73, 77, 82, 82, 75, 72, 81, 77, 73, 77, 79, 79, 72, 75, 72, 81, 86, 75, 75, 79, 75, 74, 77, 80, 74, 74, 74, 70, 74, 78, 74, 77, 72, 79, 81, 78, 80], ![71, 71, 79, 77, 76, 76, 79, 79, 78, 73, 83, 75, 75, 83, 78, 75, 77, 74, 81, 85, 77, 77, 84, 75, 70, 73, 79, 76, 78, 77, 77, 71, 72, 82, 75, 81, 73, 79, 77, 83, 79, 77, 77, 77, 77, 74, 79, 78, 75], ![72, 81, 79, 79, 74, 72, 72, 78, 76, 76, 76, 77, 70, 74, 74, 80, 74, 81, 76, 79, 73, 76, 76, 77, 78, 79, 77, 74, 77, 72, 73, 76, 77, 80, 79, 75, 75, 74, 75, 73, 78, 75, 77, 74, 74, 79, 75, 77, 74], ![72, 75, 78, 72, 74, 78, 77, 79, 79, 72, 76, 76, 77, 76, 75, 78, 76, 77, 78, 77, 80, 82, 73, 80, 79, 77, 72, 75, 75, 71, 73, 82, 83, 78, 76, 78, 75, 77, 81, 78, 85, 72, 77, 79, 79, 71, 76, 74, 78], ![78, 76, 81, 76, 77, 79, 79, 78, 80, 72, 79, 77, 80, 82, 77, 77, 73, 73, 69, 75, 73, 70, 71, 73, 79, 75, 77, 78, 76, 78, 78, 81, 82, 76, 77, 74, 78, 79, 73, 74, 73, 71, 77, 73, 75, 80, 74, 76, 79], ![79, 74, 72, 79, 83, 74, 80, 78, 76, 74, 72, 75, 82, 78, 73, 76, 79, 80, 80, 73, 83, 77, 73, 77, 76, 76, 76, 75, 73, 82, 75, 69, 79, 80, 74, 76, 84, 80, 74, 77, 71, 74, 80, 73, 79, 78, 74, 71, 77], ![82, 85, 75, 72, 80, 75, 77, 80, 70, 78, 80, 78, 81, 75, 68, 71, 81, 77, 73, 77, 73, 75, 75, 74, 80, 81, 79, 78, 75, 76, 79, 77, 73, 77, 75, 78, 74, 77, 74, 72, 73, 80, 76, 78, 73, 77, 81, 75, 73], ![79, 77, 72, 81, 76, 78, 74, 74, 78, 82, 75, 73, 75, 74, 74, 78, 81, 78, 78, 71, 77, 79, 77, 74, 72, 79, 74, 73, 72, 77, 73, 78, 80, 73, 80, 82, 73, 77, 77, 79, 73, 79, 74, 73, 79, 74, 77, 78, 83], ![73, 75, 76, 77, 75, 82, 78, 72, 75, 77, 74, 75, 78, 74, 82, 75, 78, 75, 77, 70, 79, 81, 76, 76, 78, 73, 78, 76, 78, 76, 76, 76, 72, 74, 78, 76, 75, 80, 74, 81, 78, 78, 78, 81, 77, 73, 83, 80, 74]]

def tailEnvelope0013FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![81, 77, 74, 76, 72, 78, 77, 81, 80, 80, 83, 79, 79, 73, 74, 74, 79, 76, 71, 75, 80, 68, 72, 78, 77, 80, 84, 71, 76, 79, 76, 74, 80, 79, 72, 74, 79, 78, 80, 76, 77, 81, 83, 74, 75, 75, 71, 72, 81], ![80, 76, 73, 74, 78, 78, 76, 74, 79, 74, 75, 71, 75, 80, 73, 73, 73, 80, 77, 76, 77, 73, 73, 83, 80, 79, 75, 69, 76, 79, 75, 80, 78, 78, 74, 73, 78, 77, 74, 77, 72, 76, 80, 75, 74, 77, 82, 76, 84], ![74, 73, 77, 73, 83, 84, 76, 73, 81, 74, 70, 81, 77, 80, 73, 73, 79, 74, 73, 80, 74, 80, 80, 75, 76, 82, 71, 70, 81, 78, 78, 77, 74, 73, 78, 79, 75, 77, 83, 75, 74, 78, 82, 76, 75, 79, 71, 76, 77], ![72, 75, 80, 74, 72, 77, 73, 72, 74, 81, 77, 79, 80, 81, 79, 76, 78, 76, 78, 80, 70, 77, 82, 76, 79, 75, 77, 79, 82, 77, 77, 74, 72, 77, 75, 69, 81, 73, 78, 70, 70, 79, 81, 78, 75, 77, 86, 76, 73], ![74, 79, 80, 76, 77, 74, 74, 76, 76, 78, 83, 76, 72, 76, 72, 71, 77, 80, 82, 72, 75, 80, 81, 78, 76, 77, 79, 78, 76, 73, 78, 76, 68, 76, 81, 78, 75, 76, 72, 77, 80, 77, 78, 72, 79, 70, 78, 76, 75], ![76, 76, 75, 75, 75, 78, 79, 77, 71, 78, 76, 77, 72, 75, 80, 82, 75, 74, 75, 70, 74, 73, 74, 79, 81, 75, 80, 78, 76, 79, 78, 75, 81, 82, 77, 76, 69, 73, 78, 75, 80, 75, 75, 78, 74, 76, 76, 85, 76], ![80, 79, 76, 75, 80, 77, 77, 80, 77, 78, 78, 69, 70, 80, 77, 78, 75, 74, 75, 83, 80, 77, 80, 78, 76, 71, 74, 79, 69, 71, 75, 69, 78, 72, 76, 79, 74, 73, 78, 83, 80, 78, 75, 76, 78, 78, 79, 80, 76], ![75, 76, 72, 85, 75, 78, 79, 80, 73, 73, 79, 80, 79, 74, 78, 85, 74, 71, 74, 75, 77, 74, 73, 75, 75, 74, 80, 79, 76, 77, 74, 78, 76, 76, 79, 77, 79, 79, 77, 78, 82, 71, 75, 81, 78, 79, 77, 75, 71], ![77, 79, 75, 77, 76, 75, 78, 76, 81, 77, 73, 71, 76, 77, 76, 81, 77, 76, 80, 79, 79, 75, 76, 77, 76, 76, 75, 75, 74, 73, 76, 78, 80, 71, 78, 75, 77, 77, 75, 75, 77, 77, 71, 78, 81, 77, 76, 76, 76]]

def tailEnvelope0013FailureFibreMaxOne : Fin 9 → Nat :=
  ![86, 85, 81, 85, 82, 84, 85, 83, 83]

def tailEnvelope0013FailureFibreMaxThree : Fin 9 → Nat :=
  ![84, 84, 84, 86, 83, 85, 83, 85, 81]

theorem tailEnvelope0013FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5361597 (tailEnvelope0013CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0013FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0013FailureCutoffTreeOne0Check :
    tailEnvelope0013FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0013FailureFibreExactOne 0) 5361597 0 = true := by decide

theorem tailEnvelope0013FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5361597 (tailEnvelope0013FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0013FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0013FailureCutoffTreeOne0Check

def tailEnvelope0013FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0013FailureCutoffTreeOne1Check :
    tailEnvelope0013FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0013FailureFibreExactOne 1) 5361597 0 = true := by decide

theorem tailEnvelope0013FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5361597 (tailEnvelope0013FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0013FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0013FailureCutoffTreeOne1Check

def tailEnvelope0013FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0013FailureCutoffTreeOne2Check :
    tailEnvelope0013FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0013FailureFibreExactOne 2) 5361597 0 = true := by decide

theorem tailEnvelope0013FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5361597 (tailEnvelope0013FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0013FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0013FailureCutoffTreeOne2Check

def tailEnvelope0013FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0013FailureCutoffTreeOne3Check :
    tailEnvelope0013FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0013FailureFibreExactOne 3) 5361597 0 = true := by decide

theorem tailEnvelope0013FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5361597 (tailEnvelope0013FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0013FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0013FailureCutoffTreeOne3Check

def tailEnvelope0013FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0013FailureCutoffTreeOne4Check :
    tailEnvelope0013FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0013FailureFibreExactOne 4) 5361597 0 = true := by decide

theorem tailEnvelope0013FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5361597 (tailEnvelope0013FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0013FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0013FailureCutoffTreeOne4Check

def tailEnvelope0013FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0013FailureCutoffTreeOne5Check :
    tailEnvelope0013FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0013FailureFibreExactOne 5) 5361597 0 = true := by decide

theorem tailEnvelope0013FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5361597 (tailEnvelope0013FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0013FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0013FailureCutoffTreeOne5Check

def tailEnvelope0013FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0013FailureCutoffTreeOne6Check :
    tailEnvelope0013FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0013FailureFibreExactOne 6) 5361597 0 = true := by decide

theorem tailEnvelope0013FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5361597 (tailEnvelope0013FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0013FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0013FailureCutoffTreeOne6Check

def tailEnvelope0013FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0013FailureCutoffTreeOne7Check :
    tailEnvelope0013FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0013FailureFibreExactOne 7) 5361597 0 = true := by decide

theorem tailEnvelope0013FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5361597 (tailEnvelope0013FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0013FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0013FailureCutoffTreeOne7Check

def tailEnvelope0013FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0013FailureCutoffTreeOne8Check :
    tailEnvelope0013FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0013FailureFibreExactOne 8) 5361597 0 = true := by decide

theorem tailEnvelope0013FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5361597 (tailEnvelope0013FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0013FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0013FailureCutoffTreeOne8Check

theorem tailEnvelope0013FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5361597 (tailEnvelope0013FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0013FailureFibreCutoffOne0 residue
  · exact tailEnvelope0013FailureFibreCutoffOne1 residue
  · exact tailEnvelope0013FailureFibreCutoffOne2 residue
  · exact tailEnvelope0013FailureFibreCutoffOne3 residue
  · exact tailEnvelope0013FailureFibreCutoffOne4 residue
  · exact tailEnvelope0013FailureFibreCutoffOne5 residue
  · exact tailEnvelope0013FailureFibreCutoffOne6 residue
  · exact tailEnvelope0013FailureFibreCutoffOne7 residue
  · exact tailEnvelope0013FailureFibreCutoffOne8 residue

theorem tailEnvelope0013FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0013FailureFibreExactOne cell residue ≤ tailEnvelope0013FailureFibreMaxOne cell := by decide

theorem tailEnvelope0013FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0013CountsOne tailEnvelope0013FailureFibreMaxOne 19032 = true := by decide

theorem tailEnvelope0013FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0013CountsOne tailEnvelope0013FailureFibreMaxOne 19113 = true := by decide

theorem tailEnvelope0013FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5361597 (tailEnvelope0013CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0013FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0013FailureCutoffTreeThree0Check :
    tailEnvelope0013FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0013FailureFibreExactThree 0) 5361597 0 = true := by decide

theorem tailEnvelope0013FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5361597 (tailEnvelope0013FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0013FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0013FailureCutoffTreeThree0Check

def tailEnvelope0013FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0013FailureCutoffTreeThree1Check :
    tailEnvelope0013FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0013FailureFibreExactThree 1) 5361597 0 = true := by decide

theorem tailEnvelope0013FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5361597 (tailEnvelope0013FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0013FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0013FailureCutoffTreeThree1Check

def tailEnvelope0013FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0013FailureCutoffTreeThree2Check :
    tailEnvelope0013FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0013FailureFibreExactThree 2) 5361597 0 = true := by decide

theorem tailEnvelope0013FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5361597 (tailEnvelope0013FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0013FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0013FailureCutoffTreeThree2Check

def tailEnvelope0013FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0013FailureCutoffTreeThree3Check :
    tailEnvelope0013FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0013FailureFibreExactThree 3) 5361597 0 = true := by decide

theorem tailEnvelope0013FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5361597 (tailEnvelope0013FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0013FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0013FailureCutoffTreeThree3Check

def tailEnvelope0013FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0013FailureCutoffTreeThree4Check :
    tailEnvelope0013FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0013FailureFibreExactThree 4) 5361597 0 = true := by decide

theorem tailEnvelope0013FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5361597 (tailEnvelope0013FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0013FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0013FailureCutoffTreeThree4Check

def tailEnvelope0013FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0013FailureCutoffTreeThree5Check :
    tailEnvelope0013FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0013FailureFibreExactThree 5) 5361597 0 = true := by decide

theorem tailEnvelope0013FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5361597 (tailEnvelope0013FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0013FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0013FailureCutoffTreeThree5Check

def tailEnvelope0013FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0013FailureCutoffTreeThree6Check :
    tailEnvelope0013FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0013FailureFibreExactThree 6) 5361597 0 = true := by decide

theorem tailEnvelope0013FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5361597 (tailEnvelope0013FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0013FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0013FailureCutoffTreeThree6Check

def tailEnvelope0013FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0013FailureCutoffTreeThree7Check :
    tailEnvelope0013FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0013FailureFibreExactThree 7) 5361597 0 = true := by decide

theorem tailEnvelope0013FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5361597 (tailEnvelope0013FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0013FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0013FailureCutoffTreeThree7Check

def tailEnvelope0013FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0013FailureCutoffTreeThree8Check :
    tailEnvelope0013FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0013FailureFibreExactThree 8) 5361597 0 = true := by decide

theorem tailEnvelope0013FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5361597 (tailEnvelope0013FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0013FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0013FailureCutoffTreeThree8Check

theorem tailEnvelope0013FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5361597 (tailEnvelope0013FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0013FailureFibreCutoffThree0 residue
  · exact tailEnvelope0013FailureFibreCutoffThree1 residue
  · exact tailEnvelope0013FailureFibreCutoffThree2 residue
  · exact tailEnvelope0013FailureFibreCutoffThree3 residue
  · exact tailEnvelope0013FailureFibreCutoffThree4 residue
  · exact tailEnvelope0013FailureFibreCutoffThree5 residue
  · exact tailEnvelope0013FailureFibreCutoffThree6 residue
  · exact tailEnvelope0013FailureFibreCutoffThree7 residue
  · exact tailEnvelope0013FailureFibreCutoffThree8 residue

theorem tailEnvelope0013FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0013FailureFibreExactThree cell residue ≤ tailEnvelope0013FailureFibreMaxThree cell := by decide

theorem tailEnvelope0013FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0013CountsThree tailEnvelope0013FailureFibreMaxThree 19021 = true := by decide

theorem tailEnvelope0013FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0013CountsThree tailEnvelope0013FailureFibreMaxThree 19102 = true := by decide

theorem tailEnvelope0013FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5334924 5361598
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5361597 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0013CountsOne) (fibre := tailEnvelope0013FailureFibreMaxOne) (bound := 19032) tailEnvelope0013FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0013CountsOne tailEnvelope0013FailureFibreMaxOne tailEnvelope0013FailureFibreExactOne
      (lower := 5334924) (upper := 5361597) (N := N) (bound := 19032)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0013FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0013FailureFibreCutoffOne
      tailEnvelope0013FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0013CountsThree) (fibre := tailEnvelope0013FailureFibreMaxThree) (bound := 19021) tailEnvelope0013FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0013CountsThree tailEnvelope0013FailureFibreMaxThree tailEnvelope0013FailureFibreExactThree
      (lower := 5334924) (upper := 5361597) (N := N) (bound := 19021)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0013FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0013FailureFibreCutoffThree
      tailEnvelope0013FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0013FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5334924 5361598
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5361597 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0013CountsOne) (fibre := tailEnvelope0013FailureFibreMaxOne) (bound := 19113) tailEnvelope0013FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0013CountsOne tailEnvelope0013FailureFibreMaxOne tailEnvelope0013FailureFibreExactOne
      (lower := 5334924) (upper := 5361597) (N := N) (bound := 19113)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0013FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0013FailureFibreCutoffOne
      tailEnvelope0013FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0013CountsThree) (fibre := tailEnvelope0013FailureFibreMaxThree) (bound := 19102) tailEnvelope0013FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0013CountsThree tailEnvelope0013FailureFibreMaxThree tailEnvelope0013FailureFibreExactThree
      (lower := 5334924) (upper := 5361597) (N := N) (bound := 19102)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0013FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0013FailureFibreCutoffThree
      tailEnvelope0013FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0014FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![73, 79, 80, 75, 80, 82, 71, 68, 76, 76, 80, 75, 73, 78, 82, 82, 75, 73, 81, 77, 73, 78, 80, 80, 72, 75, 72, 82, 86, 77, 75, 79, 75, 74, 77, 80, 76, 74, 75, 70, 74, 78, 74, 78, 72, 80, 82, 78, 81], ![72, 71, 79, 78, 77, 77, 79, 79, 78, 73, 83, 76, 75, 84, 78, 75, 77, 74, 82, 85, 78, 77, 84, 76, 70, 73, 79, 76, 81, 77, 77, 71, 72, 82, 76, 81, 75, 80, 78, 83, 79, 77, 78, 77, 78, 74, 80, 78, 75], ![73, 82, 79, 79, 76, 72, 72, 78, 76, 77, 76, 79, 71, 74, 74, 80, 74, 81, 76, 79, 73, 76, 76, 77, 78, 80, 78, 75, 78, 72, 73, 76, 77, 80, 80, 75, 76, 74, 75, 74, 78, 76, 78, 75, 75, 79, 75, 77, 74], ![73, 75, 79, 72, 74, 78, 77, 79, 79, 72, 77, 76, 77, 76, 75, 78, 77, 77, 80, 77, 80, 82, 73, 80, 80, 77, 73, 75, 75, 71, 73, 82, 85, 78, 78, 78, 77, 77, 81, 78, 86, 72, 78, 79, 79, 71, 76, 74, 79], ![80, 76, 81, 76, 77, 79, 80, 79, 80, 73, 79, 77, 80, 82, 78, 77, 74, 73, 69, 75, 73, 72, 72, 75, 80, 76, 77, 78, 76, 78, 79, 81, 83, 76, 77, 74, 78, 80, 73, 74, 73, 71, 77, 73, 77, 80, 74, 76, 79], ![80, 74, 73, 79, 84, 74, 81, 80, 77, 74, 72, 75, 82, 78, 75, 76, 80, 80, 80, 74, 84, 77, 74, 77, 76, 76, 76, 75, 73, 82, 75, 69, 79, 80, 74, 76, 85, 80, 74, 78, 71, 74, 82, 73, 79, 79, 74, 72, 77], ![83, 85, 76, 72, 81, 76, 77, 81, 70, 78, 81, 78, 82, 75, 68, 71, 81, 77, 73, 77, 73, 76, 75, 74, 80, 81, 79, 79, 75, 77, 79, 77, 73, 77, 75, 79, 74, 78, 76, 72, 74, 80, 76, 79, 73, 78, 81, 75, 73], ![80, 77, 72, 81, 76, 78, 74, 74, 78, 82, 75, 73, 76, 74, 75, 79, 81, 78, 78, 74, 77, 79, 77, 74, 73, 80, 74, 74, 72, 78, 73, 79, 80, 74, 80, 83, 73, 77, 77, 79, 73, 80, 74, 74, 79, 75, 77, 79, 83], ![73, 75, 76, 79, 75, 83, 80, 73, 75, 78, 74, 75, 78, 74, 82, 76, 79, 76, 77, 70, 80, 81, 77, 77, 78, 74, 78, 77, 78, 76, 76, 77, 73, 75, 78, 76, 76, 80, 75, 82, 78, 78, 78, 81, 77, 73, 83, 80, 74]]

def tailEnvelope0014FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![82, 78, 75, 77, 73, 78, 78, 81, 80, 81, 83, 80, 79, 73, 74, 74, 79, 78, 72, 77, 80, 69, 73, 78, 77, 81, 84, 72, 76, 79, 76, 74, 80, 79, 72, 75, 80, 78, 80, 78, 77, 81, 83, 74, 76, 75, 71, 72, 81], ![80, 77, 73, 74, 78, 78, 76, 75, 79, 75, 76, 72, 76, 80, 73, 74, 73, 81, 77, 76, 79, 73, 73, 83, 80, 79, 77, 69, 77, 79, 75, 80, 78, 78, 75, 73, 78, 77, 74, 77, 73, 76, 81, 75, 75, 77, 82, 76, 85], ![74, 74, 77, 74, 83, 86, 76, 75, 81, 74, 70, 81, 77, 80, 73, 73, 79, 75, 73, 81, 74, 80, 80, 75, 78, 82, 71, 70, 81, 78, 79, 77, 75, 73, 78, 80, 75, 77, 84, 75, 75, 78, 82, 76, 75, 79, 71, 76, 78], ![72, 75, 80, 74, 72, 77, 73, 72, 75, 81, 78, 79, 81, 81, 80, 76, 78, 76, 78, 80, 71, 77, 83, 76, 80, 77, 78, 79, 83, 77, 77, 75, 72, 77, 75, 69, 82, 75, 79, 70, 70, 79, 81, 78, 76, 78, 86, 77, 73], ![74, 80, 80, 77, 78, 74, 75, 76, 77, 79, 84, 76, 73, 77, 72, 72, 77, 81, 83, 72, 76, 80, 81, 78, 76, 77, 80, 78, 77, 73, 79, 77, 68, 77, 81, 78, 76, 76, 72, 77, 80, 77, 78, 72, 79, 70, 78, 76, 76], ![77, 76, 76, 75, 75, 81, 80, 77, 72, 78, 77, 77, 73, 75, 81, 82, 76, 74, 76, 71, 74, 73, 75, 79, 83, 76, 80, 78, 76, 79, 79, 75, 81, 82, 77, 76, 69, 73, 78, 76, 80, 77, 75, 79, 74, 76, 76, 87, 76], ![81, 79, 76, 75, 80, 77, 78, 80, 78, 79, 78, 69, 70, 81, 77, 79, 75, 74, 75, 83, 80, 77, 80, 78, 76, 71, 74, 80, 69, 71, 77, 70, 79, 73, 76, 81, 74, 73, 79, 83, 80, 79, 75, 76, 78, 78, 80, 81, 77], ![75, 76, 73, 85, 76, 78, 80, 80, 73, 73, 79, 80, 79, 75, 78, 85, 74, 71, 74, 75, 78, 75, 75, 76, 75, 74, 80, 79, 76, 78, 74, 79, 76, 76, 79, 77, 79, 81, 77, 81, 82, 72, 75, 81, 78, 80, 77, 76, 71], ![77, 79, 75, 79, 76, 76, 78, 76, 81, 77, 75, 72, 76, 78, 77, 81, 77, 76, 80, 80, 79, 76, 76, 77, 76, 76, 75, 76, 75, 74, 77, 79, 80, 71, 78, 76, 77, 77, 75, 75, 77, 77, 71, 79, 82, 77, 77, 76, 76]]

def tailEnvelope0014FailureFibreMaxOne : Fin 9 → Nat :=
  ![86, 85, 82, 86, 83, 85, 85, 83, 83]

def tailEnvelope0014FailureFibreMaxThree : Fin 9 → Nat :=
  ![84, 85, 86, 86, 84, 87, 83, 85, 82]

theorem tailEnvelope0014FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5388404 (tailEnvelope0014CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0014FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0014FailureCutoffTreeOne0Check :
    tailEnvelope0014FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0014FailureFibreExactOne 0) 5388404 0 = true := by decide

theorem tailEnvelope0014FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5388404 (tailEnvelope0014FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0014FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0014FailureCutoffTreeOne0Check

def tailEnvelope0014FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0014FailureCutoffTreeOne1Check :
    tailEnvelope0014FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0014FailureFibreExactOne 1) 5388404 0 = true := by decide

theorem tailEnvelope0014FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5388404 (tailEnvelope0014FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0014FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0014FailureCutoffTreeOne1Check

def tailEnvelope0014FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0014FailureCutoffTreeOne2Check :
    tailEnvelope0014FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0014FailureFibreExactOne 2) 5388404 0 = true := by decide

theorem tailEnvelope0014FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5388404 (tailEnvelope0014FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0014FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0014FailureCutoffTreeOne2Check

def tailEnvelope0014FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0014FailureCutoffTreeOne3Check :
    tailEnvelope0014FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0014FailureFibreExactOne 3) 5388404 0 = true := by decide

theorem tailEnvelope0014FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5388404 (tailEnvelope0014FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0014FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0014FailureCutoffTreeOne3Check

def tailEnvelope0014FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0014FailureCutoffTreeOne4Check :
    tailEnvelope0014FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0014FailureFibreExactOne 4) 5388404 0 = true := by decide

theorem tailEnvelope0014FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5388404 (tailEnvelope0014FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0014FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0014FailureCutoffTreeOne4Check

def tailEnvelope0014FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0014FailureCutoffTreeOne5Check :
    tailEnvelope0014FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0014FailureFibreExactOne 5) 5388404 0 = true := by decide

theorem tailEnvelope0014FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5388404 (tailEnvelope0014FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0014FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0014FailureCutoffTreeOne5Check

def tailEnvelope0014FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0014FailureCutoffTreeOne6Check :
    tailEnvelope0014FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0014FailureFibreExactOne 6) 5388404 0 = true := by decide

theorem tailEnvelope0014FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5388404 (tailEnvelope0014FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0014FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0014FailureCutoffTreeOne6Check

def tailEnvelope0014FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0014FailureCutoffTreeOne7Check :
    tailEnvelope0014FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0014FailureFibreExactOne 7) 5388404 0 = true := by decide

theorem tailEnvelope0014FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5388404 (tailEnvelope0014FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0014FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0014FailureCutoffTreeOne7Check

def tailEnvelope0014FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0014FailureCutoffTreeOne8Check :
    tailEnvelope0014FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0014FailureFibreExactOne 8) 5388404 0 = true := by decide

theorem tailEnvelope0014FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5388404 (tailEnvelope0014FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0014FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0014FailureCutoffTreeOne8Check

theorem tailEnvelope0014FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5388404 (tailEnvelope0014FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0014FailureFibreCutoffOne0 residue
  · exact tailEnvelope0014FailureFibreCutoffOne1 residue
  · exact tailEnvelope0014FailureFibreCutoffOne2 residue
  · exact tailEnvelope0014FailureFibreCutoffOne3 residue
  · exact tailEnvelope0014FailureFibreCutoffOne4 residue
  · exact tailEnvelope0014FailureFibreCutoffOne5 residue
  · exact tailEnvelope0014FailureFibreCutoffOne6 residue
  · exact tailEnvelope0014FailureFibreCutoffOne7 residue
  · exact tailEnvelope0014FailureFibreCutoffOne8 residue

theorem tailEnvelope0014FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0014FailureFibreExactOne cell residue ≤ tailEnvelope0014FailureFibreMaxOne cell := by decide

theorem tailEnvelope0014FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0014CountsOne tailEnvelope0014FailureFibreMaxOne 19128 = true := by decide

theorem tailEnvelope0014FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0014CountsOne tailEnvelope0014FailureFibreMaxOne 19210 = true := by decide

theorem tailEnvelope0014FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5388404 (tailEnvelope0014CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0014FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0014FailureCutoffTreeThree0Check :
    tailEnvelope0014FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0014FailureFibreExactThree 0) 5388404 0 = true := by decide

theorem tailEnvelope0014FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5388404 (tailEnvelope0014FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0014FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0014FailureCutoffTreeThree0Check

def tailEnvelope0014FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0014FailureCutoffTreeThree1Check :
    tailEnvelope0014FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0014FailureFibreExactThree 1) 5388404 0 = true := by decide

theorem tailEnvelope0014FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5388404 (tailEnvelope0014FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0014FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0014FailureCutoffTreeThree1Check

def tailEnvelope0014FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0014FailureCutoffTreeThree2Check :
    tailEnvelope0014FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0014FailureFibreExactThree 2) 5388404 0 = true := by decide

theorem tailEnvelope0014FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5388404 (tailEnvelope0014FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0014FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0014FailureCutoffTreeThree2Check

def tailEnvelope0014FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0014FailureCutoffTreeThree3Check :
    tailEnvelope0014FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0014FailureFibreExactThree 3) 5388404 0 = true := by decide

theorem tailEnvelope0014FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5388404 (tailEnvelope0014FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0014FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0014FailureCutoffTreeThree3Check

def tailEnvelope0014FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0014FailureCutoffTreeThree4Check :
    tailEnvelope0014FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0014FailureFibreExactThree 4) 5388404 0 = true := by decide

theorem tailEnvelope0014FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5388404 (tailEnvelope0014FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0014FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0014FailureCutoffTreeThree4Check

def tailEnvelope0014FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0014FailureCutoffTreeThree5Check :
    tailEnvelope0014FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0014FailureFibreExactThree 5) 5388404 0 = true := by decide

theorem tailEnvelope0014FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5388404 (tailEnvelope0014FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0014FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0014FailureCutoffTreeThree5Check

def tailEnvelope0014FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0014FailureCutoffTreeThree6Check :
    tailEnvelope0014FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0014FailureFibreExactThree 6) 5388404 0 = true := by decide

theorem tailEnvelope0014FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5388404 (tailEnvelope0014FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0014FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0014FailureCutoffTreeThree6Check

def tailEnvelope0014FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0014FailureCutoffTreeThree7Check :
    tailEnvelope0014FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0014FailureFibreExactThree 7) 5388404 0 = true := by decide

theorem tailEnvelope0014FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5388404 (tailEnvelope0014FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0014FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0014FailureCutoffTreeThree7Check

def tailEnvelope0014FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0014FailureCutoffTreeThree8Check :
    tailEnvelope0014FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0014FailureFibreExactThree 8) 5388404 0 = true := by decide

theorem tailEnvelope0014FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5388404 (tailEnvelope0014FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0014FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0014FailureCutoffTreeThree8Check

theorem tailEnvelope0014FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5388404 (tailEnvelope0014FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0014FailureFibreCutoffThree0 residue
  · exact tailEnvelope0014FailureFibreCutoffThree1 residue
  · exact tailEnvelope0014FailureFibreCutoffThree2 residue
  · exact tailEnvelope0014FailureFibreCutoffThree3 residue
  · exact tailEnvelope0014FailureFibreCutoffThree4 residue
  · exact tailEnvelope0014FailureFibreCutoffThree5 residue
  · exact tailEnvelope0014FailureFibreCutoffThree6 residue
  · exact tailEnvelope0014FailureFibreCutoffThree7 residue
  · exact tailEnvelope0014FailureFibreCutoffThree8 residue

theorem tailEnvelope0014FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0014FailureFibreExactThree cell residue ≤ tailEnvelope0014FailureFibreMaxThree cell := by decide

theorem tailEnvelope0014FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0014CountsThree tailEnvelope0014FailureFibreMaxThree 19120 = true := by decide

theorem tailEnvelope0014FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0014CountsThree tailEnvelope0014FailureFibreMaxThree 19202 = true := by decide

theorem tailEnvelope0014FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5361598 5388405
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5388404 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0014CountsOne) (fibre := tailEnvelope0014FailureFibreMaxOne) (bound := 19128) tailEnvelope0014FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0014CountsOne tailEnvelope0014FailureFibreMaxOne tailEnvelope0014FailureFibreExactOne
      (lower := 5361598) (upper := 5388404) (N := N) (bound := 19128)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0014FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0014FailureFibreCutoffOne
      tailEnvelope0014FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0014CountsThree) (fibre := tailEnvelope0014FailureFibreMaxThree) (bound := 19120) tailEnvelope0014FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0014CountsThree tailEnvelope0014FailureFibreMaxThree tailEnvelope0014FailureFibreExactThree
      (lower := 5361598) (upper := 5388404) (N := N) (bound := 19120)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0014FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0014FailureFibreCutoffThree
      tailEnvelope0014FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0014FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5361598 5388405
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5388404 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0014CountsOne) (fibre := tailEnvelope0014FailureFibreMaxOne) (bound := 19210) tailEnvelope0014FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0014CountsOne tailEnvelope0014FailureFibreMaxOne tailEnvelope0014FailureFibreExactOne
      (lower := 5361598) (upper := 5388404) (N := N) (bound := 19210)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0014FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0014FailureFibreCutoffOne
      tailEnvelope0014FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0014CountsThree) (fibre := tailEnvelope0014FailureFibreMaxThree) (bound := 19202) tailEnvelope0014FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0014CountsThree tailEnvelope0014FailureFibreMaxThree tailEnvelope0014FailureFibreExactThree
      (lower := 5361598) (upper := 5388404) (N := N) (bound := 19202)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0014FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0014FailureFibreCutoffThree
      tailEnvelope0014FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0015FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![73, 79, 80, 75, 81, 82, 72, 68, 76, 76, 81, 75, 76, 79, 83, 82, 75, 73, 81, 77, 73, 78, 81, 81, 72, 75, 73, 82, 87, 77, 77, 80, 75, 74, 77, 80, 76, 75, 75, 71, 74, 78, 75, 78, 73, 81, 82, 78, 81], ![72, 72, 79, 79, 78, 77, 79, 79, 78, 73, 83, 76, 76, 84, 78, 75, 77, 77, 82, 86, 78, 79, 84, 76, 70, 73, 79, 77, 81, 78, 77, 71, 72, 83, 76, 83, 75, 81, 78, 83, 79, 77, 78, 78, 78, 75, 80, 78, 75], ![73, 82, 79, 79, 76, 72, 72, 78, 77, 78, 76, 80, 71, 74, 74, 80, 74, 82, 76, 80, 73, 76, 76, 77, 80, 81, 79, 76, 78, 72, 73, 76, 77, 81, 80, 76, 76, 74, 75, 74, 78, 77, 78, 75, 75, 80, 75, 79, 74], ![73, 78, 79, 72, 75, 78, 77, 79, 79, 73, 77, 76, 77, 76, 75, 80, 77, 79, 81, 77, 81, 82, 74, 81, 80, 78, 74, 75, 75, 71, 73, 83, 85, 78, 80, 78, 77, 77, 81, 78, 86, 72, 78, 79, 79, 71, 76, 74, 81], ![80, 76, 81, 76, 77, 80, 80, 80, 81, 73, 79, 77, 81, 83, 78, 80, 74, 73, 69, 75, 73, 73, 73, 75, 81, 76, 77, 78, 76, 78, 79, 81, 83, 77, 77, 74, 78, 80, 75, 75, 74, 73, 77, 73, 77, 80, 75, 76, 80], ![80, 74, 74, 80, 84, 74, 81, 80, 77, 74, 72, 76, 82, 79, 75, 77, 80, 80, 80, 74, 84, 77, 74, 78, 76, 77, 76, 75, 74, 82, 77, 69, 79, 80, 74, 76, 86, 80, 75, 79, 71, 74, 82, 74, 80, 79, 76, 72, 78], ![83, 85, 76, 72, 83, 76, 79, 81, 70, 78, 81, 78, 82, 75, 68, 71, 81, 77, 74, 77, 75, 76, 75, 75, 80, 81, 80, 79, 76, 77, 79, 77, 75, 78, 77, 79, 75, 79, 76, 73, 74, 80, 77, 79, 74, 78, 81, 75, 73], ![80, 77, 73, 81, 76, 78, 74, 74, 80, 82, 75, 73, 76, 75, 75, 79, 82, 78, 79, 74, 77, 79, 77, 74, 74, 80, 75, 74, 72, 79, 74, 79, 81, 74, 81, 84, 73, 78, 77, 79, 73, 80, 75, 74, 80, 75, 78, 79, 83], ![77, 75, 77, 80, 75, 83, 81, 73, 76, 78, 74, 75, 78, 74, 82, 76, 80, 76, 77, 72, 80, 83, 78, 77, 79, 74, 78, 77, 78, 76, 76, 77, 74, 75, 78, 77, 76, 81, 76, 82, 78, 79, 78, 81, 77, 73, 83, 81, 74]]

def tailEnvelope0015FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![83, 78, 77, 77, 73, 78, 79, 81, 81, 81, 84, 80, 79, 74, 75, 74, 80, 78, 73, 77, 81, 69, 73, 78, 77, 81, 84, 72, 76, 79, 76, 74, 80, 82, 73, 76, 81, 78, 80, 78, 77, 81, 84, 75, 77, 75, 71, 72, 81], ![81, 77, 73, 74, 79, 78, 76, 75, 79, 76, 76, 73, 76, 80, 75, 74, 73, 81, 77, 76, 79, 73, 73, 84, 80, 81, 77, 69, 77, 81, 75, 81, 79, 79, 75, 73, 78, 77, 74, 78, 73, 78, 81, 75, 75, 77, 82, 77, 85], ![75, 76, 78, 74, 83, 86, 76, 77, 81, 74, 70, 81, 78, 81, 73, 75, 80, 75, 75, 81, 74, 81, 80, 76, 78, 82, 71, 70, 81, 78, 79, 78, 76, 73, 79, 80, 76, 78, 84, 77, 75, 78, 82, 76, 75, 79, 71, 76, 78], ![72, 75, 81, 75, 72, 78, 73, 73, 75, 82, 78, 80, 81, 82, 80, 76, 79, 77, 78, 81, 71, 78, 83, 76, 80, 78, 78, 80, 83, 78, 77, 76, 72, 77, 75, 69, 82, 75, 79, 70, 71, 80, 82, 79, 76, 78, 87, 77, 73], ![75, 81, 80, 78, 78, 74, 75, 76, 77, 80, 84, 77, 73, 77, 73, 72, 78, 82, 85, 73, 76, 80, 81, 78, 76, 77, 80, 78, 77, 73, 79, 77, 68, 77, 81, 78, 77, 76, 72, 78, 80, 77, 79, 72, 80, 70, 78, 77, 76], ![77, 77, 76, 75, 75, 82, 80, 79, 72, 79, 77, 78, 73, 75, 82, 82, 76, 74, 76, 71, 74, 73, 75, 79, 83, 76, 81, 78, 76, 80, 79, 75, 82, 82, 78, 76, 69, 73, 79, 76, 82, 77, 76, 79, 74, 76, 76, 88, 77], ![81, 79, 76, 75, 80, 77, 78, 80, 78, 79, 78, 69, 71, 81, 79, 79, 76, 74, 75, 83, 81, 77, 81, 78, 77, 71, 74, 80, 69, 72, 78, 71, 79, 73, 76, 81, 74, 73, 80, 83, 81, 79, 75, 77, 79, 79, 81, 82, 77], ![75, 76, 73, 86, 77, 78, 81, 80, 73, 74, 80, 80, 80, 75, 79, 85, 75, 71, 74, 75, 80, 77, 77, 76, 75, 74, 80, 79, 77, 78, 75, 79, 76, 76, 79, 77, 80, 81, 78, 82, 83, 72, 75, 81, 78, 80, 77, 76, 71], ![77, 79, 76, 79, 78, 76, 78, 76, 81, 77, 76, 72, 77, 79, 77, 81, 77, 76, 81, 80, 79, 76, 76, 77, 76, 76, 76, 78, 75, 75, 77, 80, 80, 71, 78, 76, 77, 77, 75, 75, 77, 77, 71, 81, 82, 79, 79, 76, 76]]

def tailEnvelope0015FailureFibreMaxOne : Fin 9 → Nat :=
  ![87, 86, 82, 86, 83, 86, 85, 84, 83]

def tailEnvelope0015FailureFibreMaxThree : Fin 9 → Nat :=
  ![84, 85, 86, 87, 85, 88, 83, 86, 82]

theorem tailEnvelope0015FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5415346 (tailEnvelope0015CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0015FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0015FailureCutoffTreeOne0Check :
    tailEnvelope0015FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0015FailureFibreExactOne 0) 5415346 0 = true := by decide

theorem tailEnvelope0015FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5415346 (tailEnvelope0015FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0015FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0015FailureCutoffTreeOne0Check

def tailEnvelope0015FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0015FailureCutoffTreeOne1Check :
    tailEnvelope0015FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0015FailureFibreExactOne 1) 5415346 0 = true := by decide

theorem tailEnvelope0015FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5415346 (tailEnvelope0015FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0015FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0015FailureCutoffTreeOne1Check

def tailEnvelope0015FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0015FailureCutoffTreeOne2Check :
    tailEnvelope0015FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0015FailureFibreExactOne 2) 5415346 0 = true := by decide

theorem tailEnvelope0015FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5415346 (tailEnvelope0015FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0015FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0015FailureCutoffTreeOne2Check

def tailEnvelope0015FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0015FailureCutoffTreeOne3Check :
    tailEnvelope0015FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0015FailureFibreExactOne 3) 5415346 0 = true := by decide

theorem tailEnvelope0015FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5415346 (tailEnvelope0015FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0015FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0015FailureCutoffTreeOne3Check

def tailEnvelope0015FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0015FailureCutoffTreeOne4Check :
    tailEnvelope0015FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0015FailureFibreExactOne 4) 5415346 0 = true := by decide

theorem tailEnvelope0015FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5415346 (tailEnvelope0015FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0015FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0015FailureCutoffTreeOne4Check

def tailEnvelope0015FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0015FailureCutoffTreeOne5Check :
    tailEnvelope0015FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0015FailureFibreExactOne 5) 5415346 0 = true := by decide

theorem tailEnvelope0015FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5415346 (tailEnvelope0015FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0015FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0015FailureCutoffTreeOne5Check

def tailEnvelope0015FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0015FailureCutoffTreeOne6Check :
    tailEnvelope0015FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0015FailureFibreExactOne 6) 5415346 0 = true := by decide

theorem tailEnvelope0015FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5415346 (tailEnvelope0015FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0015FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0015FailureCutoffTreeOne6Check

def tailEnvelope0015FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0015FailureCutoffTreeOne7Check :
    tailEnvelope0015FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0015FailureFibreExactOne 7) 5415346 0 = true := by decide

theorem tailEnvelope0015FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5415346 (tailEnvelope0015FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0015FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0015FailureCutoffTreeOne7Check

def tailEnvelope0015FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0015FailureCutoffTreeOne8Check :
    tailEnvelope0015FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0015FailureFibreExactOne 8) 5415346 0 = true := by decide

theorem tailEnvelope0015FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5415346 (tailEnvelope0015FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0015FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0015FailureCutoffTreeOne8Check

theorem tailEnvelope0015FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5415346 (tailEnvelope0015FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0015FailureFibreCutoffOne0 residue
  · exact tailEnvelope0015FailureFibreCutoffOne1 residue
  · exact tailEnvelope0015FailureFibreCutoffOne2 residue
  · exact tailEnvelope0015FailureFibreCutoffOne3 residue
  · exact tailEnvelope0015FailureFibreCutoffOne4 residue
  · exact tailEnvelope0015FailureFibreCutoffOne5 residue
  · exact tailEnvelope0015FailureFibreCutoffOne6 residue
  · exact tailEnvelope0015FailureFibreCutoffOne7 residue
  · exact tailEnvelope0015FailureFibreCutoffOne8 residue

theorem tailEnvelope0015FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0015FailureFibreExactOne cell residue ≤ tailEnvelope0015FailureFibreMaxOne cell := by decide

theorem tailEnvelope0015FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0015CountsOne tailEnvelope0015FailureFibreMaxOne 19224 = true := by decide

theorem tailEnvelope0015FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0015CountsOne tailEnvelope0015FailureFibreMaxOne 19306 = true := by decide

theorem tailEnvelope0015FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5415346 (tailEnvelope0015CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0015FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0015FailureCutoffTreeThree0Check :
    tailEnvelope0015FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0015FailureFibreExactThree 0) 5415346 0 = true := by decide

theorem tailEnvelope0015FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5415346 (tailEnvelope0015FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0015FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0015FailureCutoffTreeThree0Check

def tailEnvelope0015FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0015FailureCutoffTreeThree1Check :
    tailEnvelope0015FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0015FailureFibreExactThree 1) 5415346 0 = true := by decide

theorem tailEnvelope0015FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5415346 (tailEnvelope0015FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0015FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0015FailureCutoffTreeThree1Check

def tailEnvelope0015FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0015FailureCutoffTreeThree2Check :
    tailEnvelope0015FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0015FailureFibreExactThree 2) 5415346 0 = true := by decide

theorem tailEnvelope0015FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5415346 (tailEnvelope0015FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0015FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0015FailureCutoffTreeThree2Check

def tailEnvelope0015FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0015FailureCutoffTreeThree3Check :
    tailEnvelope0015FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0015FailureFibreExactThree 3) 5415346 0 = true := by decide

theorem tailEnvelope0015FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5415346 (tailEnvelope0015FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0015FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0015FailureCutoffTreeThree3Check

def tailEnvelope0015FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0015FailureCutoffTreeThree4Check :
    tailEnvelope0015FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0015FailureFibreExactThree 4) 5415346 0 = true := by decide

theorem tailEnvelope0015FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5415346 (tailEnvelope0015FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0015FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0015FailureCutoffTreeThree4Check

def tailEnvelope0015FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0015FailureCutoffTreeThree5Check :
    tailEnvelope0015FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0015FailureFibreExactThree 5) 5415346 0 = true := by decide

theorem tailEnvelope0015FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5415346 (tailEnvelope0015FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0015FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0015FailureCutoffTreeThree5Check

def tailEnvelope0015FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0015FailureCutoffTreeThree6Check :
    tailEnvelope0015FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0015FailureFibreExactThree 6) 5415346 0 = true := by decide

theorem tailEnvelope0015FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5415346 (tailEnvelope0015FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0015FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0015FailureCutoffTreeThree6Check

def tailEnvelope0015FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0015FailureCutoffTreeThree7Check :
    tailEnvelope0015FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0015FailureFibreExactThree 7) 5415346 0 = true := by decide

theorem tailEnvelope0015FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5415346 (tailEnvelope0015FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0015FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0015FailureCutoffTreeThree7Check

def tailEnvelope0015FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0015FailureCutoffTreeThree8Check :
    tailEnvelope0015FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0015FailureFibreExactThree 8) 5415346 0 = true := by decide

theorem tailEnvelope0015FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5415346 (tailEnvelope0015FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0015FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0015FailureCutoffTreeThree8Check

theorem tailEnvelope0015FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5415346 (tailEnvelope0015FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0015FailureFibreCutoffThree0 residue
  · exact tailEnvelope0015FailureFibreCutoffThree1 residue
  · exact tailEnvelope0015FailureFibreCutoffThree2 residue
  · exact tailEnvelope0015FailureFibreCutoffThree3 residue
  · exact tailEnvelope0015FailureFibreCutoffThree4 residue
  · exact tailEnvelope0015FailureFibreCutoffThree5 residue
  · exact tailEnvelope0015FailureFibreCutoffThree6 residue
  · exact tailEnvelope0015FailureFibreCutoffThree7 residue
  · exact tailEnvelope0015FailureFibreCutoffThree8 residue

theorem tailEnvelope0015FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0015FailureFibreExactThree cell residue ≤ tailEnvelope0015FailureFibreMaxThree cell := by decide

theorem tailEnvelope0015FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0015CountsThree tailEnvelope0015FailureFibreMaxThree 19221 = true := by decide

theorem tailEnvelope0015FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0015CountsThree tailEnvelope0015FailureFibreMaxThree 19303 = true := by decide

theorem tailEnvelope0015FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5388405 5415347
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5415346 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0015CountsOne) (fibre := tailEnvelope0015FailureFibreMaxOne) (bound := 19224) tailEnvelope0015FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0015CountsOne tailEnvelope0015FailureFibreMaxOne tailEnvelope0015FailureFibreExactOne
      (lower := 5388405) (upper := 5415346) (N := N) (bound := 19224)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0015FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0015FailureFibreCutoffOne
      tailEnvelope0015FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0015CountsThree) (fibre := tailEnvelope0015FailureFibreMaxThree) (bound := 19221) tailEnvelope0015FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0015CountsThree tailEnvelope0015FailureFibreMaxThree tailEnvelope0015FailureFibreExactThree
      (lower := 5388405) (upper := 5415346) (N := N) (bound := 19221)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0015FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0015FailureFibreCutoffThree
      tailEnvelope0015FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0015FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5388405 5415347
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5415346 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0015CountsOne) (fibre := tailEnvelope0015FailureFibreMaxOne) (bound := 19306) tailEnvelope0015FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0015CountsOne tailEnvelope0015FailureFibreMaxOne tailEnvelope0015FailureFibreExactOne
      (lower := 5388405) (upper := 5415346) (N := N) (bound := 19306)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0015FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0015FailureFibreCutoffOne
      tailEnvelope0015FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0015CountsThree) (fibre := tailEnvelope0015FailureFibreMaxThree) (bound := 19303) tailEnvelope0015FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0015CountsThree tailEnvelope0015FailureFibreMaxThree tailEnvelope0015FailureFibreExactThree
      (lower := 5388405) (upper := 5415346) (N := N) (bound := 19303)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0015FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0015FailureFibreCutoffThree
      tailEnvelope0015FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
end Erdos848.GeneratedTailDiagonalCoverage
