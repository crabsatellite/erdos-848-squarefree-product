import Erdos848.GeneratedTailDiagonalCoverage.TailEnvelopeBlock0001
import Erdos848.GeneratedTailDiagonalCoverage.TailFailureFibreAggregate
import Erdos848.TailDiagonalCapacityFailureScalar

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailEnvelope0016FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![73, 79, 80, 76, 81, 82, 72, 68, 76, 77, 81, 76, 76, 79, 83, 82, 75, 73, 82, 77, 74, 78, 82, 81, 74, 76, 73, 83, 88, 77, 78, 80, 75, 74, 77, 80, 78, 75, 76, 72, 74, 78, 75, 78, 74, 81, 83, 78, 81], ![73, 73, 80, 79, 78, 77, 79, 79, 78, 73, 84, 78, 77, 84, 78, 75, 78, 77, 84, 86, 79, 79, 84, 76, 70, 73, 80, 78, 82, 78, 77, 71, 73, 83, 78, 83, 76, 81, 78, 83, 79, 77, 78, 79, 78, 75, 80, 78, 75], ![74, 82, 81, 79, 77, 72, 73, 79, 78, 79, 79, 80, 71, 74, 74, 80, 75, 82, 77, 80, 73, 76, 76, 78, 81, 82, 80, 76, 78, 73, 73, 76, 77, 81, 80, 76, 76, 74, 76, 74, 79, 79, 79, 76, 75, 80, 75, 79, 75], ![73, 78, 79, 72, 75, 78, 78, 79, 80, 73, 78, 76, 77, 76, 78, 80, 79, 79, 81, 78, 81, 82, 74, 81, 80, 78, 74, 75, 77, 72, 73, 84, 85, 79, 80, 78, 77, 77, 81, 79, 86, 73, 78, 79, 79, 71, 76, 75, 81], ![80, 76, 81, 76, 77, 81, 81, 81, 81, 75, 79, 77, 81, 83, 78, 80, 74, 73, 69, 75, 73, 73, 73, 76, 81, 76, 77, 78, 76, 79, 79, 82, 83, 77, 78, 74, 78, 81, 76, 76, 75, 73, 77, 73, 77, 81, 75, 77, 80], ![80, 74, 74, 80, 84, 74, 81, 80, 77, 75, 72, 76, 83, 80, 76, 78, 80, 80, 80, 75, 84, 78, 74, 78, 76, 77, 76, 76, 74, 84, 77, 70, 79, 80, 74, 77, 86, 80, 75, 79, 71, 74, 82, 75, 80, 82, 76, 73, 78], ![83, 86, 76, 74, 83, 78, 79, 81, 70, 78, 81, 79, 82, 75, 69, 71, 81, 78, 74, 78, 76, 76, 75, 76, 80, 82, 82, 80, 76, 77, 79, 78, 75, 79, 77, 79, 76, 79, 77, 75, 74, 80, 77, 79, 74, 78, 81, 75, 73], ![80, 78, 73, 81, 76, 79, 74, 75, 80, 83, 75, 74, 76, 77, 76, 80, 82, 80, 79, 74, 78, 79, 77, 75, 74, 80, 75, 75, 72, 80, 74, 79, 81, 75, 82, 84, 73, 78, 77, 79, 74, 80, 75, 75, 80, 77, 78, 79, 84], ![77, 75, 77, 80, 77, 84, 81, 75, 76, 78, 74, 75, 78, 75, 82, 76, 80, 76, 77, 72, 81, 83, 79, 77, 79, 74, 78, 77, 79, 76, 77, 77, 75, 75, 79, 77, 77, 81, 77, 82, 79, 79, 78, 83, 77, 73, 83, 81, 75]]

def tailEnvelope0016FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![83, 79, 77, 78, 73, 78, 79, 81, 82, 81, 84, 80, 80, 74, 75, 74, 81, 79, 74, 78, 81, 69, 73, 78, 77, 81, 85, 74, 76, 79, 77, 74, 81, 83, 74, 77, 81, 79, 80, 78, 78, 81, 85, 75, 77, 75, 71, 72, 82], ![81, 77, 73, 74, 79, 78, 77, 75, 83, 76, 77, 73, 76, 80, 76, 74, 75, 81, 77, 76, 79, 73, 74, 85, 82, 81, 78, 69, 77, 81, 76, 81, 80, 79, 75, 73, 79, 77, 75, 78, 73, 78, 81, 76, 75, 77, 82, 77, 85], ![75, 77, 78, 74, 84, 86, 77, 77, 81, 74, 70, 81, 79, 81, 74, 76, 81, 75, 75, 81, 75, 81, 80, 76, 78, 82, 71, 70, 82, 78, 79, 78, 76, 73, 79, 80, 76, 78, 84, 78, 76, 78, 82, 76, 77, 80, 71, 77, 79], ![72, 75, 82, 75, 73, 78, 74, 73, 76, 82, 79, 80, 82, 83, 80, 76, 79, 77, 79, 81, 71, 79, 84, 76, 80, 80, 79, 80, 83, 78, 77, 76, 72, 77, 75, 71, 82, 76, 79, 71, 71, 81, 82, 80, 76, 79, 87, 78, 73], ![76, 81, 81, 78, 78, 74, 75, 76, 78, 81, 84, 77, 75, 77, 74, 73, 78, 82, 85, 73, 76, 80, 81, 78, 76, 78, 80, 78, 77, 73, 80, 78, 69, 78, 81, 79, 77, 77, 72, 78, 80, 78, 79, 73, 80, 71, 79, 77, 77], ![77, 77, 77, 75, 77, 82, 81, 79, 72, 79, 77, 78, 73, 75, 82, 83, 76, 75, 76, 71, 76, 75, 75, 81, 83, 77, 81, 78, 76, 80, 79, 77, 82, 83, 78, 76, 69, 74, 79, 78, 82, 78, 78, 79, 74, 76, 76, 88, 78], ![81, 79, 76, 75, 80, 78, 78, 81, 79, 79, 79, 70, 71, 82, 79, 79, 76, 74, 75, 83, 82, 78, 81, 79, 77, 71, 74, 80, 71, 75, 80, 73, 79, 73, 76, 81, 74, 73, 80, 83, 81, 79, 75, 77, 80, 79, 82, 82, 78], ![75, 76, 73, 88, 77, 79, 81, 80, 73, 74, 82, 81, 80, 76, 79, 85, 75, 71, 74, 76, 80, 80, 77, 76, 75, 74, 80, 79, 77, 78, 75, 79, 76, 76, 79, 78, 80, 82, 79, 82, 83, 72, 75, 82, 79, 80, 78, 76, 71], ![77, 80, 76, 80, 78, 76, 78, 76, 81, 78, 77, 73, 78, 79, 77, 81, 77, 76, 81, 80, 79, 76, 76, 77, 76, 76, 77, 78, 77, 75, 77, 80, 80, 72, 79, 76, 78, 77, 75, 75, 77, 77, 73, 81, 83, 79, 79, 76, 76]]

def tailEnvelope0016FailureFibreMaxOne : Fin 9 → Nat :=
  ![88, 86, 82, 86, 83, 86, 86, 84, 84]

def tailEnvelope0016FailureFibreMaxThree : Fin 9 → Nat :=
  ![85, 85, 86, 87, 85, 88, 83, 88, 83]

theorem tailEnvelope0016FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5442422 (tailEnvelope0016CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0016FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0016FailureCutoffTreeOne0Check :
    tailEnvelope0016FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0016FailureFibreExactOne 0) 5442422 0 = true := by decide

theorem tailEnvelope0016FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5442422 (tailEnvelope0016FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0016FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0016FailureCutoffTreeOne0Check

def tailEnvelope0016FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0016FailureCutoffTreeOne1Check :
    tailEnvelope0016FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0016FailureFibreExactOne 1) 5442422 0 = true := by decide

theorem tailEnvelope0016FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5442422 (tailEnvelope0016FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0016FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0016FailureCutoffTreeOne1Check

def tailEnvelope0016FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0016FailureCutoffTreeOne2Check :
    tailEnvelope0016FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0016FailureFibreExactOne 2) 5442422 0 = true := by decide

theorem tailEnvelope0016FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5442422 (tailEnvelope0016FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0016FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0016FailureCutoffTreeOne2Check

def tailEnvelope0016FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0016FailureCutoffTreeOne3Check :
    tailEnvelope0016FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0016FailureFibreExactOne 3) 5442422 0 = true := by decide

theorem tailEnvelope0016FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5442422 (tailEnvelope0016FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0016FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0016FailureCutoffTreeOne3Check

def tailEnvelope0016FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0016FailureCutoffTreeOne4Check :
    tailEnvelope0016FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0016FailureFibreExactOne 4) 5442422 0 = true := by decide

theorem tailEnvelope0016FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5442422 (tailEnvelope0016FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0016FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0016FailureCutoffTreeOne4Check

def tailEnvelope0016FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0016FailureCutoffTreeOne5Check :
    tailEnvelope0016FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0016FailureFibreExactOne 5) 5442422 0 = true := by decide

theorem tailEnvelope0016FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5442422 (tailEnvelope0016FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0016FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0016FailureCutoffTreeOne5Check

def tailEnvelope0016FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0016FailureCutoffTreeOne6Check :
    tailEnvelope0016FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0016FailureFibreExactOne 6) 5442422 0 = true := by decide

theorem tailEnvelope0016FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5442422 (tailEnvelope0016FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0016FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0016FailureCutoffTreeOne6Check

def tailEnvelope0016FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0016FailureCutoffTreeOne7Check :
    tailEnvelope0016FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0016FailureFibreExactOne 7) 5442422 0 = true := by decide

theorem tailEnvelope0016FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5442422 (tailEnvelope0016FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0016FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0016FailureCutoffTreeOne7Check

def tailEnvelope0016FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0016FailureCutoffTreeOne8Check :
    tailEnvelope0016FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0016FailureFibreExactOne 8) 5442422 0 = true := by decide

theorem tailEnvelope0016FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5442422 (tailEnvelope0016FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0016FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0016FailureCutoffTreeOne8Check

theorem tailEnvelope0016FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5442422 (tailEnvelope0016FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0016FailureFibreCutoffOne0 residue
  · exact tailEnvelope0016FailureFibreCutoffOne1 residue
  · exact tailEnvelope0016FailureFibreCutoffOne2 residue
  · exact tailEnvelope0016FailureFibreCutoffOne3 residue
  · exact tailEnvelope0016FailureFibreCutoffOne4 residue
  · exact tailEnvelope0016FailureFibreCutoffOne5 residue
  · exact tailEnvelope0016FailureFibreCutoffOne6 residue
  · exact tailEnvelope0016FailureFibreCutoffOne7 residue
  · exact tailEnvelope0016FailureFibreCutoffOne8 residue

theorem tailEnvelope0016FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0016FailureFibreExactOne cell residue ≤ tailEnvelope0016FailureFibreMaxOne cell := by decide

theorem tailEnvelope0016FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0016CountsOne tailEnvelope0016FailureFibreMaxOne 19318 = true := by decide

theorem tailEnvelope0016FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0016CountsOne tailEnvelope0016FailureFibreMaxOne 19400 = true := by decide

theorem tailEnvelope0016FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5442422 (tailEnvelope0016CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0016FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0016FailureCutoffTreeThree0Check :
    tailEnvelope0016FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0016FailureFibreExactThree 0) 5442422 0 = true := by decide

theorem tailEnvelope0016FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5442422 (tailEnvelope0016FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0016FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0016FailureCutoffTreeThree0Check

def tailEnvelope0016FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0016FailureCutoffTreeThree1Check :
    tailEnvelope0016FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0016FailureFibreExactThree 1) 5442422 0 = true := by decide

theorem tailEnvelope0016FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5442422 (tailEnvelope0016FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0016FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0016FailureCutoffTreeThree1Check

def tailEnvelope0016FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0016FailureCutoffTreeThree2Check :
    tailEnvelope0016FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0016FailureFibreExactThree 2) 5442422 0 = true := by decide

theorem tailEnvelope0016FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5442422 (tailEnvelope0016FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0016FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0016FailureCutoffTreeThree2Check

def tailEnvelope0016FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0016FailureCutoffTreeThree3Check :
    tailEnvelope0016FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0016FailureFibreExactThree 3) 5442422 0 = true := by decide

theorem tailEnvelope0016FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5442422 (tailEnvelope0016FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0016FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0016FailureCutoffTreeThree3Check

def tailEnvelope0016FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0016FailureCutoffTreeThree4Check :
    tailEnvelope0016FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0016FailureFibreExactThree 4) 5442422 0 = true := by decide

theorem tailEnvelope0016FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5442422 (tailEnvelope0016FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0016FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0016FailureCutoffTreeThree4Check

def tailEnvelope0016FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0016FailureCutoffTreeThree5Check :
    tailEnvelope0016FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0016FailureFibreExactThree 5) 5442422 0 = true := by decide

theorem tailEnvelope0016FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5442422 (tailEnvelope0016FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0016FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0016FailureCutoffTreeThree5Check

def tailEnvelope0016FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0016FailureCutoffTreeThree6Check :
    tailEnvelope0016FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0016FailureFibreExactThree 6) 5442422 0 = true := by decide

theorem tailEnvelope0016FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5442422 (tailEnvelope0016FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0016FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0016FailureCutoffTreeThree6Check

def tailEnvelope0016FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0016FailureCutoffTreeThree7Check :
    tailEnvelope0016FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0016FailureFibreExactThree 7) 5442422 0 = true := by decide

theorem tailEnvelope0016FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5442422 (tailEnvelope0016FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0016FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0016FailureCutoffTreeThree7Check

def tailEnvelope0016FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0016FailureCutoffTreeThree8Check :
    tailEnvelope0016FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0016FailureFibreExactThree 8) 5442422 0 = true := by decide

theorem tailEnvelope0016FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5442422 (tailEnvelope0016FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0016FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0016FailureCutoffTreeThree8Check

theorem tailEnvelope0016FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5442422 (tailEnvelope0016FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0016FailureFibreCutoffThree0 residue
  · exact tailEnvelope0016FailureFibreCutoffThree1 residue
  · exact tailEnvelope0016FailureFibreCutoffThree2 residue
  · exact tailEnvelope0016FailureFibreCutoffThree3 residue
  · exact tailEnvelope0016FailureFibreCutoffThree4 residue
  · exact tailEnvelope0016FailureFibreCutoffThree5 residue
  · exact tailEnvelope0016FailureFibreCutoffThree6 residue
  · exact tailEnvelope0016FailureFibreCutoffThree7 residue
  · exact tailEnvelope0016FailureFibreCutoffThree8 residue

theorem tailEnvelope0016FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0016FailureFibreExactThree cell residue ≤ tailEnvelope0016FailureFibreMaxThree cell := by decide

theorem tailEnvelope0016FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0016CountsThree tailEnvelope0016FailureFibreMaxThree 19316 = true := by decide

theorem tailEnvelope0016FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0016CountsThree tailEnvelope0016FailureFibreMaxThree 19399 = true := by decide

theorem tailEnvelope0016FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5415347 5442423
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5442422 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0016CountsOne) (fibre := tailEnvelope0016FailureFibreMaxOne) (bound := 19318) tailEnvelope0016FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0016CountsOne tailEnvelope0016FailureFibreMaxOne tailEnvelope0016FailureFibreExactOne
      (lower := 5415347) (upper := 5442422) (N := N) (bound := 19318)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0016FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0016FailureFibreCutoffOne
      tailEnvelope0016FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0016CountsThree) (fibre := tailEnvelope0016FailureFibreMaxThree) (bound := 19316) tailEnvelope0016FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0016CountsThree tailEnvelope0016FailureFibreMaxThree tailEnvelope0016FailureFibreExactThree
      (lower := 5415347) (upper := 5442422) (N := N) (bound := 19316)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0016FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0016FailureFibreCutoffThree
      tailEnvelope0016FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0016FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5415347 5442423
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5442422 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0016CountsOne) (fibre := tailEnvelope0016FailureFibreMaxOne) (bound := 19400) tailEnvelope0016FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0016CountsOne tailEnvelope0016FailureFibreMaxOne tailEnvelope0016FailureFibreExactOne
      (lower := 5415347) (upper := 5442422) (N := N) (bound := 19400)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0016FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0016FailureFibreCutoffOne
      tailEnvelope0016FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0016CountsThree) (fibre := tailEnvelope0016FailureFibreMaxThree) (bound := 19399) tailEnvelope0016FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0016CountsThree tailEnvelope0016FailureFibreMaxThree tailEnvelope0016FailureFibreExactThree
      (lower := 5415347) (upper := 5442422) (N := N) (bound := 19399)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0016FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0016FailureFibreCutoffThree
      tailEnvelope0016FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0017FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![73, 79, 80, 77, 81, 83, 72, 68, 77, 77, 82, 77, 76, 80, 83, 82, 75, 75, 82, 78, 74, 79, 82, 81, 75, 76, 74, 84, 88, 78, 78, 80, 75, 74, 77, 81, 78, 76, 76, 72, 74, 79, 75, 79, 74, 81, 84, 78, 81], ![73, 75, 80, 80, 78, 79, 79, 79, 79, 74, 84, 80, 77, 84, 78, 76, 78, 79, 84, 87, 79, 79, 84, 76, 70, 74, 80, 78, 82, 79, 78, 71, 73, 83, 78, 83, 76, 81, 78, 83, 82, 77, 79, 80, 78, 75, 80, 78, 76], ![75, 83, 81, 79, 77, 72, 74, 80, 79, 80, 79, 80, 72, 75, 74, 81, 75, 82, 77, 80, 73, 76, 76, 78, 81, 82, 80, 76, 78, 73, 73, 76, 78, 81, 81, 78, 76, 74, 76, 75, 81, 80, 80, 76, 75, 80, 75, 79, 75], ![73, 78, 80, 72, 75, 79, 78, 79, 80, 73, 78, 76, 77, 77, 78, 81, 79, 79, 81, 78, 81, 82, 77, 82, 81, 78, 74, 75, 77, 72, 75, 85, 86, 79, 80, 78, 77, 77, 82, 79, 87, 73, 78, 79, 79, 71, 78, 75, 83], ![80, 76, 81, 78, 79, 82, 82, 81, 81, 75, 79, 77, 82, 84, 79, 80, 74, 73, 69, 75, 74, 74, 74, 77, 81, 77, 77, 78, 77, 79, 80, 82, 83, 77, 79, 74, 78, 82, 77, 76, 76, 73, 77, 73, 78, 81, 75, 77, 80], ![80, 74, 75, 80, 85, 74, 81, 80, 77, 75, 73, 76, 84, 80, 77, 78, 80, 80, 81, 75, 85, 78, 74, 78, 77, 78, 77, 76, 76, 85, 78, 70, 79, 80, 74, 77, 86, 80, 75, 80, 71, 74, 82, 75, 81, 83, 77, 73, 79], ![84, 86, 77, 74, 83, 78, 79, 82, 71, 78, 82, 79, 82, 75, 69, 72, 82, 78, 75, 79, 78, 77, 75, 77, 80, 82, 82, 80, 76, 77, 79, 78, 75, 79, 77, 80, 76, 80, 77, 75, 75, 80, 77, 80, 74, 78, 81, 75, 73], ![81, 78, 73, 81, 77, 80, 75, 75, 81, 83, 76, 74, 76, 77, 76, 80, 82, 80, 79, 74, 78, 79, 77, 75, 74, 81, 76, 75, 73, 80, 74, 80, 81, 76, 82, 84, 73, 78, 77, 80, 74, 81, 76, 75, 80, 77, 78, 81, 84], ![77, 76, 77, 81, 77, 84, 81, 75, 76, 78, 74, 75, 78, 75, 82, 77, 80, 77, 77, 73, 81, 84, 79, 78, 79, 74, 78, 77, 80, 77, 77, 78, 75, 76, 79, 78, 77, 83, 77, 82, 79, 79, 78, 83, 77, 74, 83, 82, 75]]

def tailEnvelope0017FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![84, 79, 78, 78, 73, 78, 79, 82, 82, 82, 84, 80, 80, 74, 75, 76, 82, 80, 75, 78, 81, 71, 73, 79, 77, 82, 85, 74, 76, 79, 77, 75, 82, 84, 74, 77, 81, 79, 80, 79, 78, 82, 85, 77, 77, 75, 71, 72, 82], ![81, 77, 73, 74, 80, 80, 78, 78, 83, 77, 77, 73, 76, 81, 76, 75, 75, 81, 77, 76, 79, 73, 75, 86, 82, 82, 79, 69, 78, 81, 76, 81, 80, 79, 75, 73, 79, 77, 75, 78, 74, 78, 82, 77, 75, 77, 83, 77, 86], ![76, 77, 78, 75, 84, 86, 77, 77, 81, 74, 70, 82, 79, 82, 75, 76, 83, 75, 75, 81, 75, 81, 80, 76, 78, 82, 71, 70, 82, 78, 80, 79, 76, 75, 79, 80, 77, 79, 87, 78, 76, 78, 82, 76, 78, 80, 73, 78, 79], ![72, 76, 82, 76, 74, 79, 74, 73, 76, 82, 79, 80, 83, 83, 80, 76, 79, 77, 79, 84, 72, 79, 84, 76, 81, 80, 79, 80, 84, 78, 77, 76, 72, 77, 76, 71, 83, 76, 80, 71, 72, 81, 83, 80, 77, 79, 87, 78, 73], ![76, 81, 81, 78, 78, 74, 77, 76, 78, 81, 84, 77, 75, 77, 74, 73, 79, 82, 86, 73, 76, 80, 81, 78, 77, 79, 81, 78, 77, 75, 80, 79, 71, 78, 82, 79, 77, 77, 72, 78, 81, 78, 80, 73, 80, 72, 79, 79, 77], ![78, 77, 77, 75, 77, 83, 82, 79, 73, 79, 78, 78, 73, 75, 82, 83, 77, 75, 76, 71, 77, 75, 77, 81, 84, 78, 81, 78, 76, 80, 80, 77, 82, 83, 78, 76, 72, 74, 80, 78, 82, 78, 79, 79, 74, 76, 76, 89, 78], ![81, 79, 76, 75, 81, 78, 79, 81, 79, 79, 79, 71, 72, 83, 80, 79, 76, 74, 75, 83, 84, 78, 81, 81, 77, 71, 74, 81, 71, 76, 80, 73, 79, 73, 77, 81, 74, 74, 80, 85, 81, 79, 75, 78, 80, 81, 82, 83, 79], ![75, 76, 75, 88, 81, 79, 81, 80, 73, 75, 83, 82, 80, 76, 79, 85, 75, 71, 75, 76, 81, 80, 77, 76, 75, 74, 80, 81, 77, 79, 75, 79, 76, 76, 80, 79, 81, 83, 79, 82, 83, 72, 77, 83, 79, 81, 78, 76, 71], ![78, 80, 76, 80, 79, 76, 78, 76, 81, 79, 77, 74, 78, 79, 77, 81, 77, 78, 81, 81, 79, 76, 76, 77, 76, 78, 77, 80, 77, 75, 77, 80, 81, 73, 79, 77, 78, 77, 75, 75, 79, 78, 73, 82, 83, 79, 80, 77, 76]]

def tailEnvelope0017FailureFibreMaxOne : Fin 9 → Nat :=
  ![88, 87, 83, 87, 84, 86, 86, 84, 84]

def tailEnvelope0017FailureFibreMaxThree : Fin 9 → Nat :=
  ![85, 86, 87, 87, 86, 89, 85, 88, 83]

theorem tailEnvelope0017FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5469634 (tailEnvelope0017CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0017FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0017FailureCutoffTreeOne0Check :
    tailEnvelope0017FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0017FailureFibreExactOne 0) 5469634 0 = true := by decide

theorem tailEnvelope0017FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5469634 (tailEnvelope0017FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0017FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0017FailureCutoffTreeOne0Check

def tailEnvelope0017FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0017FailureCutoffTreeOne1Check :
    tailEnvelope0017FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0017FailureFibreExactOne 1) 5469634 0 = true := by decide

theorem tailEnvelope0017FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5469634 (tailEnvelope0017FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0017FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0017FailureCutoffTreeOne1Check

def tailEnvelope0017FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0017FailureCutoffTreeOne2Check :
    tailEnvelope0017FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0017FailureFibreExactOne 2) 5469634 0 = true := by decide

theorem tailEnvelope0017FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5469634 (tailEnvelope0017FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0017FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0017FailureCutoffTreeOne2Check

def tailEnvelope0017FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0017FailureCutoffTreeOne3Check :
    tailEnvelope0017FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0017FailureFibreExactOne 3) 5469634 0 = true := by decide

theorem tailEnvelope0017FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5469634 (tailEnvelope0017FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0017FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0017FailureCutoffTreeOne3Check

def tailEnvelope0017FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0017FailureCutoffTreeOne4Check :
    tailEnvelope0017FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0017FailureFibreExactOne 4) 5469634 0 = true := by decide

theorem tailEnvelope0017FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5469634 (tailEnvelope0017FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0017FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0017FailureCutoffTreeOne4Check

def tailEnvelope0017FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0017FailureCutoffTreeOne5Check :
    tailEnvelope0017FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0017FailureFibreExactOne 5) 5469634 0 = true := by decide

theorem tailEnvelope0017FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5469634 (tailEnvelope0017FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0017FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0017FailureCutoffTreeOne5Check

def tailEnvelope0017FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0017FailureCutoffTreeOne6Check :
    tailEnvelope0017FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0017FailureFibreExactOne 6) 5469634 0 = true := by decide

theorem tailEnvelope0017FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5469634 (tailEnvelope0017FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0017FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0017FailureCutoffTreeOne6Check

def tailEnvelope0017FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0017FailureCutoffTreeOne7Check :
    tailEnvelope0017FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0017FailureFibreExactOne 7) 5469634 0 = true := by decide

theorem tailEnvelope0017FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5469634 (tailEnvelope0017FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0017FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0017FailureCutoffTreeOne7Check

def tailEnvelope0017FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0017FailureCutoffTreeOne8Check :
    tailEnvelope0017FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0017FailureFibreExactOne 8) 5469634 0 = true := by decide

theorem tailEnvelope0017FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5469634 (tailEnvelope0017FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0017FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0017FailureCutoffTreeOne8Check

theorem tailEnvelope0017FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5469634 (tailEnvelope0017FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0017FailureFibreCutoffOne0 residue
  · exact tailEnvelope0017FailureFibreCutoffOne1 residue
  · exact tailEnvelope0017FailureFibreCutoffOne2 residue
  · exact tailEnvelope0017FailureFibreCutoffOne3 residue
  · exact tailEnvelope0017FailureFibreCutoffOne4 residue
  · exact tailEnvelope0017FailureFibreCutoffOne5 residue
  · exact tailEnvelope0017FailureFibreCutoffOne6 residue
  · exact tailEnvelope0017FailureFibreCutoffOne7 residue
  · exact tailEnvelope0017FailureFibreCutoffOne8 residue

theorem tailEnvelope0017FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0017FailureFibreExactOne cell residue ≤ tailEnvelope0017FailureFibreMaxOne cell := by decide

theorem tailEnvelope0017FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0017CountsOne tailEnvelope0017FailureFibreMaxOne 19411 = true := by decide

theorem tailEnvelope0017FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0017CountsOne tailEnvelope0017FailureFibreMaxOne 19494 = true := by decide

theorem tailEnvelope0017FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5469634 (tailEnvelope0017CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0017FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0017FailureCutoffTreeThree0Check :
    tailEnvelope0017FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0017FailureFibreExactThree 0) 5469634 0 = true := by decide

theorem tailEnvelope0017FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5469634 (tailEnvelope0017FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0017FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0017FailureCutoffTreeThree0Check

def tailEnvelope0017FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0017FailureCutoffTreeThree1Check :
    tailEnvelope0017FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0017FailureFibreExactThree 1) 5469634 0 = true := by decide

theorem tailEnvelope0017FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5469634 (tailEnvelope0017FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0017FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0017FailureCutoffTreeThree1Check

def tailEnvelope0017FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0017FailureCutoffTreeThree2Check :
    tailEnvelope0017FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0017FailureFibreExactThree 2) 5469634 0 = true := by decide

theorem tailEnvelope0017FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5469634 (tailEnvelope0017FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0017FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0017FailureCutoffTreeThree2Check

def tailEnvelope0017FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0017FailureCutoffTreeThree3Check :
    tailEnvelope0017FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0017FailureFibreExactThree 3) 5469634 0 = true := by decide

theorem tailEnvelope0017FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5469634 (tailEnvelope0017FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0017FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0017FailureCutoffTreeThree3Check

def tailEnvelope0017FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0017FailureCutoffTreeThree4Check :
    tailEnvelope0017FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0017FailureFibreExactThree 4) 5469634 0 = true := by decide

theorem tailEnvelope0017FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5469634 (tailEnvelope0017FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0017FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0017FailureCutoffTreeThree4Check

def tailEnvelope0017FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0017FailureCutoffTreeThree5Check :
    tailEnvelope0017FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0017FailureFibreExactThree 5) 5469634 0 = true := by decide

theorem tailEnvelope0017FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5469634 (tailEnvelope0017FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0017FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0017FailureCutoffTreeThree5Check

def tailEnvelope0017FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0017FailureCutoffTreeThree6Check :
    tailEnvelope0017FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0017FailureFibreExactThree 6) 5469634 0 = true := by decide

theorem tailEnvelope0017FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5469634 (tailEnvelope0017FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0017FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0017FailureCutoffTreeThree6Check

def tailEnvelope0017FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0017FailureCutoffTreeThree7Check :
    tailEnvelope0017FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0017FailureFibreExactThree 7) 5469634 0 = true := by decide

theorem tailEnvelope0017FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5469634 (tailEnvelope0017FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0017FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0017FailureCutoffTreeThree7Check

def tailEnvelope0017FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0017FailureCutoffTreeThree8Check :
    tailEnvelope0017FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0017FailureFibreExactThree 8) 5469634 0 = true := by decide

theorem tailEnvelope0017FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5469634 (tailEnvelope0017FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0017FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0017FailureCutoffTreeThree8Check

theorem tailEnvelope0017FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5469634 (tailEnvelope0017FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0017FailureFibreCutoffThree0 residue
  · exact tailEnvelope0017FailureFibreCutoffThree1 residue
  · exact tailEnvelope0017FailureFibreCutoffThree2 residue
  · exact tailEnvelope0017FailureFibreCutoffThree3 residue
  · exact tailEnvelope0017FailureFibreCutoffThree4 residue
  · exact tailEnvelope0017FailureFibreCutoffThree5 residue
  · exact tailEnvelope0017FailureFibreCutoffThree6 residue
  · exact tailEnvelope0017FailureFibreCutoffThree7 residue
  · exact tailEnvelope0017FailureFibreCutoffThree8 residue

theorem tailEnvelope0017FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0017FailureFibreExactThree cell residue ≤ tailEnvelope0017FailureFibreMaxThree cell := by decide

theorem tailEnvelope0017FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0017CountsThree tailEnvelope0017FailureFibreMaxThree 19419 = true := by decide

theorem tailEnvelope0017FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0017CountsThree tailEnvelope0017FailureFibreMaxThree 19502 = true := by decide

theorem tailEnvelope0017FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5442423 5469635
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5469634 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0017CountsOne) (fibre := tailEnvelope0017FailureFibreMaxOne) (bound := 19411) tailEnvelope0017FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0017CountsOne tailEnvelope0017FailureFibreMaxOne tailEnvelope0017FailureFibreExactOne
      (lower := 5442423) (upper := 5469634) (N := N) (bound := 19411)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0017FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0017FailureFibreCutoffOne
      tailEnvelope0017FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0017CountsThree) (fibre := tailEnvelope0017FailureFibreMaxThree) (bound := 19419) tailEnvelope0017FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0017CountsThree tailEnvelope0017FailureFibreMaxThree tailEnvelope0017FailureFibreExactThree
      (lower := 5442423) (upper := 5469634) (N := N) (bound := 19419)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0017FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0017FailureFibreCutoffThree
      tailEnvelope0017FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0017FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5442423 5469635
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5469634 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0017CountsOne) (fibre := tailEnvelope0017FailureFibreMaxOne) (bound := 19494) tailEnvelope0017FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0017CountsOne tailEnvelope0017FailureFibreMaxOne tailEnvelope0017FailureFibreExactOne
      (lower := 5442423) (upper := 5469634) (N := N) (bound := 19494)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0017FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0017FailureFibreCutoffOne
      tailEnvelope0017FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0017CountsThree) (fibre := tailEnvelope0017FailureFibreMaxThree) (bound := 19502) tailEnvelope0017FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0017CountsThree tailEnvelope0017FailureFibreMaxThree tailEnvelope0017FailureFibreExactThree
      (lower := 5442423) (upper := 5469634) (N := N) (bound := 19502)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0017FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0017FailureFibreCutoffThree
      tailEnvelope0017FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0018FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![73, 80, 81, 77, 82, 83, 72, 69, 78, 78, 84, 77, 77, 80, 83, 83, 75, 75, 85, 79, 75, 79, 82, 82, 75, 77, 74, 84, 88, 78, 78, 80, 75, 74, 77, 81, 79, 76, 76, 72, 76, 79, 77, 79, 74, 82, 84, 78, 81], ![75, 75, 81, 80, 78, 79, 79, 79, 81, 74, 85, 80, 77, 84, 79, 76, 79, 80, 84, 87, 79, 80, 84, 76, 70, 74, 80, 78, 82, 79, 79, 72, 73, 84, 78, 84, 76, 81, 78, 83, 82, 78, 79, 81, 78, 75, 80, 78, 78], ![76, 83, 81, 79, 77, 73, 74, 81, 79, 80, 79, 80, 73, 75, 74, 81, 75, 83, 77, 80, 73, 76, 77, 79, 82, 83, 80, 76, 78, 73, 73, 76, 78, 82, 81, 79, 76, 74, 77, 76, 82, 82, 80, 76, 75, 80, 75, 80, 75], ![74, 78, 80, 72, 75, 79, 78, 80, 80, 73, 78, 76, 77, 78, 78, 82, 82, 79, 81, 78, 81, 83, 77, 83, 81, 78, 74, 75, 77, 74, 75, 87, 86, 79, 80, 78, 77, 78, 82, 80, 87, 73, 78, 79, 79, 72, 78, 76, 83], ![80, 76, 81, 80, 79, 83, 82, 81, 81, 75, 79, 78, 82, 85, 79, 80, 74, 73, 69, 76, 75, 75, 75, 77, 82, 78, 77, 80, 77, 79, 81, 82, 83, 77, 79, 74, 79, 82, 78, 76, 76, 73, 77, 73, 78, 81, 78, 77, 80], ![80, 75, 75, 81, 85, 75, 81, 80, 77, 76, 73, 78, 84, 81, 77, 78, 80, 81, 81, 75, 85, 78, 74, 78, 77, 78, 77, 77, 76, 85, 78, 70, 79, 82, 76, 77, 87, 80, 75, 80, 71, 75, 84, 77, 82, 85, 77, 73, 79], ![84, 87, 78, 74, 84, 78, 79, 84, 71, 78, 82, 79, 82, 75, 71, 72, 82, 78, 76, 79, 79, 77, 75, 77, 81, 82, 83, 80, 76, 78, 79, 78, 76, 79, 78, 81, 77, 80, 77, 75, 76, 80, 78, 80, 74, 78, 81, 75, 74], ![81, 80, 73, 81, 77, 80, 75, 75, 81, 84, 76, 75, 76, 77, 77, 80, 83, 80, 79, 74, 79, 79, 78, 75, 75, 81, 76, 76, 73, 80, 75, 80, 82, 76, 82, 84, 73, 79, 77, 80, 75, 81, 76, 75, 81, 77, 80, 81, 84], ![78, 76, 77, 82, 78, 84, 82, 75, 77, 78, 74, 75, 79, 75, 83, 77, 81, 77, 78, 73, 82, 84, 79, 78, 79, 74, 78, 77, 81, 78, 78, 80, 75, 76, 79, 78, 78, 83, 77, 82, 80, 79, 78, 83, 77, 74, 83, 82, 75]]

def tailEnvelope0018FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![84, 80, 78, 78, 73, 78, 80, 82, 83, 82, 84, 80, 80, 74, 76, 77, 83, 81, 75, 78, 81, 71, 74, 79, 78, 82, 85, 74, 76, 79, 77, 76, 82, 84, 74, 77, 81, 79, 80, 79, 78, 83, 85, 77, 77, 75, 71, 74, 84], ![81, 77, 75, 74, 80, 80, 81, 78, 84, 77, 77, 73, 77, 81, 76, 75, 75, 81, 77, 76, 79, 73, 75, 86, 82, 82, 79, 69, 78, 83, 76, 82, 80, 79, 75, 73, 79, 78, 75, 80, 74, 79, 82, 77, 75, 78, 83, 78, 86], ![76, 77, 79, 75, 85, 87, 77, 77, 81, 74, 70, 82, 79, 83, 75, 76, 84, 75, 75, 82, 75, 82, 80, 76, 79, 82, 71, 71, 82, 79, 81, 79, 78, 75, 79, 81, 77, 81, 87, 78, 76, 78, 83, 77, 78, 81, 74, 78, 80], ![72, 76, 82, 76, 75, 79, 75, 73, 76, 82, 79, 82, 83, 85, 80, 76, 80, 78, 79, 85, 72, 80, 84, 77, 81, 81, 79, 82, 85, 79, 77, 77, 72, 79, 76, 72, 83, 77, 80, 72, 72, 82, 83, 80, 77, 79, 87, 78, 74], ![78, 82, 81, 78, 78, 74, 77, 77, 78, 82, 84, 77, 76, 77, 75, 74, 79, 83, 86, 73, 76, 80, 81, 79, 77, 80, 81, 78, 78, 75, 81, 81, 71, 78, 82, 80, 78, 77, 73, 78, 81, 78, 80, 73, 81, 72, 79, 79, 78], ![79, 77, 77, 76, 77, 84, 82, 79, 73, 79, 78, 79, 73, 76, 82, 84, 77, 75, 76, 72, 77, 77, 77, 81, 84, 78, 81, 78, 76, 80, 82, 77, 83, 83, 78, 77, 72, 75, 81, 78, 83, 78, 79, 79, 74, 76, 77, 89, 79], ![82, 79, 76, 76, 81, 79, 79, 81, 80, 79, 80, 71, 73, 83, 80, 79, 76, 76, 76, 83, 84, 78, 82, 81, 77, 71, 75, 81, 73, 76, 81, 73, 80, 73, 77, 81, 75, 74, 81, 86, 81, 79, 75, 78, 81, 81, 83, 83, 79], ![75, 77, 75, 89, 81, 79, 81, 80, 74, 75, 84, 82, 80, 76, 79, 85, 75, 73, 76, 77, 82, 80, 77, 76, 75, 74, 81, 81, 79, 79, 75, 79, 76, 77, 81, 80, 82, 83, 79, 82, 83, 72, 78, 83, 79, 81, 78, 77, 72], ![78, 80, 77, 80, 79, 76, 79, 76, 83, 79, 80, 74, 78, 79, 77, 82, 77, 78, 82, 81, 79, 76, 76, 78, 78, 78, 79, 80, 77, 75, 77, 80, 82, 73, 82, 77, 78, 78, 75, 75, 79, 79, 73, 83, 84, 79, 80, 77, 77]]

def tailEnvelope0018FailureFibreMaxOne : Fin 9 → Nat :=
  ![88, 87, 83, 87, 85, 87, 87, 84, 84]

def tailEnvelope0018FailureFibreMaxThree : Fin 9 → Nat :=
  ![85, 86, 87, 87, 86, 89, 86, 89, 84]

theorem tailEnvelope0018FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5496982 (tailEnvelope0018CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0018FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0018FailureCutoffTreeOne0Check :
    tailEnvelope0018FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0018FailureFibreExactOne 0) 5496982 0 = true := by decide

theorem tailEnvelope0018FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5496982 (tailEnvelope0018FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0018FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0018FailureCutoffTreeOne0Check

def tailEnvelope0018FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0018FailureCutoffTreeOne1Check :
    tailEnvelope0018FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0018FailureFibreExactOne 1) 5496982 0 = true := by decide

theorem tailEnvelope0018FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5496982 (tailEnvelope0018FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0018FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0018FailureCutoffTreeOne1Check

def tailEnvelope0018FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0018FailureCutoffTreeOne2Check :
    tailEnvelope0018FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0018FailureFibreExactOne 2) 5496982 0 = true := by decide

theorem tailEnvelope0018FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5496982 (tailEnvelope0018FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0018FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0018FailureCutoffTreeOne2Check

def tailEnvelope0018FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0018FailureCutoffTreeOne3Check :
    tailEnvelope0018FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0018FailureFibreExactOne 3) 5496982 0 = true := by decide

theorem tailEnvelope0018FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5496982 (tailEnvelope0018FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0018FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0018FailureCutoffTreeOne3Check

def tailEnvelope0018FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0018FailureCutoffTreeOne4Check :
    tailEnvelope0018FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0018FailureFibreExactOne 4) 5496982 0 = true := by decide

theorem tailEnvelope0018FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5496982 (tailEnvelope0018FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0018FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0018FailureCutoffTreeOne4Check

def tailEnvelope0018FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0018FailureCutoffTreeOne5Check :
    tailEnvelope0018FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0018FailureFibreExactOne 5) 5496982 0 = true := by decide

theorem tailEnvelope0018FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5496982 (tailEnvelope0018FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0018FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0018FailureCutoffTreeOne5Check

def tailEnvelope0018FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0018FailureCutoffTreeOne6Check :
    tailEnvelope0018FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0018FailureFibreExactOne 6) 5496982 0 = true := by decide

theorem tailEnvelope0018FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5496982 (tailEnvelope0018FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0018FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0018FailureCutoffTreeOne6Check

def tailEnvelope0018FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0018FailureCutoffTreeOne7Check :
    tailEnvelope0018FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0018FailureFibreExactOne 7) 5496982 0 = true := by decide

theorem tailEnvelope0018FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5496982 (tailEnvelope0018FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0018FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0018FailureCutoffTreeOne7Check

def tailEnvelope0018FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0018FailureCutoffTreeOne8Check :
    tailEnvelope0018FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0018FailureFibreExactOne 8) 5496982 0 = true := by decide

theorem tailEnvelope0018FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5496982 (tailEnvelope0018FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0018FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0018FailureCutoffTreeOne8Check

theorem tailEnvelope0018FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5496982 (tailEnvelope0018FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0018FailureFibreCutoffOne0 residue
  · exact tailEnvelope0018FailureFibreCutoffOne1 residue
  · exact tailEnvelope0018FailureFibreCutoffOne2 residue
  · exact tailEnvelope0018FailureFibreCutoffOne3 residue
  · exact tailEnvelope0018FailureFibreCutoffOne4 residue
  · exact tailEnvelope0018FailureFibreCutoffOne5 residue
  · exact tailEnvelope0018FailureFibreCutoffOne6 residue
  · exact tailEnvelope0018FailureFibreCutoffOne7 residue
  · exact tailEnvelope0018FailureFibreCutoffOne8 residue

theorem tailEnvelope0018FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0018FailureFibreExactOne cell residue ≤ tailEnvelope0018FailureFibreMaxOne cell := by decide

theorem tailEnvelope0018FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0018CountsOne tailEnvelope0018FailureFibreMaxOne 19509 = true := by decide

theorem tailEnvelope0018FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0018CountsOne tailEnvelope0018FailureFibreMaxOne 19592 = true := by decide

theorem tailEnvelope0018FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5496982 (tailEnvelope0018CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0018FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0018FailureCutoffTreeThree0Check :
    tailEnvelope0018FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0018FailureFibreExactThree 0) 5496982 0 = true := by decide

theorem tailEnvelope0018FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5496982 (tailEnvelope0018FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0018FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0018FailureCutoffTreeThree0Check

def tailEnvelope0018FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0018FailureCutoffTreeThree1Check :
    tailEnvelope0018FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0018FailureFibreExactThree 1) 5496982 0 = true := by decide

theorem tailEnvelope0018FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5496982 (tailEnvelope0018FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0018FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0018FailureCutoffTreeThree1Check

def tailEnvelope0018FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0018FailureCutoffTreeThree2Check :
    tailEnvelope0018FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0018FailureFibreExactThree 2) 5496982 0 = true := by decide

theorem tailEnvelope0018FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5496982 (tailEnvelope0018FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0018FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0018FailureCutoffTreeThree2Check

def tailEnvelope0018FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0018FailureCutoffTreeThree3Check :
    tailEnvelope0018FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0018FailureFibreExactThree 3) 5496982 0 = true := by decide

theorem tailEnvelope0018FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5496982 (tailEnvelope0018FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0018FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0018FailureCutoffTreeThree3Check

def tailEnvelope0018FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0018FailureCutoffTreeThree4Check :
    tailEnvelope0018FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0018FailureFibreExactThree 4) 5496982 0 = true := by decide

theorem tailEnvelope0018FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5496982 (tailEnvelope0018FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0018FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0018FailureCutoffTreeThree4Check

def tailEnvelope0018FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0018FailureCutoffTreeThree5Check :
    tailEnvelope0018FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0018FailureFibreExactThree 5) 5496982 0 = true := by decide

theorem tailEnvelope0018FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5496982 (tailEnvelope0018FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0018FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0018FailureCutoffTreeThree5Check

def tailEnvelope0018FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0018FailureCutoffTreeThree6Check :
    tailEnvelope0018FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0018FailureFibreExactThree 6) 5496982 0 = true := by decide

theorem tailEnvelope0018FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5496982 (tailEnvelope0018FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0018FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0018FailureCutoffTreeThree6Check

def tailEnvelope0018FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0018FailureCutoffTreeThree7Check :
    tailEnvelope0018FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0018FailureFibreExactThree 7) 5496982 0 = true := by decide

theorem tailEnvelope0018FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5496982 (tailEnvelope0018FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0018FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0018FailureCutoffTreeThree7Check

def tailEnvelope0018FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0018FailureCutoffTreeThree8Check :
    tailEnvelope0018FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0018FailureFibreExactThree 8) 5496982 0 = true := by decide

theorem tailEnvelope0018FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5496982 (tailEnvelope0018FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0018FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0018FailureCutoffTreeThree8Check

theorem tailEnvelope0018FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5496982 (tailEnvelope0018FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0018FailureFibreCutoffThree0 residue
  · exact tailEnvelope0018FailureFibreCutoffThree1 residue
  · exact tailEnvelope0018FailureFibreCutoffThree2 residue
  · exact tailEnvelope0018FailureFibreCutoffThree3 residue
  · exact tailEnvelope0018FailureFibreCutoffThree4 residue
  · exact tailEnvelope0018FailureFibreCutoffThree5 residue
  · exact tailEnvelope0018FailureFibreCutoffThree6 residue
  · exact tailEnvelope0018FailureFibreCutoffThree7 residue
  · exact tailEnvelope0018FailureFibreCutoffThree8 residue

theorem tailEnvelope0018FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0018FailureFibreExactThree cell residue ≤ tailEnvelope0018FailureFibreMaxThree cell := by decide

theorem tailEnvelope0018FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0018CountsThree tailEnvelope0018FailureFibreMaxThree 19518 = true := by decide

theorem tailEnvelope0018FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0018CountsThree tailEnvelope0018FailureFibreMaxThree 19602 = true := by decide

theorem tailEnvelope0018FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5469635 5496983
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5496982 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0018CountsOne) (fibre := tailEnvelope0018FailureFibreMaxOne) (bound := 19509) tailEnvelope0018FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0018CountsOne tailEnvelope0018FailureFibreMaxOne tailEnvelope0018FailureFibreExactOne
      (lower := 5469635) (upper := 5496982) (N := N) (bound := 19509)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0018FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0018FailureFibreCutoffOne
      tailEnvelope0018FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0018CountsThree) (fibre := tailEnvelope0018FailureFibreMaxThree) (bound := 19518) tailEnvelope0018FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0018CountsThree tailEnvelope0018FailureFibreMaxThree tailEnvelope0018FailureFibreExactThree
      (lower := 5469635) (upper := 5496982) (N := N) (bound := 19518)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0018FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0018FailureFibreCutoffThree
      tailEnvelope0018FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0018FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5469635 5496983
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5496982 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0018CountsOne) (fibre := tailEnvelope0018FailureFibreMaxOne) (bound := 19592) tailEnvelope0018FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0018CountsOne tailEnvelope0018FailureFibreMaxOne tailEnvelope0018FailureFibreExactOne
      (lower := 5469635) (upper := 5496982) (N := N) (bound := 19592)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0018FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0018FailureFibreCutoffOne
      tailEnvelope0018FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0018CountsThree) (fibre := tailEnvelope0018FailureFibreMaxThree) (bound := 19602) tailEnvelope0018FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0018CountsThree tailEnvelope0018FailureFibreMaxThree tailEnvelope0018FailureFibreExactThree
      (lower := 5469635) (upper := 5496982) (N := N) (bound := 19602)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0018FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0018FailureFibreCutoffThree
      tailEnvelope0018FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0019FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![73, 81, 81, 78, 82, 83, 73, 69, 79, 79, 84, 79, 79, 80, 83, 83, 75, 75, 85, 79, 75, 79, 82, 83, 75, 77, 75, 84, 89, 78, 78, 80, 75, 75, 78, 81, 80, 76, 76, 73, 76, 79, 79, 79, 75, 82, 84, 78, 81], ![75, 76, 82, 80, 78, 79, 79, 79, 81, 74, 85, 80, 77, 85, 79, 76, 80, 80, 86, 87, 79, 80, 84, 76, 71, 74, 81, 78, 82, 79, 81, 72, 75, 84, 79, 84, 76, 81, 78, 83, 83, 78, 82, 81, 78, 75, 81, 78, 80], ![76, 83, 81, 79, 78, 73, 76, 81, 80, 81, 79, 80, 73, 76, 75, 81, 76, 83, 77, 80, 73, 77, 78, 80, 82, 84, 80, 76, 78, 75, 75, 78, 79, 82, 81, 79, 76, 74, 78, 77, 82, 83, 80, 76, 75, 80, 75, 80, 76], ![74, 78, 80, 73, 76, 79, 80, 80, 80, 73, 80, 76, 79, 78, 81, 82, 83, 79, 81, 78, 82, 83, 78, 84, 82, 78, 74, 75, 78, 74, 76, 87, 86, 79, 80, 78, 77, 78, 82, 80, 87, 73, 78, 79, 80, 73, 79, 77, 83], ![80, 76, 83, 80, 80, 84, 82, 81, 81, 75, 80, 78, 82, 85, 80, 80, 74, 73, 70, 77, 75, 76, 75, 77, 82, 79, 78, 80, 77, 79, 82, 82, 83, 77, 79, 77, 79, 84, 78, 76, 76, 73, 77, 74, 78, 82, 78, 77, 80], ![81, 75, 76, 81, 85, 75, 82, 80, 77, 77, 74, 78, 85, 81, 77, 78, 80, 81, 81, 76, 85, 78, 74, 78, 77, 79, 79, 80, 77, 85, 78, 70, 79, 82, 76, 78, 87, 80, 76, 80, 72, 76, 84, 78, 82, 85, 77, 73, 79], ![84, 88, 78, 75, 84, 78, 79, 84, 73, 79, 82, 79, 82, 76, 71, 73, 82, 79, 76, 79, 79, 77, 75, 78, 81, 83, 83, 80, 76, 78, 79, 79, 76, 81, 79, 82, 77, 80, 77, 76, 76, 81, 78, 80, 74, 78, 81, 76, 74], ![81, 80, 73, 81, 77, 81, 75, 76, 82, 84, 77, 75, 77, 78, 77, 81, 83, 80, 79, 74, 79, 80, 78, 76, 76, 81, 77, 76, 73, 81, 75, 81, 82, 77, 82, 84, 73, 79, 77, 80, 75, 82, 76, 77, 83, 77, 80, 81, 85], ![78, 77, 78, 83, 78, 85, 83, 75, 77, 78, 74, 76, 79, 76, 83, 77, 81, 78, 79, 74, 82, 85, 79, 78, 79, 76, 78, 77, 81, 78, 78, 80, 76, 76, 80, 78, 78, 83, 79, 82, 80, 80, 78, 84, 78, 74, 84, 82, 76]]

def tailEnvelope0019FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![85, 80, 78, 78, 73, 79, 80, 83, 83, 84, 84, 80, 81, 75, 77, 77, 84, 81, 75, 78, 81, 71, 74, 79, 78, 82, 85, 74, 76, 79, 78, 77, 83, 85, 74, 77, 81, 80, 81, 79, 79, 83, 85, 77, 77, 75, 72, 75, 85], ![81, 78, 75, 74, 80, 81, 81, 79, 84, 77, 77, 73, 78, 81, 77, 75, 75, 81, 77, 76, 80, 73, 77, 87, 82, 82, 79, 69, 79, 83, 77, 82, 80, 79, 75, 73, 80, 78, 77, 80, 75, 79, 82, 77, 76, 80, 83, 78, 87], ![76, 77, 79, 75, 86, 87, 77, 77, 81, 74, 71, 82, 80, 83, 75, 77, 84, 75, 77, 82, 77, 82, 80, 76, 79, 82, 73, 72, 83, 80, 81, 80, 78, 75, 81, 81, 79, 81, 87, 78, 76, 78, 83, 78, 78, 82, 74, 79, 80], ![73, 76, 82, 76, 75, 79, 75, 73, 77, 82, 80, 82, 83, 86, 80, 76, 81, 78, 80, 85, 72, 80, 85, 77, 82, 81, 80, 82, 85, 79, 77, 77, 72, 79, 76, 72, 85, 77, 81, 72, 72, 82, 83, 81, 78, 79, 87, 78, 74], ![79, 82, 81, 78, 78, 74, 77, 77, 80, 82, 84, 78, 76, 78, 76, 74, 80, 83, 86, 74, 77, 80, 81, 79, 77, 80, 81, 79, 78, 76, 81, 81, 71, 79, 82, 80, 78, 78, 73, 79, 81, 79, 80, 76, 81, 73, 79, 80, 78], ![80, 77, 78, 76, 80, 84, 82, 79, 73, 79, 78, 79, 73, 76, 82, 84, 78, 75, 77, 72, 78, 78, 77, 82, 85, 78, 81, 78, 76, 81, 82, 78, 83, 83, 79, 77, 72, 76, 82, 78, 83, 78, 79, 79, 74, 77, 77, 90, 79], ![82, 79, 76, 76, 81, 80, 79, 81, 80, 81, 80, 74, 74, 84, 81, 79, 76, 76, 76, 84, 84, 79, 82, 81, 78, 72, 75, 84, 73, 77, 81, 73, 81, 73, 77, 82, 75, 75, 81, 86, 81, 79, 75, 78, 82, 81, 83, 83, 79], ![76, 78, 76, 90, 81, 79, 81, 80, 74, 76, 84, 83, 80, 76, 79, 85, 76, 74, 77, 78, 82, 80, 78, 76, 75, 75, 81, 82, 79, 79, 75, 79, 77, 78, 82, 80, 82, 83, 79, 83, 83, 74, 78, 84, 79, 82, 78, 77, 72], ![78, 81, 77, 80, 79, 77, 79, 79, 83, 80, 80, 74, 78, 79, 77, 83, 77, 79, 82, 81, 79, 76, 76, 79, 78, 78, 79, 80, 79, 75, 77, 80, 82, 74, 82, 77, 78, 78, 75, 75, 81, 79, 75, 83, 84, 79, 80, 77, 77]]

def tailEnvelope0019FailureFibreMaxOne : Fin 9 → Nat :=
  ![89, 87, 84, 87, 85, 87, 88, 85, 85]

def tailEnvelope0019FailureFibreMaxThree : Fin 9 → Nat :=
  ![85, 87, 87, 87, 86, 90, 86, 90, 84]

theorem tailEnvelope0019FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5524466 (tailEnvelope0019CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0019FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0019FailureCutoffTreeOne0Check :
    tailEnvelope0019FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0019FailureFibreExactOne 0) 5524466 0 = true := by decide

theorem tailEnvelope0019FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5524466 (tailEnvelope0019FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0019FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0019FailureCutoffTreeOne0Check

def tailEnvelope0019FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0019FailureCutoffTreeOne1Check :
    tailEnvelope0019FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0019FailureFibreExactOne 1) 5524466 0 = true := by decide

theorem tailEnvelope0019FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5524466 (tailEnvelope0019FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0019FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0019FailureCutoffTreeOne1Check

def tailEnvelope0019FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0019FailureCutoffTreeOne2Check :
    tailEnvelope0019FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0019FailureFibreExactOne 2) 5524466 0 = true := by decide

theorem tailEnvelope0019FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5524466 (tailEnvelope0019FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0019FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0019FailureCutoffTreeOne2Check

def tailEnvelope0019FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0019FailureCutoffTreeOne3Check :
    tailEnvelope0019FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0019FailureFibreExactOne 3) 5524466 0 = true := by decide

theorem tailEnvelope0019FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5524466 (tailEnvelope0019FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0019FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0019FailureCutoffTreeOne3Check

def tailEnvelope0019FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0019FailureCutoffTreeOne4Check :
    tailEnvelope0019FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0019FailureFibreExactOne 4) 5524466 0 = true := by decide

theorem tailEnvelope0019FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5524466 (tailEnvelope0019FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0019FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0019FailureCutoffTreeOne4Check

def tailEnvelope0019FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0019FailureCutoffTreeOne5Check :
    tailEnvelope0019FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0019FailureFibreExactOne 5) 5524466 0 = true := by decide

theorem tailEnvelope0019FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5524466 (tailEnvelope0019FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0019FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0019FailureCutoffTreeOne5Check

def tailEnvelope0019FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0019FailureCutoffTreeOne6Check :
    tailEnvelope0019FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0019FailureFibreExactOne 6) 5524466 0 = true := by decide

theorem tailEnvelope0019FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5524466 (tailEnvelope0019FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0019FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0019FailureCutoffTreeOne6Check

def tailEnvelope0019FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0019FailureCutoffTreeOne7Check :
    tailEnvelope0019FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0019FailureFibreExactOne 7) 5524466 0 = true := by decide

theorem tailEnvelope0019FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5524466 (tailEnvelope0019FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0019FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0019FailureCutoffTreeOne7Check

def tailEnvelope0019FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0019FailureCutoffTreeOne8Check :
    tailEnvelope0019FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0019FailureFibreExactOne 8) 5524466 0 = true := by decide

theorem tailEnvelope0019FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5524466 (tailEnvelope0019FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0019FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0019FailureCutoffTreeOne8Check

theorem tailEnvelope0019FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5524466 (tailEnvelope0019FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0019FailureFibreCutoffOne0 residue
  · exact tailEnvelope0019FailureFibreCutoffOne1 residue
  · exact tailEnvelope0019FailureFibreCutoffOne2 residue
  · exact tailEnvelope0019FailureFibreCutoffOne3 residue
  · exact tailEnvelope0019FailureFibreCutoffOne4 residue
  · exact tailEnvelope0019FailureFibreCutoffOne5 residue
  · exact tailEnvelope0019FailureFibreCutoffOne6 residue
  · exact tailEnvelope0019FailureFibreCutoffOne7 residue
  · exact tailEnvelope0019FailureFibreCutoffOne8 residue

theorem tailEnvelope0019FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0019FailureFibreExactOne cell residue ≤ tailEnvelope0019FailureFibreMaxOne cell := by decide

theorem tailEnvelope0019FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0019CountsOne tailEnvelope0019FailureFibreMaxOne 19613 = true := by decide

theorem tailEnvelope0019FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0019CountsOne tailEnvelope0019FailureFibreMaxOne 19697 = true := by decide

theorem tailEnvelope0019FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5524466 (tailEnvelope0019CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0019FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0019FailureCutoffTreeThree0Check :
    tailEnvelope0019FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0019FailureFibreExactThree 0) 5524466 0 = true := by decide

theorem tailEnvelope0019FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5524466 (tailEnvelope0019FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0019FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0019FailureCutoffTreeThree0Check

def tailEnvelope0019FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0019FailureCutoffTreeThree1Check :
    tailEnvelope0019FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0019FailureFibreExactThree 1) 5524466 0 = true := by decide

theorem tailEnvelope0019FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5524466 (tailEnvelope0019FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0019FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0019FailureCutoffTreeThree1Check

def tailEnvelope0019FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0019FailureCutoffTreeThree2Check :
    tailEnvelope0019FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0019FailureFibreExactThree 2) 5524466 0 = true := by decide

theorem tailEnvelope0019FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5524466 (tailEnvelope0019FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0019FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0019FailureCutoffTreeThree2Check

def tailEnvelope0019FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0019FailureCutoffTreeThree3Check :
    tailEnvelope0019FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0019FailureFibreExactThree 3) 5524466 0 = true := by decide

theorem tailEnvelope0019FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5524466 (tailEnvelope0019FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0019FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0019FailureCutoffTreeThree3Check

def tailEnvelope0019FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0019FailureCutoffTreeThree4Check :
    tailEnvelope0019FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0019FailureFibreExactThree 4) 5524466 0 = true := by decide

theorem tailEnvelope0019FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5524466 (tailEnvelope0019FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0019FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0019FailureCutoffTreeThree4Check

def tailEnvelope0019FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0019FailureCutoffTreeThree5Check :
    tailEnvelope0019FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0019FailureFibreExactThree 5) 5524466 0 = true := by decide

theorem tailEnvelope0019FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5524466 (tailEnvelope0019FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0019FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0019FailureCutoffTreeThree5Check

def tailEnvelope0019FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0019FailureCutoffTreeThree6Check :
    tailEnvelope0019FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0019FailureFibreExactThree 6) 5524466 0 = true := by decide

theorem tailEnvelope0019FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5524466 (tailEnvelope0019FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0019FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0019FailureCutoffTreeThree6Check

def tailEnvelope0019FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0019FailureCutoffTreeThree7Check :
    tailEnvelope0019FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0019FailureFibreExactThree 7) 5524466 0 = true := by decide

theorem tailEnvelope0019FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5524466 (tailEnvelope0019FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0019FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0019FailureCutoffTreeThree7Check

def tailEnvelope0019FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0019FailureCutoffTreeThree8Check :
    tailEnvelope0019FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0019FailureFibreExactThree 8) 5524466 0 = true := by decide

theorem tailEnvelope0019FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5524466 (tailEnvelope0019FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0019FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0019FailureCutoffTreeThree8Check

theorem tailEnvelope0019FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5524466 (tailEnvelope0019FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0019FailureFibreCutoffThree0 residue
  · exact tailEnvelope0019FailureFibreCutoffThree1 residue
  · exact tailEnvelope0019FailureFibreCutoffThree2 residue
  · exact tailEnvelope0019FailureFibreCutoffThree3 residue
  · exact tailEnvelope0019FailureFibreCutoffThree4 residue
  · exact tailEnvelope0019FailureFibreCutoffThree5 residue
  · exact tailEnvelope0019FailureFibreCutoffThree6 residue
  · exact tailEnvelope0019FailureFibreCutoffThree7 residue
  · exact tailEnvelope0019FailureFibreCutoffThree8 residue

theorem tailEnvelope0019FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0019FailureFibreExactThree cell residue ≤ tailEnvelope0019FailureFibreMaxThree cell := by decide

theorem tailEnvelope0019FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0019CountsThree tailEnvelope0019FailureFibreMaxThree 19616 = true := by decide

theorem tailEnvelope0019FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0019CountsThree tailEnvelope0019FailureFibreMaxThree 19700 = true := by decide

theorem tailEnvelope0019FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5496983 5524467
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5524466 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0019CountsOne) (fibre := tailEnvelope0019FailureFibreMaxOne) (bound := 19613) tailEnvelope0019FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0019CountsOne tailEnvelope0019FailureFibreMaxOne tailEnvelope0019FailureFibreExactOne
      (lower := 5496983) (upper := 5524466) (N := N) (bound := 19613)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0019FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0019FailureFibreCutoffOne
      tailEnvelope0019FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0019CountsThree) (fibre := tailEnvelope0019FailureFibreMaxThree) (bound := 19616) tailEnvelope0019FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0019CountsThree tailEnvelope0019FailureFibreMaxThree tailEnvelope0019FailureFibreExactThree
      (lower := 5496983) (upper := 5524466) (N := N) (bound := 19616)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0019FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0019FailureFibreCutoffThree
      tailEnvelope0019FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0019FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5496983 5524467
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5524466 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0019CountsOne) (fibre := tailEnvelope0019FailureFibreMaxOne) (bound := 19697) tailEnvelope0019FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0019CountsOne tailEnvelope0019FailureFibreMaxOne tailEnvelope0019FailureFibreExactOne
      (lower := 5496983) (upper := 5524466) (N := N) (bound := 19697)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0019FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0019FailureFibreCutoffOne
      tailEnvelope0019FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0019CountsThree) (fibre := tailEnvelope0019FailureFibreMaxThree) (bound := 19700) tailEnvelope0019FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0019CountsThree tailEnvelope0019FailureFibreMaxThree tailEnvelope0019FailureFibreExactThree
      (lower := 5496983) (upper := 5524466) (N := N) (bound := 19700)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0019FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0019FailureFibreCutoffThree
      tailEnvelope0019FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0020FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![74, 81, 81, 78, 82, 83, 74, 70, 79, 79, 85, 79, 79, 80, 83, 83, 75, 76, 85, 79, 76, 79, 83, 83, 76, 78, 75, 85, 89, 78, 78, 80, 76, 76, 78, 83, 80, 76, 77, 73, 77, 80, 79, 80, 75, 82, 84, 78, 81], ![75, 77, 83, 80, 78, 79, 79, 81, 81, 75, 85, 80, 77, 85, 79, 78, 80, 81, 86, 87, 79, 80, 84, 76, 71, 75, 81, 78, 82, 80, 81, 73, 75, 85, 79, 84, 78, 81, 78, 83, 83, 78, 82, 81, 78, 76, 81, 79, 80], ![76, 83, 81, 79, 78, 74, 76, 81, 80, 81, 79, 80, 73, 77, 75, 83, 76, 83, 77, 80, 74, 78, 79, 81, 82, 84, 80, 76, 78, 75, 75, 78, 79, 82, 81, 79, 78, 74, 79, 77, 83, 83, 80, 76, 75, 80, 76, 80, 77], ![74, 78, 80, 74, 78, 80, 80, 81, 80, 73, 80, 77, 79, 80, 81, 82, 83, 79, 81, 78, 82, 83, 78, 84, 82, 78, 75, 75, 78, 75, 77, 87, 86, 79, 80, 78, 78, 78, 83, 81, 87, 73, 78, 80, 81, 74, 80, 77, 83], ![80, 77, 84, 81, 81, 84, 82, 81, 81, 75, 80, 79, 82, 85, 81, 80, 74, 73, 71, 77, 78, 76, 75, 77, 82, 79, 79, 80, 78, 79, 82, 82, 83, 77, 81, 77, 81, 84, 78, 76, 77, 73, 78, 75, 79, 82, 78, 77, 80], ![81, 75, 77, 81, 85, 75, 82, 80, 78, 78, 75, 79, 85, 82, 77, 78, 81, 81, 82, 76, 86, 80, 74, 78, 78, 81, 80, 81, 77, 85, 78, 70, 80, 82, 77, 78, 87, 80, 76, 80, 73, 76, 86, 78, 83, 85, 78, 73, 79], ![86, 88, 79, 75, 84, 78, 80, 84, 75, 79, 82, 79, 82, 76, 72, 73, 84, 79, 77, 80, 79, 77, 76, 78, 82, 83, 83, 80, 76, 78, 80, 79, 76, 81, 79, 82, 77, 80, 77, 76, 76, 81, 78, 81, 74, 78, 81, 77, 74], ![81, 80, 73, 81, 78, 82, 76, 77, 82, 84, 77, 75, 79, 78, 77, 81, 83, 80, 79, 75, 80, 80, 78, 77, 76, 81, 77, 77, 73, 81, 75, 81, 82, 77, 82, 84, 73, 80, 79, 81, 76, 82, 77, 77, 83, 78, 81, 83, 85], ![79, 77, 80, 83, 79, 85, 83, 75, 77, 79, 75, 76, 79, 76, 84, 77, 82, 78, 79, 76, 82, 85, 79, 78, 80, 76, 78, 78, 81, 79, 79, 81, 76, 77, 80, 79, 79, 84, 79, 83, 80, 80, 78, 85, 79, 75, 84, 83, 76]]

def tailEnvelope0020FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![85, 80, 78, 80, 74, 80, 80, 83, 83, 84, 84, 80, 81, 75, 77, 78, 84, 81, 75, 78, 81, 74, 74, 80, 78, 82, 85, 74, 76, 81, 79, 78, 84, 85, 74, 77, 81, 81, 81, 80, 79, 83, 85, 77, 77, 76, 73, 76, 86], ![81, 78, 75, 75, 81, 82, 83, 79, 84, 77, 77, 74, 78, 82, 78, 75, 75, 81, 77, 77, 80, 75, 77, 88, 83, 82, 79, 71, 79, 83, 77, 82, 80, 80, 75, 74, 80, 79, 77, 83, 75, 79, 82, 77, 76, 81, 83, 78, 87], ![76, 77, 79, 76, 86, 87, 77, 77, 82, 75, 71, 83, 81, 83, 75, 77, 84, 77, 77, 83, 79, 82, 80, 76, 79, 83, 74, 72, 84, 80, 82, 80, 78, 75, 81, 82, 79, 81, 88, 78, 76, 78, 84, 78, 80, 82, 75, 79, 80], ![74, 78, 82, 77, 75, 80, 75, 76, 77, 83, 80, 82, 83, 86, 80, 77, 81, 78, 80, 86, 72, 81, 85, 77, 82, 81, 80, 82, 86, 79, 77, 77, 73, 79, 76, 73, 85, 78, 81, 72, 73, 82, 84, 81, 78, 79, 87, 78, 75], ![79, 82, 81, 78, 78, 75, 77, 77, 80, 82, 84, 79, 77, 78, 76, 74, 80, 83, 86, 75, 77, 80, 82, 79, 78, 81, 82, 79, 79, 76, 82, 81, 72, 79, 82, 80, 78, 80, 73, 80, 82, 79, 80, 76, 81, 73, 80, 81, 79], ![80, 78, 78, 77, 80, 85, 83, 79, 73, 79, 78, 79, 74, 76, 83, 84, 78, 76, 77, 73, 79, 78, 79, 82, 86, 78, 81, 78, 77, 81, 83, 79, 83, 85, 79, 77, 73, 77, 83, 79, 83, 78, 79, 79, 75, 77, 77, 90, 79], ![82, 79, 77, 76, 82, 82, 79, 81, 82, 81, 82, 74, 75, 84, 81, 79, 76, 76, 77, 84, 85, 79, 82, 81, 79, 72, 76, 84, 74, 77, 81, 73, 81, 73, 77, 82, 75, 75, 81, 86, 81, 80, 75, 79, 83, 82, 83, 83, 80], ![78, 79, 77, 90, 81, 79, 82, 80, 76, 76, 85, 83, 80, 76, 79, 86, 77, 76, 79, 78, 82, 80, 78, 76, 75, 75, 81, 82, 79, 79, 75, 79, 77, 78, 83, 82, 82, 83, 80, 83, 83, 75, 78, 85, 79, 82, 78, 77, 73], ![79, 81, 77, 80, 79, 77, 81, 79, 85, 80, 80, 74, 78, 79, 77, 83, 77, 79, 82, 81, 79, 76, 78, 79, 78, 80, 79, 80, 79, 75, 77, 81, 82, 75, 83, 77, 78, 78, 75, 77, 81, 80, 75, 83, 84, 79, 80, 78, 77]]

def tailEnvelope0020FailureFibreMaxOne : Fin 9 → Nat :=
  ![89, 87, 84, 87, 85, 87, 88, 85, 85]

def tailEnvelope0020FailureFibreMaxThree : Fin 9 → Nat :=
  ![86, 88, 88, 87, 86, 90, 86, 90, 85]

theorem tailEnvelope0020FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5552088 (tailEnvelope0020CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0020FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0020FailureCutoffTreeOne0Check :
    tailEnvelope0020FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0020FailureFibreExactOne 0) 5552088 0 = true := by decide

theorem tailEnvelope0020FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5552088 (tailEnvelope0020FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0020FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0020FailureCutoffTreeOne0Check

def tailEnvelope0020FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0020FailureCutoffTreeOne1Check :
    tailEnvelope0020FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0020FailureFibreExactOne 1) 5552088 0 = true := by decide

theorem tailEnvelope0020FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5552088 (tailEnvelope0020FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0020FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0020FailureCutoffTreeOne1Check

def tailEnvelope0020FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0020FailureCutoffTreeOne2Check :
    tailEnvelope0020FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0020FailureFibreExactOne 2) 5552088 0 = true := by decide

theorem tailEnvelope0020FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5552088 (tailEnvelope0020FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0020FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0020FailureCutoffTreeOne2Check

def tailEnvelope0020FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0020FailureCutoffTreeOne3Check :
    tailEnvelope0020FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0020FailureFibreExactOne 3) 5552088 0 = true := by decide

theorem tailEnvelope0020FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5552088 (tailEnvelope0020FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0020FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0020FailureCutoffTreeOne3Check

def tailEnvelope0020FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0020FailureCutoffTreeOne4Check :
    tailEnvelope0020FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0020FailureFibreExactOne 4) 5552088 0 = true := by decide

theorem tailEnvelope0020FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5552088 (tailEnvelope0020FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0020FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0020FailureCutoffTreeOne4Check

def tailEnvelope0020FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0020FailureCutoffTreeOne5Check :
    tailEnvelope0020FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0020FailureFibreExactOne 5) 5552088 0 = true := by decide

theorem tailEnvelope0020FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5552088 (tailEnvelope0020FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0020FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0020FailureCutoffTreeOne5Check

def tailEnvelope0020FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0020FailureCutoffTreeOne6Check :
    tailEnvelope0020FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0020FailureFibreExactOne 6) 5552088 0 = true := by decide

theorem tailEnvelope0020FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5552088 (tailEnvelope0020FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0020FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0020FailureCutoffTreeOne6Check

def tailEnvelope0020FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0020FailureCutoffTreeOne7Check :
    tailEnvelope0020FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0020FailureFibreExactOne 7) 5552088 0 = true := by decide

theorem tailEnvelope0020FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5552088 (tailEnvelope0020FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0020FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0020FailureCutoffTreeOne7Check

def tailEnvelope0020FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0020FailureCutoffTreeOne8Check :
    tailEnvelope0020FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0020FailureFibreExactOne 8) 5552088 0 = true := by decide

theorem tailEnvelope0020FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5552088 (tailEnvelope0020FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0020FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0020FailureCutoffTreeOne8Check

theorem tailEnvelope0020FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5552088 (tailEnvelope0020FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0020FailureFibreCutoffOne0 residue
  · exact tailEnvelope0020FailureFibreCutoffOne1 residue
  · exact tailEnvelope0020FailureFibreCutoffOne2 residue
  · exact tailEnvelope0020FailureFibreCutoffOne3 residue
  · exact tailEnvelope0020FailureFibreCutoffOne4 residue
  · exact tailEnvelope0020FailureFibreCutoffOne5 residue
  · exact tailEnvelope0020FailureFibreCutoffOne6 residue
  · exact tailEnvelope0020FailureFibreCutoffOne7 residue
  · exact tailEnvelope0020FailureFibreCutoffOne8 residue

theorem tailEnvelope0020FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0020FailureFibreExactOne cell residue ≤ tailEnvelope0020FailureFibreMaxOne cell := by decide

theorem tailEnvelope0020FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0020CountsOne tailEnvelope0020FailureFibreMaxOne 19712 = true := by decide

theorem tailEnvelope0020FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0020CountsOne tailEnvelope0020FailureFibreMaxOne 19796 = true := by decide

theorem tailEnvelope0020FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5552088 (tailEnvelope0020CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0020FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0020FailureCutoffTreeThree0Check :
    tailEnvelope0020FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0020FailureFibreExactThree 0) 5552088 0 = true := by decide

theorem tailEnvelope0020FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5552088 (tailEnvelope0020FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0020FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0020FailureCutoffTreeThree0Check

def tailEnvelope0020FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0020FailureCutoffTreeThree1Check :
    tailEnvelope0020FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0020FailureFibreExactThree 1) 5552088 0 = true := by decide

theorem tailEnvelope0020FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5552088 (tailEnvelope0020FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0020FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0020FailureCutoffTreeThree1Check

def tailEnvelope0020FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0020FailureCutoffTreeThree2Check :
    tailEnvelope0020FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0020FailureFibreExactThree 2) 5552088 0 = true := by decide

theorem tailEnvelope0020FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5552088 (tailEnvelope0020FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0020FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0020FailureCutoffTreeThree2Check

def tailEnvelope0020FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0020FailureCutoffTreeThree3Check :
    tailEnvelope0020FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0020FailureFibreExactThree 3) 5552088 0 = true := by decide

theorem tailEnvelope0020FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5552088 (tailEnvelope0020FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0020FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0020FailureCutoffTreeThree3Check

def tailEnvelope0020FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0020FailureCutoffTreeThree4Check :
    tailEnvelope0020FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0020FailureFibreExactThree 4) 5552088 0 = true := by decide

theorem tailEnvelope0020FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5552088 (tailEnvelope0020FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0020FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0020FailureCutoffTreeThree4Check

def tailEnvelope0020FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0020FailureCutoffTreeThree5Check :
    tailEnvelope0020FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0020FailureFibreExactThree 5) 5552088 0 = true := by decide

theorem tailEnvelope0020FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5552088 (tailEnvelope0020FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0020FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0020FailureCutoffTreeThree5Check

def tailEnvelope0020FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0020FailureCutoffTreeThree6Check :
    tailEnvelope0020FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0020FailureFibreExactThree 6) 5552088 0 = true := by decide

theorem tailEnvelope0020FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5552088 (tailEnvelope0020FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0020FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0020FailureCutoffTreeThree6Check

def tailEnvelope0020FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0020FailureCutoffTreeThree7Check :
    tailEnvelope0020FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0020FailureFibreExactThree 7) 5552088 0 = true := by decide

theorem tailEnvelope0020FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5552088 (tailEnvelope0020FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0020FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0020FailureCutoffTreeThree7Check

def tailEnvelope0020FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0020FailureCutoffTreeThree8Check :
    tailEnvelope0020FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0020FailureFibreExactThree 8) 5552088 0 = true := by decide

theorem tailEnvelope0020FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5552088 (tailEnvelope0020FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0020FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0020FailureCutoffTreeThree8Check

theorem tailEnvelope0020FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5552088 (tailEnvelope0020FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0020FailureFibreCutoffThree0 residue
  · exact tailEnvelope0020FailureFibreCutoffThree1 residue
  · exact tailEnvelope0020FailureFibreCutoffThree2 residue
  · exact tailEnvelope0020FailureFibreCutoffThree3 residue
  · exact tailEnvelope0020FailureFibreCutoffThree4 residue
  · exact tailEnvelope0020FailureFibreCutoffThree5 residue
  · exact tailEnvelope0020FailureFibreCutoffThree6 residue
  · exact tailEnvelope0020FailureFibreCutoffThree7 residue
  · exact tailEnvelope0020FailureFibreCutoffThree8 residue

theorem tailEnvelope0020FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0020FailureFibreExactThree cell residue ≤ tailEnvelope0020FailureFibreMaxThree cell := by decide

theorem tailEnvelope0020FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0020CountsThree tailEnvelope0020FailureFibreMaxThree 19716 = true := by decide

theorem tailEnvelope0020FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0020CountsThree tailEnvelope0020FailureFibreMaxThree 19801 = true := by decide

theorem tailEnvelope0020FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5524467 5552089
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5552088 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0020CountsOne) (fibre := tailEnvelope0020FailureFibreMaxOne) (bound := 19712) tailEnvelope0020FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0020CountsOne tailEnvelope0020FailureFibreMaxOne tailEnvelope0020FailureFibreExactOne
      (lower := 5524467) (upper := 5552088) (N := N) (bound := 19712)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0020FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0020FailureFibreCutoffOne
      tailEnvelope0020FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0020CountsThree) (fibre := tailEnvelope0020FailureFibreMaxThree) (bound := 19716) tailEnvelope0020FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0020CountsThree tailEnvelope0020FailureFibreMaxThree tailEnvelope0020FailureFibreExactThree
      (lower := 5524467) (upper := 5552088) (N := N) (bound := 19716)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0020FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0020FailureFibreCutoffThree
      tailEnvelope0020FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0020FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5524467 5552089
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5552088 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0020CountsOne) (fibre := tailEnvelope0020FailureFibreMaxOne) (bound := 19796) tailEnvelope0020FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0020CountsOne tailEnvelope0020FailureFibreMaxOne tailEnvelope0020FailureFibreExactOne
      (lower := 5524467) (upper := 5552088) (N := N) (bound := 19796)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0020FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0020FailureFibreCutoffOne
      tailEnvelope0020FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0020CountsThree) (fibre := tailEnvelope0020FailureFibreMaxThree) (bound := 19801) tailEnvelope0020FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0020CountsThree tailEnvelope0020FailureFibreMaxThree tailEnvelope0020FailureFibreExactThree
      (lower := 5524467) (upper := 5552088) (N := N) (bound := 19801)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0020FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0020FailureFibreCutoffThree
      tailEnvelope0020FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0021FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![76, 81, 81, 78, 83, 83, 75, 71, 80, 79, 86, 79, 79, 80, 83, 83, 77, 76, 86, 79, 76, 80, 83, 84, 77, 78, 76, 85, 89, 78, 78, 80, 78, 76, 79, 83, 80, 77, 77, 74, 77, 81, 79, 80, 75, 82, 84, 79, 81], ![76, 77, 83, 81, 78, 79, 79, 81, 82, 75, 85, 80, 78, 85, 81, 78, 81, 81, 87, 87, 79, 80, 85, 76, 72, 75, 81, 78, 83, 80, 84, 74, 75, 85, 79, 84, 78, 81, 78, 84, 83, 79, 82, 81, 78, 76, 82, 80, 80], ![76, 83, 81, 80, 79, 75, 77, 81, 80, 81, 79, 80, 74, 77, 76, 83, 76, 86, 77, 81, 74, 79, 79, 81, 82, 84, 80, 76, 78, 76, 75, 79, 79, 82, 81, 80, 78, 76, 79, 78, 83, 83, 81, 76, 75, 81, 76, 81, 77], ![74, 78, 82, 74, 79, 80, 80, 81, 80, 73, 81, 77, 80, 80, 81, 82, 83, 80, 82, 79, 83, 84, 78, 84, 82, 78, 76, 77, 79, 76, 77, 87, 86, 79, 80, 79, 78, 79, 83, 81, 87, 73, 78, 81, 81, 77, 80, 79, 83], ![80, 78, 84, 82, 82, 84, 82, 81, 81, 76, 80, 80, 82, 85, 81, 82, 74, 74, 71, 79, 78, 76, 75, 77, 82, 80, 79, 81, 78, 79, 82, 82, 83, 79, 83, 78, 82, 84, 78, 76, 78, 74, 78, 75, 79, 82, 78, 77, 80], ![81, 76, 77, 81, 85, 75, 82, 81, 79, 78, 76, 79, 85, 82, 77, 81, 81, 82, 82, 76, 86, 80, 74, 79, 79, 82, 81, 81, 78, 85, 78, 71, 81, 83, 77, 78, 87, 80, 76, 80, 73, 77, 86, 79, 83, 85, 78, 73, 80], ![86, 89, 81, 77, 84, 79, 80, 85, 75, 80, 82, 79, 82, 76, 72, 75, 84, 80, 77, 80, 79, 77, 76, 78, 82, 83, 83, 81, 76, 78, 80, 79, 78, 81, 80, 82, 77, 80, 78, 76, 77, 81, 78, 81, 74, 78, 82, 77, 75], ![81, 80, 73, 82, 78, 83, 77, 77, 83, 84, 77, 75, 79, 78, 77, 81, 83, 80, 79, 75, 80, 80, 79, 77, 76, 82, 77, 77, 74, 81, 76, 81, 84, 78, 82, 84, 74, 80, 80, 82, 76, 83, 77, 77, 84, 78, 81, 83, 85], ![79, 77, 80, 83, 79, 85, 83, 75, 78, 79, 75, 76, 81, 77, 84, 77, 82, 78, 79, 76, 83, 85, 79, 78, 80, 76, 79, 78, 82, 79, 80, 81, 77, 77, 81, 79, 80, 84, 79, 84, 80, 80, 79, 85, 80, 76, 85, 83, 76]]

def tailEnvelope0021FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![85, 80, 78, 80, 76, 80, 81, 83, 83, 84, 84, 80, 83, 76, 78, 79, 84, 81, 75, 78, 82, 74, 75, 80, 78, 82, 85, 75, 76, 82, 80, 79, 85, 85, 74, 77, 82, 81, 81, 80, 80, 83, 85, 77, 77, 77, 75, 77, 86], ![81, 78, 77, 75, 82, 82, 83, 79, 84, 77, 78, 74, 79, 83, 78, 75, 76, 81, 78, 77, 83, 76, 78, 88, 83, 82, 80, 71, 79, 83, 77, 82, 80, 82, 75, 74, 82, 81, 78, 83, 75, 79, 82, 78, 76, 82, 83, 78, 87], ![77, 77, 80, 76, 86, 87, 77, 77, 83, 75, 73, 84, 81, 84, 76, 77, 84, 77, 77, 83, 79, 83, 80, 76, 79, 83, 74, 74, 84, 81, 82, 80, 78, 75, 81, 83, 79, 81, 88, 78, 76, 79, 84, 80, 80, 82, 75, 80, 80], ![76, 80, 84, 77, 75, 80, 75, 76, 77, 83, 80, 82, 83, 86, 80, 77, 81, 79, 81, 86, 73, 81, 85, 78, 83, 83, 80, 82, 86, 79, 77, 78, 73, 80, 78, 73, 86, 78, 81, 73, 73, 83, 84, 81, 78, 79, 87, 79, 75], ![79, 82, 81, 78, 78, 75, 77, 78, 80, 83, 84, 80, 77, 79, 76, 76, 80, 83, 87, 75, 78, 81, 82, 80, 78, 82, 82, 80, 79, 77, 82, 81, 72, 79, 82, 80, 78, 81, 74, 81, 82, 79, 81, 76, 82, 73, 80, 81, 80], ![80, 79, 79, 78, 80, 86, 83, 79, 73, 79, 78, 80, 74, 77, 83, 84, 79, 76, 80, 74, 79, 80, 80, 82, 86, 78, 81, 79, 77, 82, 83, 79, 83, 85, 79, 78, 73, 77, 83, 80, 83, 78, 79, 79, 75, 77, 78, 90, 79], ![82, 80, 77, 77, 82, 82, 79, 82, 82, 82, 82, 75, 76, 84, 82, 79, 76, 77, 77, 84, 85, 79, 82, 81, 79, 72, 76, 84, 74, 77, 81, 73, 81, 73, 78, 82, 76, 75, 81, 86, 82, 80, 77, 79, 84, 82, 83, 84, 81], ![79, 80, 77, 90, 81, 79, 82, 81, 77, 76, 85, 83, 80, 76, 80, 87, 77, 76, 79, 78, 82, 80, 79, 77, 76, 75, 82, 82, 79, 79, 75, 80, 78, 80, 84, 83, 82, 83, 80, 83, 83, 75, 79, 85, 80, 82, 78, 78, 74], ![79, 81, 77, 80, 79, 78, 82, 80, 85, 80, 80, 74, 78, 79, 78, 83, 80, 79, 82, 81, 79, 76, 79, 79, 79, 80, 79, 80, 79, 75, 78, 81, 83, 75, 84, 78, 78, 80, 77, 77, 83, 80, 75, 83, 84, 79, 82, 78, 77]]

def tailEnvelope0021FailureFibreMaxOne : Fin 9 → Nat :=
  ![89, 87, 86, 87, 85, 87, 89, 85, 85]

def tailEnvelope0021FailureFibreMaxThree : Fin 9 → Nat :=
  ![86, 88, 88, 87, 87, 90, 86, 90, 85]

theorem tailEnvelope0021FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5579848 (tailEnvelope0021CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0021FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0021FailureCutoffTreeOne0Check :
    tailEnvelope0021FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0021FailureFibreExactOne 0) 5579848 0 = true := by decide

theorem tailEnvelope0021FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5579848 (tailEnvelope0021FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0021FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0021FailureCutoffTreeOne0Check

def tailEnvelope0021FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0021FailureCutoffTreeOne1Check :
    tailEnvelope0021FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0021FailureFibreExactOne 1) 5579848 0 = true := by decide

theorem tailEnvelope0021FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5579848 (tailEnvelope0021FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0021FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0021FailureCutoffTreeOne1Check

def tailEnvelope0021FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0021FailureCutoffTreeOne2Check :
    tailEnvelope0021FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0021FailureFibreExactOne 2) 5579848 0 = true := by decide

theorem tailEnvelope0021FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5579848 (tailEnvelope0021FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0021FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0021FailureCutoffTreeOne2Check

def tailEnvelope0021FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0021FailureCutoffTreeOne3Check :
    tailEnvelope0021FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0021FailureFibreExactOne 3) 5579848 0 = true := by decide

theorem tailEnvelope0021FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5579848 (tailEnvelope0021FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0021FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0021FailureCutoffTreeOne3Check

def tailEnvelope0021FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0021FailureCutoffTreeOne4Check :
    tailEnvelope0021FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0021FailureFibreExactOne 4) 5579848 0 = true := by decide

theorem tailEnvelope0021FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5579848 (tailEnvelope0021FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0021FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0021FailureCutoffTreeOne4Check

def tailEnvelope0021FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0021FailureCutoffTreeOne5Check :
    tailEnvelope0021FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0021FailureFibreExactOne 5) 5579848 0 = true := by decide

theorem tailEnvelope0021FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5579848 (tailEnvelope0021FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0021FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0021FailureCutoffTreeOne5Check

def tailEnvelope0021FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0021FailureCutoffTreeOne6Check :
    tailEnvelope0021FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0021FailureFibreExactOne 6) 5579848 0 = true := by decide

theorem tailEnvelope0021FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5579848 (tailEnvelope0021FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0021FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0021FailureCutoffTreeOne6Check

def tailEnvelope0021FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0021FailureCutoffTreeOne7Check :
    tailEnvelope0021FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0021FailureFibreExactOne 7) 5579848 0 = true := by decide

theorem tailEnvelope0021FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5579848 (tailEnvelope0021FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0021FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0021FailureCutoffTreeOne7Check

def tailEnvelope0021FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0021FailureCutoffTreeOne8Check :
    tailEnvelope0021FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0021FailureFibreExactOne 8) 5579848 0 = true := by decide

theorem tailEnvelope0021FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5579848 (tailEnvelope0021FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0021FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0021FailureCutoffTreeOne8Check

theorem tailEnvelope0021FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5579848 (tailEnvelope0021FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0021FailureFibreCutoffOne0 residue
  · exact tailEnvelope0021FailureFibreCutoffOne1 residue
  · exact tailEnvelope0021FailureFibreCutoffOne2 residue
  · exact tailEnvelope0021FailureFibreCutoffOne3 residue
  · exact tailEnvelope0021FailureFibreCutoffOne4 residue
  · exact tailEnvelope0021FailureFibreCutoffOne5 residue
  · exact tailEnvelope0021FailureFibreCutoffOne6 residue
  · exact tailEnvelope0021FailureFibreCutoffOne7 residue
  · exact tailEnvelope0021FailureFibreCutoffOne8 residue

theorem tailEnvelope0021FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0021FailureFibreExactOne cell residue ≤ tailEnvelope0021FailureFibreMaxOne cell := by decide

theorem tailEnvelope0021FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0021CountsOne tailEnvelope0021FailureFibreMaxOne 19812 = true := by decide

theorem tailEnvelope0021FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0021CountsOne tailEnvelope0021FailureFibreMaxOne 19897 = true := by decide

theorem tailEnvelope0021FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5579848 (tailEnvelope0021CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0021FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0021FailureCutoffTreeThree0Check :
    tailEnvelope0021FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0021FailureFibreExactThree 0) 5579848 0 = true := by decide

theorem tailEnvelope0021FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5579848 (tailEnvelope0021FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0021FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0021FailureCutoffTreeThree0Check

def tailEnvelope0021FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0021FailureCutoffTreeThree1Check :
    tailEnvelope0021FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0021FailureFibreExactThree 1) 5579848 0 = true := by decide

theorem tailEnvelope0021FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5579848 (tailEnvelope0021FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0021FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0021FailureCutoffTreeThree1Check

def tailEnvelope0021FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0021FailureCutoffTreeThree2Check :
    tailEnvelope0021FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0021FailureFibreExactThree 2) 5579848 0 = true := by decide

theorem tailEnvelope0021FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5579848 (tailEnvelope0021FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0021FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0021FailureCutoffTreeThree2Check

def tailEnvelope0021FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0021FailureCutoffTreeThree3Check :
    tailEnvelope0021FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0021FailureFibreExactThree 3) 5579848 0 = true := by decide

theorem tailEnvelope0021FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5579848 (tailEnvelope0021FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0021FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0021FailureCutoffTreeThree3Check

def tailEnvelope0021FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0021FailureCutoffTreeThree4Check :
    tailEnvelope0021FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0021FailureFibreExactThree 4) 5579848 0 = true := by decide

theorem tailEnvelope0021FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5579848 (tailEnvelope0021FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0021FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0021FailureCutoffTreeThree4Check

def tailEnvelope0021FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0021FailureCutoffTreeThree5Check :
    tailEnvelope0021FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0021FailureFibreExactThree 5) 5579848 0 = true := by decide

theorem tailEnvelope0021FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5579848 (tailEnvelope0021FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0021FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0021FailureCutoffTreeThree5Check

def tailEnvelope0021FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0021FailureCutoffTreeThree6Check :
    tailEnvelope0021FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0021FailureFibreExactThree 6) 5579848 0 = true := by decide

theorem tailEnvelope0021FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5579848 (tailEnvelope0021FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0021FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0021FailureCutoffTreeThree6Check

def tailEnvelope0021FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0021FailureCutoffTreeThree7Check :
    tailEnvelope0021FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0021FailureFibreExactThree 7) 5579848 0 = true := by decide

theorem tailEnvelope0021FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5579848 (tailEnvelope0021FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0021FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0021FailureCutoffTreeThree7Check

def tailEnvelope0021FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0021FailureCutoffTreeThree8Check :
    tailEnvelope0021FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0021FailureFibreExactThree 8) 5579848 0 = true := by decide

theorem tailEnvelope0021FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5579848 (tailEnvelope0021FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0021FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0021FailureCutoffTreeThree8Check

theorem tailEnvelope0021FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5579848 (tailEnvelope0021FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0021FailureFibreCutoffThree0 residue
  · exact tailEnvelope0021FailureFibreCutoffThree1 residue
  · exact tailEnvelope0021FailureFibreCutoffThree2 residue
  · exact tailEnvelope0021FailureFibreCutoffThree3 residue
  · exact tailEnvelope0021FailureFibreCutoffThree4 residue
  · exact tailEnvelope0021FailureFibreCutoffThree5 residue
  · exact tailEnvelope0021FailureFibreCutoffThree6 residue
  · exact tailEnvelope0021FailureFibreCutoffThree7 residue
  · exact tailEnvelope0021FailureFibreCutoffThree8 residue

theorem tailEnvelope0021FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0021FailureFibreExactThree cell residue ≤ tailEnvelope0021FailureFibreMaxThree cell := by decide

theorem tailEnvelope0021FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0021CountsThree tailEnvelope0021FailureFibreMaxThree 19812 = true := by decide

theorem tailEnvelope0021FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0021CountsThree tailEnvelope0021FailureFibreMaxThree 19897 = true := by decide

theorem tailEnvelope0021FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5552089 5579849
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5579848 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0021CountsOne) (fibre := tailEnvelope0021FailureFibreMaxOne) (bound := 19812) tailEnvelope0021FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0021CountsOne tailEnvelope0021FailureFibreMaxOne tailEnvelope0021FailureFibreExactOne
      (lower := 5552089) (upper := 5579848) (N := N) (bound := 19812)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0021FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0021FailureFibreCutoffOne
      tailEnvelope0021FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0021CountsThree) (fibre := tailEnvelope0021FailureFibreMaxThree) (bound := 19812) tailEnvelope0021FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0021CountsThree tailEnvelope0021FailureFibreMaxThree tailEnvelope0021FailureFibreExactThree
      (lower := 5552089) (upper := 5579848) (N := N) (bound := 19812)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0021FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0021FailureFibreCutoffThree
      tailEnvelope0021FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0021FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5552089 5579849
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5579848 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0021CountsOne) (fibre := tailEnvelope0021FailureFibreMaxOne) (bound := 19897) tailEnvelope0021FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0021CountsOne tailEnvelope0021FailureFibreMaxOne tailEnvelope0021FailureFibreExactOne
      (lower := 5552089) (upper := 5579848) (N := N) (bound := 19897)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0021FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0021FailureFibreCutoffOne
      tailEnvelope0021FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0021CountsThree) (fibre := tailEnvelope0021FailureFibreMaxThree) (bound := 19897) tailEnvelope0021FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0021CountsThree tailEnvelope0021FailureFibreMaxThree tailEnvelope0021FailureFibreExactThree
      (lower := 5552089) (upper := 5579848) (N := N) (bound := 19897)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0021FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0021FailureFibreCutoffThree
      tailEnvelope0021FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0022FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![76, 82, 81, 78, 83, 83, 75, 72, 80, 80, 86, 79, 79, 80, 83, 84, 77, 77, 86, 79, 77, 80, 85, 85, 77, 78, 76, 85, 89, 78, 78, 80, 78, 76, 79, 83, 81, 77, 77, 74, 79, 81, 80, 82, 75, 82, 84, 79, 83], ![76, 77, 83, 81, 78, 80, 79, 82, 82, 75, 85, 81, 78, 87, 81, 78, 81, 81, 87, 87, 79, 80, 85, 76, 73, 75, 81, 79, 83, 81, 86, 74, 76, 85, 79, 84, 78, 81, 79, 84, 84, 79, 82, 82, 78, 76, 84, 80, 80], ![76, 83, 82, 81, 80, 76, 77, 81, 80, 81, 79, 82, 74, 77, 77, 83, 77, 86, 78, 81, 76, 79, 80, 81, 82, 84, 80, 77, 79, 76, 76, 79, 79, 82, 81, 81, 80, 76, 81, 78, 83, 83, 81, 76, 76, 81, 77, 81, 77], ![74, 78, 82, 74, 79, 80, 80, 82, 80, 74, 82, 77, 81, 81, 81, 82, 83, 80, 83, 79, 85, 84, 78, 84, 82, 79, 77, 78, 80, 77, 77, 87, 86, 79, 81, 79, 78, 79, 83, 81, 87, 75, 79, 81, 82, 77, 80, 79, 83], ![82, 78, 86, 82, 82, 84, 82, 81, 81, 76, 81, 80, 82, 87, 81, 82, 76, 74, 73, 79, 78, 76, 75, 77, 83, 80, 80, 81, 80, 79, 82, 82, 83, 79, 83, 80, 82, 85, 78, 76, 78, 74, 78, 76, 79, 83, 78, 77, 80], ![82, 76, 77, 81, 85, 75, 83, 81, 80, 80, 76, 79, 85, 82, 78, 81, 82, 82, 82, 76, 86, 80, 74, 79, 79, 82, 82, 81, 78, 85, 78, 71, 81, 85, 78, 78, 87, 80, 76, 81, 74, 77, 87, 79, 83, 85, 78, 75, 80], ![87, 89, 82, 77, 85, 79, 81, 85, 75, 81, 83, 79, 82, 76, 73, 75, 85, 80, 77, 80, 79, 78, 76, 79, 82, 83, 83, 81, 76, 79, 80, 81, 78, 82, 80, 82, 77, 81, 78, 77, 77, 81, 79, 81, 74, 80, 82, 79, 75], ![81, 80, 73, 82, 78, 84, 78, 78, 83, 84, 77, 76, 79, 79, 77, 81, 83, 81, 80, 76, 81, 81, 80, 77, 77, 82, 79, 78, 74, 82, 76, 82, 84, 78, 82, 85, 74, 81, 81, 83, 77, 83, 77, 78, 85, 78, 82, 83, 86], ![79, 77, 80, 84, 79, 85, 83, 75, 78, 80, 75, 77, 81, 78, 84, 78, 82, 79, 79, 77, 83, 85, 79, 78, 80, 77, 79, 79, 83, 80, 80, 83, 77, 78, 81, 79, 80, 84, 79, 84, 80, 81, 79, 85, 80, 77, 85, 85, 76]]

def tailEnvelope0022FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![85, 80, 78, 81, 76, 81, 81, 83, 83, 84, 84, 82, 83, 77, 79, 79, 84, 82, 75, 79, 82, 74, 76, 80, 78, 82, 85, 75, 78, 82, 81, 79, 85, 85, 74, 77, 82, 81, 82, 80, 81, 83, 85, 77, 79, 78, 77, 77, 86], ![81, 79, 77, 77, 82, 83, 83, 80, 84, 78, 78, 76, 79, 83, 78, 75, 77, 81, 78, 78, 83, 77, 78, 88, 84, 82, 80, 73, 81, 83, 77, 82, 80, 82, 76, 76, 83, 82, 78, 83, 75, 79, 83, 78, 77, 82, 84, 78, 87], ![77, 78, 80, 76, 86, 87, 78, 77, 85, 75, 74, 84, 82, 84, 76, 77, 86, 77, 79, 83, 79, 83, 81, 76, 80, 84, 75, 74, 85, 81, 83, 81, 79, 75, 82, 83, 79, 81, 88, 79, 77, 79, 85, 80, 80, 83, 75, 80, 81], ![76, 83, 84, 78, 75, 80, 76, 76, 78, 84, 80, 82, 83, 86, 81, 77, 82, 80, 81, 87, 73, 81, 86, 78, 84, 83, 80, 82, 86, 80, 77, 78, 74, 80, 78, 73, 86, 78, 82, 73, 74, 83, 84, 81, 80, 79, 87, 79, 75], ![79, 82, 81, 78, 79, 75, 78, 78, 81, 83, 85, 80, 78, 79, 76, 76, 80, 83, 87, 75, 79, 81, 83, 80, 79, 84, 83, 80, 80, 77, 82, 81, 72, 80, 82, 80, 78, 81, 74, 81, 82, 80, 82, 76, 82, 74, 80, 82, 81], ![80, 81, 80, 78, 81, 86, 83, 80, 73, 79, 79, 80, 77, 77, 83, 86, 79, 77, 80, 74, 79, 81, 80, 83, 86, 78, 81, 79, 77, 82, 83, 79, 84, 85, 80, 78, 73, 78, 84, 80, 83, 78, 79, 80, 75, 78, 78, 90, 80], ![83, 80, 78, 77, 83, 82, 80, 82, 84, 82, 82, 75, 76, 84, 82, 79, 76, 77, 77, 84, 85, 79, 82, 82, 79, 74, 76, 85, 74, 77, 81, 73, 81, 74, 78, 83, 76, 75, 82, 86, 82, 82, 79, 80, 84, 83, 83, 84, 81], ![79, 80, 77, 90, 81, 79, 82, 81, 78, 77, 85, 83, 80, 76, 80, 88, 78, 77, 79, 78, 82, 80, 79, 77, 76, 76, 82, 82, 80, 81, 76, 81, 79, 81, 84, 83, 82, 83, 80, 84, 83, 76, 79, 85, 80, 82, 79, 78, 75], ![79, 82, 77, 81, 80, 79, 82, 81, 85, 80, 82, 74, 78, 81, 78, 84, 80, 79, 82, 81, 79, 78, 79, 81, 79, 80, 80, 80, 79, 76, 78, 82, 83, 75, 84, 78, 79, 81, 77, 78, 83, 80, 75, 83, 84, 79, 82, 78, 78]]

def tailEnvelope0022FailureFibreMaxOne : Fin 9 → Nat :=
  ![89, 87, 86, 87, 87, 87, 89, 86, 85]

def tailEnvelope0022FailureFibreMaxThree : Fin 9 → Nat :=
  ![86, 88, 88, 87, 87, 90, 86, 90, 85]

theorem tailEnvelope0022FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5607747 (tailEnvelope0022CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0022FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0022FailureCutoffTreeOne0Check :
    tailEnvelope0022FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0022FailureFibreExactOne 0) 5607747 0 = true := by decide

theorem tailEnvelope0022FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5607747 (tailEnvelope0022FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0022FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0022FailureCutoffTreeOne0Check

def tailEnvelope0022FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0022FailureCutoffTreeOne1Check :
    tailEnvelope0022FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0022FailureFibreExactOne 1) 5607747 0 = true := by decide

theorem tailEnvelope0022FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5607747 (tailEnvelope0022FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0022FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0022FailureCutoffTreeOne1Check

def tailEnvelope0022FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0022FailureCutoffTreeOne2Check :
    tailEnvelope0022FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0022FailureFibreExactOne 2) 5607747 0 = true := by decide

theorem tailEnvelope0022FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5607747 (tailEnvelope0022FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0022FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0022FailureCutoffTreeOne2Check

def tailEnvelope0022FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0022FailureCutoffTreeOne3Check :
    tailEnvelope0022FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0022FailureFibreExactOne 3) 5607747 0 = true := by decide

theorem tailEnvelope0022FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5607747 (tailEnvelope0022FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0022FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0022FailureCutoffTreeOne3Check

def tailEnvelope0022FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0022FailureCutoffTreeOne4Check :
    tailEnvelope0022FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0022FailureFibreExactOne 4) 5607747 0 = true := by decide

theorem tailEnvelope0022FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5607747 (tailEnvelope0022FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0022FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0022FailureCutoffTreeOne4Check

def tailEnvelope0022FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0022FailureCutoffTreeOne5Check :
    tailEnvelope0022FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0022FailureFibreExactOne 5) 5607747 0 = true := by decide

theorem tailEnvelope0022FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5607747 (tailEnvelope0022FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0022FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0022FailureCutoffTreeOne5Check

def tailEnvelope0022FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0022FailureCutoffTreeOne6Check :
    tailEnvelope0022FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0022FailureFibreExactOne 6) 5607747 0 = true := by decide

theorem tailEnvelope0022FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5607747 (tailEnvelope0022FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0022FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0022FailureCutoffTreeOne6Check

def tailEnvelope0022FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0022FailureCutoffTreeOne7Check :
    tailEnvelope0022FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0022FailureFibreExactOne 7) 5607747 0 = true := by decide

theorem tailEnvelope0022FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5607747 (tailEnvelope0022FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0022FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0022FailureCutoffTreeOne7Check

def tailEnvelope0022FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0022FailureCutoffTreeOne8Check :
    tailEnvelope0022FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0022FailureFibreExactOne 8) 5607747 0 = true := by decide

theorem tailEnvelope0022FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5607747 (tailEnvelope0022FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0022FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0022FailureCutoffTreeOne8Check

theorem tailEnvelope0022FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5607747 (tailEnvelope0022FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0022FailureFibreCutoffOne0 residue
  · exact tailEnvelope0022FailureFibreCutoffOne1 residue
  · exact tailEnvelope0022FailureFibreCutoffOne2 residue
  · exact tailEnvelope0022FailureFibreCutoffOne3 residue
  · exact tailEnvelope0022FailureFibreCutoffOne4 residue
  · exact tailEnvelope0022FailureFibreCutoffOne5 residue
  · exact tailEnvelope0022FailureFibreCutoffOne6 residue
  · exact tailEnvelope0022FailureFibreCutoffOne7 residue
  · exact tailEnvelope0022FailureFibreCutoffOne8 residue

theorem tailEnvelope0022FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0022FailureFibreExactOne cell residue ≤ tailEnvelope0022FailureFibreMaxOne cell := by decide

theorem tailEnvelope0022FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0022CountsOne tailEnvelope0022FailureFibreMaxOne 19900 = true := by decide

theorem tailEnvelope0022FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0022CountsOne tailEnvelope0022FailureFibreMaxOne 19986 = true := by decide

theorem tailEnvelope0022FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5607747 (tailEnvelope0022CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0022FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0022FailureCutoffTreeThree0Check :
    tailEnvelope0022FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0022FailureFibreExactThree 0) 5607747 0 = true := by decide

theorem tailEnvelope0022FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5607747 (tailEnvelope0022FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0022FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0022FailureCutoffTreeThree0Check

def tailEnvelope0022FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0022FailureCutoffTreeThree1Check :
    tailEnvelope0022FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0022FailureFibreExactThree 1) 5607747 0 = true := by decide

theorem tailEnvelope0022FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5607747 (tailEnvelope0022FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0022FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0022FailureCutoffTreeThree1Check

def tailEnvelope0022FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0022FailureCutoffTreeThree2Check :
    tailEnvelope0022FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0022FailureFibreExactThree 2) 5607747 0 = true := by decide

theorem tailEnvelope0022FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5607747 (tailEnvelope0022FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0022FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0022FailureCutoffTreeThree2Check

def tailEnvelope0022FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0022FailureCutoffTreeThree3Check :
    tailEnvelope0022FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0022FailureFibreExactThree 3) 5607747 0 = true := by decide

theorem tailEnvelope0022FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5607747 (tailEnvelope0022FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0022FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0022FailureCutoffTreeThree3Check

def tailEnvelope0022FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0022FailureCutoffTreeThree4Check :
    tailEnvelope0022FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0022FailureFibreExactThree 4) 5607747 0 = true := by decide

theorem tailEnvelope0022FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5607747 (tailEnvelope0022FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0022FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0022FailureCutoffTreeThree4Check

def tailEnvelope0022FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0022FailureCutoffTreeThree5Check :
    tailEnvelope0022FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0022FailureFibreExactThree 5) 5607747 0 = true := by decide

theorem tailEnvelope0022FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5607747 (tailEnvelope0022FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0022FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0022FailureCutoffTreeThree5Check

def tailEnvelope0022FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0022FailureCutoffTreeThree6Check :
    tailEnvelope0022FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0022FailureFibreExactThree 6) 5607747 0 = true := by decide

theorem tailEnvelope0022FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5607747 (tailEnvelope0022FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0022FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0022FailureCutoffTreeThree6Check

def tailEnvelope0022FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0022FailureCutoffTreeThree7Check :
    tailEnvelope0022FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0022FailureFibreExactThree 7) 5607747 0 = true := by decide

theorem tailEnvelope0022FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5607747 (tailEnvelope0022FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0022FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0022FailureCutoffTreeThree7Check

def tailEnvelope0022FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0022FailureCutoffTreeThree8Check :
    tailEnvelope0022FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0022FailureFibreExactThree 8) 5607747 0 = true := by decide

theorem tailEnvelope0022FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5607747 (tailEnvelope0022FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0022FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0022FailureCutoffTreeThree8Check

theorem tailEnvelope0022FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5607747 (tailEnvelope0022FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0022FailureFibreCutoffThree0 residue
  · exact tailEnvelope0022FailureFibreCutoffThree1 residue
  · exact tailEnvelope0022FailureFibreCutoffThree2 residue
  · exact tailEnvelope0022FailureFibreCutoffThree3 residue
  · exact tailEnvelope0022FailureFibreCutoffThree4 residue
  · exact tailEnvelope0022FailureFibreCutoffThree5 residue
  · exact tailEnvelope0022FailureFibreCutoffThree6 residue
  · exact tailEnvelope0022FailureFibreCutoffThree7 residue
  · exact tailEnvelope0022FailureFibreCutoffThree8 residue

theorem tailEnvelope0022FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0022FailureFibreExactThree cell residue ≤ tailEnvelope0022FailureFibreMaxThree cell := by decide

theorem tailEnvelope0022FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0022CountsThree tailEnvelope0022FailureFibreMaxThree 19910 = true := by decide

theorem tailEnvelope0022FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0022CountsThree tailEnvelope0022FailureFibreMaxThree 19995 = true := by decide

theorem tailEnvelope0022FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5579849 5607748
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5607747 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0022CountsOne) (fibre := tailEnvelope0022FailureFibreMaxOne) (bound := 19900) tailEnvelope0022FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0022CountsOne tailEnvelope0022FailureFibreMaxOne tailEnvelope0022FailureFibreExactOne
      (lower := 5579849) (upper := 5607747) (N := N) (bound := 19900)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0022FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0022FailureFibreCutoffOne
      tailEnvelope0022FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0022CountsThree) (fibre := tailEnvelope0022FailureFibreMaxThree) (bound := 19910) tailEnvelope0022FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0022CountsThree tailEnvelope0022FailureFibreMaxThree tailEnvelope0022FailureFibreExactThree
      (lower := 5579849) (upper := 5607747) (N := N) (bound := 19910)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0022FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0022FailureFibreCutoffThree
      tailEnvelope0022FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0022FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5579849 5607748
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5607747 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0022CountsOne) (fibre := tailEnvelope0022FailureFibreMaxOne) (bound := 19986) tailEnvelope0022FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0022CountsOne tailEnvelope0022FailureFibreMaxOne tailEnvelope0022FailureFibreExactOne
      (lower := 5579849) (upper := 5607747) (N := N) (bound := 19986)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0022FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0022FailureFibreCutoffOne
      tailEnvelope0022FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0022CountsThree) (fibre := tailEnvelope0022FailureFibreMaxThree) (bound := 19995) tailEnvelope0022FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0022CountsThree tailEnvelope0022FailureFibreMaxThree tailEnvelope0022FailureFibreExactThree
      (lower := 5579849) (upper := 5607747) (N := N) (bound := 19995)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0022FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0022FailureFibreCutoffThree
      tailEnvelope0022FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0023FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![77, 82, 81, 80, 83, 85, 76, 72, 81, 80, 86, 79, 79, 80, 83, 84, 77, 77, 86, 80, 77, 82, 85, 85, 77, 79, 76, 85, 89, 78, 78, 81, 78, 77, 79, 84, 81, 80, 78, 75, 79, 82, 81, 82, 75, 82, 84, 79, 83], ![76, 77, 83, 81, 79, 80, 79, 82, 82, 75, 86, 81, 79, 87, 81, 79, 81, 81, 87, 87, 79, 81, 86, 77, 75, 75, 82, 79, 83, 82, 86, 74, 77, 85, 79, 84, 79, 82, 79, 85, 84, 79, 82, 83, 78, 78, 84, 81, 80], ![76, 84, 82, 82, 80, 79, 77, 81, 80, 81, 79, 84, 74, 78, 77, 85, 77, 87, 78, 83, 76, 80, 80, 81, 83, 84, 80, 78, 79, 77, 76, 79, 79, 82, 81, 81, 80, 77, 81, 78, 83, 83, 81, 77, 76, 81, 77, 82, 77], ![74, 79, 82, 75, 80, 81, 80, 82, 81, 75, 83, 78, 81, 81, 81, 82, 83, 81, 83, 81, 86, 84, 78, 84, 82, 80, 79, 79, 80, 77, 77, 87, 86, 79, 81, 82, 78, 79, 83, 82, 87, 76, 80, 83, 84, 78, 80, 79, 83], ![82, 79, 86, 82, 82, 84, 82, 82, 81, 77, 81, 80, 82, 87, 82, 84, 76, 75, 73, 79, 78, 76, 76, 77, 83, 80, 80, 81, 80, 80, 83, 82, 85, 79, 84, 80, 82, 85, 78, 76, 78, 74, 79, 77, 79, 83, 78, 77, 81], ![82, 76, 77, 83, 85, 76, 84, 81, 81, 80, 76, 79, 86, 82, 78, 81, 82, 82, 83, 76, 86, 80, 75, 80, 80, 83, 82, 81, 78, 85, 79, 71, 83, 85, 78, 78, 87, 80, 77, 82, 75, 78, 87, 80, 83, 85, 79, 75, 81], ![87, 89, 82, 77, 85, 79, 81, 85, 76, 81, 83, 79, 83, 76, 74, 75, 85, 80, 77, 80, 80, 78, 77, 79, 82, 83, 84, 81, 77, 79, 82, 81, 79, 82, 80, 82, 78, 81, 78, 77, 77, 81, 79, 81, 75, 80, 82, 79, 78], ![82, 80, 74, 82, 80, 84, 78, 78, 83, 85, 78, 76, 80, 79, 78, 81, 83, 81, 81, 76, 83, 82, 80, 78, 77, 82, 80, 78, 76, 82, 76, 82, 84, 78, 83, 85, 74, 82, 81, 84, 77, 83, 77, 78, 85, 79, 82, 83, 86], ![80, 77, 81, 84, 79, 85, 83, 76, 79, 80, 76, 77, 82, 78, 85, 78, 83, 79, 80, 77, 83, 85, 79, 78, 80, 77, 79, 79, 84, 81, 81, 84, 77, 78, 81, 80, 80, 85, 79, 84, 80, 82, 79, 86, 81, 77, 86, 85, 76]]

def tailEnvelope0023FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![85, 80, 79, 81, 76, 82, 81, 83, 83, 84, 85, 83, 83, 78, 79, 79, 84, 83, 75, 79, 82, 74, 76, 80, 78, 82, 86, 77, 78, 84, 81, 79, 85, 85, 74, 78, 82, 82, 82, 81, 82, 84, 85, 78, 80, 79, 77, 77, 86], ![82, 79, 77, 77, 83, 83, 83, 80, 84, 78, 78, 76, 80, 83, 78, 75, 77, 82, 79, 79, 84, 79, 78, 88, 84, 83, 80, 74, 81, 83, 77, 82, 80, 83, 77, 77, 84, 82, 78, 83, 75, 80, 83, 79, 77, 82, 84, 78, 87], ![78, 78, 81, 76, 86, 87, 78, 78, 85, 76, 74, 85, 82, 84, 77, 78, 86, 78, 79, 83, 79, 83, 81, 77, 80, 87, 75, 75, 85, 81, 83, 82, 79, 76, 82, 83, 79, 81, 88, 80, 77, 79, 86, 80, 81, 83, 75, 80, 81], ![77, 83, 85, 78, 75, 81, 76, 77, 78, 84, 80, 82, 83, 86, 81, 78, 83, 80, 82, 87, 74, 82, 86, 79, 85, 83, 80, 82, 86, 80, 78, 78, 74, 81, 78, 74, 86, 78, 84, 73, 75, 83, 84, 81, 80, 79, 88, 79, 76], ![79, 82, 81, 79, 79, 77, 78, 79, 81, 84, 85, 81, 79, 80, 76, 76, 80, 83, 87, 77, 79, 81, 83, 81, 79, 84, 84, 80, 80, 77, 83, 81, 72, 80, 82, 80, 79, 81, 75, 81, 84, 80, 83, 76, 83, 74, 81, 82, 81], ![81, 82, 80, 79, 81, 86, 85, 80, 73, 79, 79, 80, 77, 77, 85, 86, 80, 78, 80, 74, 80, 81, 80, 84, 86, 78, 83, 79, 78, 83, 83, 80, 84, 85, 81, 78, 74, 78, 84, 80, 83, 78, 80, 80, 77, 78, 78, 91, 80], ![83, 80, 78, 77, 83, 83, 80, 83, 84, 82, 83, 75, 76, 85, 82, 79, 77, 77, 78, 84, 85, 79, 84, 82, 81, 74, 77, 85, 74, 77, 81, 73, 82, 74, 80, 83, 78, 75, 83, 86, 84, 82, 80, 80, 84, 83, 84, 84, 81], ![80, 80, 77, 90, 81, 79, 83, 81, 79, 77, 85, 83, 81, 77, 81, 89, 78, 77, 79, 78, 82, 81, 80, 79, 77, 76, 82, 82, 80, 81, 77, 82, 80, 81, 84, 83, 82, 83, 80, 84, 83, 76, 79, 85, 80, 83, 79, 80, 75], ![79, 82, 77, 81, 83, 79, 83, 81, 85, 80, 82, 74, 79, 81, 79, 84, 80, 79, 82, 81, 80, 78, 80, 82, 80, 80, 80, 80, 79, 76, 78, 82, 83, 75, 84, 78, 80, 82, 78, 79, 83, 80, 76, 83, 84, 80, 82, 79, 78]]

def tailEnvelope0023FailureFibreMaxOne : Fin 9 → Nat :=
  ![89, 87, 87, 87, 87, 87, 89, 86, 86]

def tailEnvelope0023FailureFibreMaxThree : Fin 9 → Nat :=
  ![86, 88, 88, 88, 87, 91, 86, 90, 85]

theorem tailEnvelope0023FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5635785 (tailEnvelope0023CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0023FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0023FailureCutoffTreeOne0Check :
    tailEnvelope0023FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0023FailureFibreExactOne 0) 5635785 0 = true := by decide

theorem tailEnvelope0023FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5635785 (tailEnvelope0023FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0023FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0023FailureCutoffTreeOne0Check

def tailEnvelope0023FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0023FailureCutoffTreeOne1Check :
    tailEnvelope0023FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0023FailureFibreExactOne 1) 5635785 0 = true := by decide

theorem tailEnvelope0023FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5635785 (tailEnvelope0023FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0023FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0023FailureCutoffTreeOne1Check

def tailEnvelope0023FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0023FailureCutoffTreeOne2Check :
    tailEnvelope0023FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0023FailureFibreExactOne 2) 5635785 0 = true := by decide

theorem tailEnvelope0023FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5635785 (tailEnvelope0023FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0023FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0023FailureCutoffTreeOne2Check

def tailEnvelope0023FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0023FailureCutoffTreeOne3Check :
    tailEnvelope0023FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0023FailureFibreExactOne 3) 5635785 0 = true := by decide

theorem tailEnvelope0023FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5635785 (tailEnvelope0023FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0023FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0023FailureCutoffTreeOne3Check

def tailEnvelope0023FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0023FailureCutoffTreeOne4Check :
    tailEnvelope0023FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0023FailureFibreExactOne 4) 5635785 0 = true := by decide

theorem tailEnvelope0023FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5635785 (tailEnvelope0023FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0023FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0023FailureCutoffTreeOne4Check

def tailEnvelope0023FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0023FailureCutoffTreeOne5Check :
    tailEnvelope0023FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0023FailureFibreExactOne 5) 5635785 0 = true := by decide

theorem tailEnvelope0023FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5635785 (tailEnvelope0023FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0023FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0023FailureCutoffTreeOne5Check

def tailEnvelope0023FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0023FailureCutoffTreeOne6Check :
    tailEnvelope0023FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0023FailureFibreExactOne 6) 5635785 0 = true := by decide

theorem tailEnvelope0023FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5635785 (tailEnvelope0023FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0023FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0023FailureCutoffTreeOne6Check

def tailEnvelope0023FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0023FailureCutoffTreeOne7Check :
    tailEnvelope0023FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0023FailureFibreExactOne 7) 5635785 0 = true := by decide

theorem tailEnvelope0023FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5635785 (tailEnvelope0023FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0023FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0023FailureCutoffTreeOne7Check

def tailEnvelope0023FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0023FailureCutoffTreeOne8Check :
    tailEnvelope0023FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0023FailureFibreExactOne 8) 5635785 0 = true := by decide

theorem tailEnvelope0023FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5635785 (tailEnvelope0023FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0023FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0023FailureCutoffTreeOne8Check

theorem tailEnvelope0023FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5635785 (tailEnvelope0023FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0023FailureFibreCutoffOne0 residue
  · exact tailEnvelope0023FailureFibreCutoffOne1 residue
  · exact tailEnvelope0023FailureFibreCutoffOne2 residue
  · exact tailEnvelope0023FailureFibreCutoffOne3 residue
  · exact tailEnvelope0023FailureFibreCutoffOne4 residue
  · exact tailEnvelope0023FailureFibreCutoffOne5 residue
  · exact tailEnvelope0023FailureFibreCutoffOne6 residue
  · exact tailEnvelope0023FailureFibreCutoffOne7 residue
  · exact tailEnvelope0023FailureFibreCutoffOne8 residue

theorem tailEnvelope0023FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0023FailureFibreExactOne cell residue ≤ tailEnvelope0023FailureFibreMaxOne cell := by decide

theorem tailEnvelope0023FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0023CountsOne tailEnvelope0023FailureFibreMaxOne 20007 = true := by decide

theorem tailEnvelope0023FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0023CountsOne tailEnvelope0023FailureFibreMaxOne 20093 = true := by decide

theorem tailEnvelope0023FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5635785 (tailEnvelope0023CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0023FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0023FailureCutoffTreeThree0Check :
    tailEnvelope0023FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0023FailureFibreExactThree 0) 5635785 0 = true := by decide

theorem tailEnvelope0023FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5635785 (tailEnvelope0023FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0023FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0023FailureCutoffTreeThree0Check

def tailEnvelope0023FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0023FailureCutoffTreeThree1Check :
    tailEnvelope0023FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0023FailureFibreExactThree 1) 5635785 0 = true := by decide

theorem tailEnvelope0023FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5635785 (tailEnvelope0023FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0023FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0023FailureCutoffTreeThree1Check

def tailEnvelope0023FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0023FailureCutoffTreeThree2Check :
    tailEnvelope0023FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0023FailureFibreExactThree 2) 5635785 0 = true := by decide

theorem tailEnvelope0023FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5635785 (tailEnvelope0023FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0023FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0023FailureCutoffTreeThree2Check

def tailEnvelope0023FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0023FailureCutoffTreeThree3Check :
    tailEnvelope0023FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0023FailureFibreExactThree 3) 5635785 0 = true := by decide

theorem tailEnvelope0023FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5635785 (tailEnvelope0023FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0023FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0023FailureCutoffTreeThree3Check

def tailEnvelope0023FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0023FailureCutoffTreeThree4Check :
    tailEnvelope0023FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0023FailureFibreExactThree 4) 5635785 0 = true := by decide

theorem tailEnvelope0023FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5635785 (tailEnvelope0023FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0023FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0023FailureCutoffTreeThree4Check

def tailEnvelope0023FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0023FailureCutoffTreeThree5Check :
    tailEnvelope0023FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0023FailureFibreExactThree 5) 5635785 0 = true := by decide

theorem tailEnvelope0023FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5635785 (tailEnvelope0023FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0023FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0023FailureCutoffTreeThree5Check

def tailEnvelope0023FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0023FailureCutoffTreeThree6Check :
    tailEnvelope0023FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0023FailureFibreExactThree 6) 5635785 0 = true := by decide

theorem tailEnvelope0023FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5635785 (tailEnvelope0023FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0023FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0023FailureCutoffTreeThree6Check

def tailEnvelope0023FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0023FailureCutoffTreeThree7Check :
    tailEnvelope0023FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0023FailureFibreExactThree 7) 5635785 0 = true := by decide

theorem tailEnvelope0023FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5635785 (tailEnvelope0023FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0023FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0023FailureCutoffTreeThree7Check

def tailEnvelope0023FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0023FailureCutoffTreeThree8Check :
    tailEnvelope0023FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0023FailureFibreExactThree 8) 5635785 0 = true := by decide

theorem tailEnvelope0023FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5635785 (tailEnvelope0023FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0023FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0023FailureCutoffTreeThree8Check

theorem tailEnvelope0023FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5635785 (tailEnvelope0023FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0023FailureFibreCutoffThree0 residue
  · exact tailEnvelope0023FailureFibreCutoffThree1 residue
  · exact tailEnvelope0023FailureFibreCutoffThree2 residue
  · exact tailEnvelope0023FailureFibreCutoffThree3 residue
  · exact tailEnvelope0023FailureFibreCutoffThree4 residue
  · exact tailEnvelope0023FailureFibreCutoffThree5 residue
  · exact tailEnvelope0023FailureFibreCutoffThree6 residue
  · exact tailEnvelope0023FailureFibreCutoffThree7 residue
  · exact tailEnvelope0023FailureFibreCutoffThree8 residue

theorem tailEnvelope0023FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0023FailureFibreExactThree cell residue ≤ tailEnvelope0023FailureFibreMaxThree cell := by decide

theorem tailEnvelope0023FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0023CountsThree tailEnvelope0023FailureFibreMaxThree 20007 = true := by decide

theorem tailEnvelope0023FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0023CountsThree tailEnvelope0023FailureFibreMaxThree 20092 = true := by decide

theorem tailEnvelope0023FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5607748 5635786
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5635785 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0023CountsOne) (fibre := tailEnvelope0023FailureFibreMaxOne) (bound := 20007) tailEnvelope0023FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0023CountsOne tailEnvelope0023FailureFibreMaxOne tailEnvelope0023FailureFibreExactOne
      (lower := 5607748) (upper := 5635785) (N := N) (bound := 20007)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0023FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0023FailureFibreCutoffOne
      tailEnvelope0023FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0023CountsThree) (fibre := tailEnvelope0023FailureFibreMaxThree) (bound := 20007) tailEnvelope0023FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0023CountsThree tailEnvelope0023FailureFibreMaxThree tailEnvelope0023FailureFibreExactThree
      (lower := 5607748) (upper := 5635785) (N := N) (bound := 20007)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0023FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0023FailureFibreCutoffThree
      tailEnvelope0023FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0023FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5607748 5635786
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5635785 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0023CountsOne) (fibre := tailEnvelope0023FailureFibreMaxOne) (bound := 20093) tailEnvelope0023FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0023CountsOne tailEnvelope0023FailureFibreMaxOne tailEnvelope0023FailureFibreExactOne
      (lower := 5607748) (upper := 5635785) (N := N) (bound := 20093)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0023FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0023FailureFibreCutoffOne
      tailEnvelope0023FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0023CountsThree) (fibre := tailEnvelope0023FailureFibreMaxThree) (bound := 20092) tailEnvelope0023FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0023CountsThree tailEnvelope0023FailureFibreMaxThree tailEnvelope0023FailureFibreExactThree
      (lower := 5607748) (upper := 5635785) (N := N) (bound := 20092)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0023FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0023FailureFibreCutoffThree
      tailEnvelope0023FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0024FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![77, 82, 82, 80, 84, 85, 76, 72, 81, 80, 86, 79, 80, 80, 84, 84, 78, 77, 87, 80, 78, 82, 86, 85, 78, 79, 76, 85, 89, 78, 78, 83, 79, 77, 80, 84, 82, 80, 79, 75, 80, 82, 81, 82, 75, 82, 85, 79, 83], ![77, 77, 83, 81, 80, 81, 80, 82, 83, 76, 87, 82, 80, 87, 82, 79, 81, 81, 89, 87, 81, 81, 87, 77, 75, 76, 82, 80, 84, 82, 87, 74, 77, 85, 79, 84, 80, 82, 80, 85, 84, 79, 83, 83, 79, 78, 84, 81, 80], ![77, 84, 84, 82, 81, 79, 77, 81, 80, 81, 80, 84, 75, 78, 77, 85, 78, 87, 79, 83, 77, 80, 80, 81, 83, 85, 81, 78, 79, 77, 76, 79, 79, 83, 81, 82, 80, 77, 81, 78, 83, 83, 81, 78, 77, 82, 77, 82, 79], ![75, 79, 83, 75, 81, 81, 80, 83, 82, 76, 84, 78, 81, 81, 81, 82, 84, 81, 83, 81, 86, 85, 78, 84, 83, 81, 79, 79, 80, 78, 77, 87, 86, 80, 81, 83, 78, 79, 83, 82, 88, 77, 81, 84, 84, 78, 80, 80, 83], ![85, 79, 86, 82, 82, 84, 82, 82, 81, 77, 81, 80, 82, 88, 82, 84, 79, 76, 74, 79, 78, 76, 76, 78, 83, 81, 80, 81, 80, 80, 83, 84, 85, 80, 84, 80, 82, 86, 78, 77, 78, 75, 79, 77, 80, 83, 78, 79, 81], ![82, 76, 77, 83, 86, 77, 84, 83, 82, 80, 76, 79, 86, 83, 78, 82, 83, 82, 83, 76, 86, 81, 76, 81, 82, 83, 82, 82, 78, 86, 79, 72, 83, 85, 78, 78, 87, 80, 78, 83, 75, 78, 87, 80, 83, 85, 81, 75, 81], ![87, 89, 82, 78, 85, 80, 81, 85, 76, 81, 85, 80, 83, 78, 74, 76, 85, 80, 77, 81, 80, 78, 77, 79, 82, 83, 84, 82, 77, 81, 82, 82, 80, 84, 80, 82, 78, 81, 79, 78, 77, 81, 80, 81, 75, 81, 83, 80, 78], ![83, 81, 74, 83, 80, 84, 79, 79, 83, 86, 79, 77, 80, 79, 80, 81, 83, 82, 81, 77, 84, 83, 81, 78, 77, 82, 80, 78, 76, 82, 76, 82, 84, 78, 83, 85, 75, 82, 82, 84, 77, 83, 77, 78, 86, 79, 82, 83, 86], ![80, 80, 81, 84, 79, 85, 83, 77, 79, 82, 76, 78, 82, 79, 86, 78, 83, 79, 80, 77, 83, 85, 79, 78, 81, 77, 79, 80, 84, 82, 81, 84, 78, 78, 82, 80, 80, 86, 79, 84, 81, 82, 80, 86, 81, 78, 86, 85, 77]]

def tailEnvelope0024FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![85, 81, 80, 81, 76, 82, 81, 83, 83, 85, 86, 83, 86, 78, 79, 79, 85, 83, 77, 79, 83, 74, 76, 80, 78, 82, 88, 77, 80, 84, 81, 79, 85, 85, 77, 78, 83, 82, 82, 81, 82, 84, 87, 79, 81, 79, 78, 77, 86], ![82, 80, 78, 78, 83, 83, 83, 80, 85, 79, 79, 76, 80, 83, 78, 76, 78, 83, 80, 80, 85, 79, 78, 88, 85, 83, 81, 74, 81, 84, 77, 83, 81, 83, 78, 77, 84, 82, 78, 83, 75, 80, 83, 79, 77, 82, 84, 78, 87], ![79, 78, 82, 76, 86, 87, 80, 78, 87, 76, 75, 85, 82, 84, 78, 78, 87, 78, 79, 84, 79, 83, 82, 77, 81, 87, 76, 75, 85, 81, 83, 82, 79, 76, 82, 83, 79, 81, 88, 80, 77, 80, 86, 81, 81, 83, 75, 82, 81], ![77, 84, 86, 78, 77, 81, 76, 77, 78, 84, 81, 82, 84, 86, 83, 79, 83, 81, 82, 87, 74, 82, 86, 79, 85, 83, 80, 82, 86, 81, 79, 79, 77, 81, 79, 74, 86, 80, 84, 74, 75, 83, 84, 81, 80, 80, 88, 80, 77], ![79, 82, 82, 79, 80, 77, 79, 80, 83, 84, 86, 81, 79, 82, 76, 76, 80, 83, 87, 78, 79, 82, 83, 82, 79, 85, 84, 81, 80, 78, 83, 81, 72, 80, 82, 81, 79, 82, 76, 82, 85, 81, 83, 77, 83, 76, 81, 82, 81], ![83, 82, 80, 79, 81, 86, 85, 80, 73, 80, 79, 81, 77, 78, 85, 86, 80, 79, 80, 76, 80, 81, 80, 84, 86, 79, 83, 81, 78, 83, 84, 80, 85, 86, 81, 79, 75, 78, 84, 80, 83, 79, 80, 80, 77, 78, 79, 91, 81], ![83, 81, 78, 77, 84, 83, 80, 84, 84, 83, 83, 75, 76, 85, 82, 79, 77, 78, 78, 84, 85, 80, 84, 83, 81, 75, 77, 85, 74, 77, 82, 74, 82, 74, 80, 83, 78, 76, 83, 87, 84, 82, 80, 81, 84, 83, 84, 84, 82], ![80, 80, 77, 90, 81, 80, 83, 82, 79, 77, 85, 83, 82, 78, 82, 90, 78, 79, 80, 78, 82, 82, 80, 79, 77, 76, 82, 82, 81, 81, 78, 82, 80, 81, 84, 83, 82, 83, 81, 85, 84, 76, 79, 85, 81, 83, 81, 80, 75], ![79, 82, 77, 82, 83, 81, 83, 82, 85, 80, 83, 75, 79, 81, 79, 84, 80, 79, 82, 81, 80, 79, 82, 82, 81, 80, 81, 80, 80, 76, 79, 82, 83, 75, 84, 80, 81, 83, 79, 79, 83, 81, 76, 83, 85, 80, 83, 79, 78]]

def tailEnvelope0024FailureFibreMaxOne : Fin 9 → Nat :=
  ![89, 89, 87, 88, 88, 87, 89, 86, 86]

def tailEnvelope0024FailureFibreMaxThree : Fin 9 → Nat :=
  ![88, 88, 88, 88, 87, 91, 87, 90, 85]

theorem tailEnvelope0024FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5663963 (tailEnvelope0024CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0024FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0024FailureCutoffTreeOne0Check :
    tailEnvelope0024FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0024FailureFibreExactOne 0) 5663963 0 = true := by decide

theorem tailEnvelope0024FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5663963 (tailEnvelope0024FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0024FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0024FailureCutoffTreeOne0Check

def tailEnvelope0024FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0024FailureCutoffTreeOne1Check :
    tailEnvelope0024FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0024FailureFibreExactOne 1) 5663963 0 = true := by decide

theorem tailEnvelope0024FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5663963 (tailEnvelope0024FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0024FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0024FailureCutoffTreeOne1Check

def tailEnvelope0024FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0024FailureCutoffTreeOne2Check :
    tailEnvelope0024FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0024FailureFibreExactOne 2) 5663963 0 = true := by decide

theorem tailEnvelope0024FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5663963 (tailEnvelope0024FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0024FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0024FailureCutoffTreeOne2Check

def tailEnvelope0024FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0024FailureCutoffTreeOne3Check :
    tailEnvelope0024FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0024FailureFibreExactOne 3) 5663963 0 = true := by decide

theorem tailEnvelope0024FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5663963 (tailEnvelope0024FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0024FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0024FailureCutoffTreeOne3Check

def tailEnvelope0024FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0024FailureCutoffTreeOne4Check :
    tailEnvelope0024FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0024FailureFibreExactOne 4) 5663963 0 = true := by decide

theorem tailEnvelope0024FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5663963 (tailEnvelope0024FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0024FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0024FailureCutoffTreeOne4Check

def tailEnvelope0024FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0024FailureCutoffTreeOne5Check :
    tailEnvelope0024FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0024FailureFibreExactOne 5) 5663963 0 = true := by decide

theorem tailEnvelope0024FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5663963 (tailEnvelope0024FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0024FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0024FailureCutoffTreeOne5Check

def tailEnvelope0024FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0024FailureCutoffTreeOne6Check :
    tailEnvelope0024FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0024FailureFibreExactOne 6) 5663963 0 = true := by decide

theorem tailEnvelope0024FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5663963 (tailEnvelope0024FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0024FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0024FailureCutoffTreeOne6Check

def tailEnvelope0024FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0024FailureCutoffTreeOne7Check :
    tailEnvelope0024FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0024FailureFibreExactOne 7) 5663963 0 = true := by decide

theorem tailEnvelope0024FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5663963 (tailEnvelope0024FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0024FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0024FailureCutoffTreeOne7Check

def tailEnvelope0024FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0024FailureCutoffTreeOne8Check :
    tailEnvelope0024FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0024FailureFibreExactOne 8) 5663963 0 = true := by decide

theorem tailEnvelope0024FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5663963 (tailEnvelope0024FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0024FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0024FailureCutoffTreeOne8Check

theorem tailEnvelope0024FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5663963 (tailEnvelope0024FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0024FailureFibreCutoffOne0 residue
  · exact tailEnvelope0024FailureFibreCutoffOne1 residue
  · exact tailEnvelope0024FailureFibreCutoffOne2 residue
  · exact tailEnvelope0024FailureFibreCutoffOne3 residue
  · exact tailEnvelope0024FailureFibreCutoffOne4 residue
  · exact tailEnvelope0024FailureFibreCutoffOne5 residue
  · exact tailEnvelope0024FailureFibreCutoffOne6 residue
  · exact tailEnvelope0024FailureFibreCutoffOne7 residue
  · exact tailEnvelope0024FailureFibreCutoffOne8 residue

theorem tailEnvelope0024FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0024FailureFibreExactOne cell residue ≤ tailEnvelope0024FailureFibreMaxOne cell := by decide

theorem tailEnvelope0024FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0024CountsOne tailEnvelope0024FailureFibreMaxOne 20106 = true := by decide

theorem tailEnvelope0024FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0024CountsOne tailEnvelope0024FailureFibreMaxOne 20193 = true := by decide

theorem tailEnvelope0024FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5663963 (tailEnvelope0024CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0024FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0024FailureCutoffTreeThree0Check :
    tailEnvelope0024FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0024FailureFibreExactThree 0) 5663963 0 = true := by decide

theorem tailEnvelope0024FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5663963 (tailEnvelope0024FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0024FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0024FailureCutoffTreeThree0Check

def tailEnvelope0024FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0024FailureCutoffTreeThree1Check :
    tailEnvelope0024FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0024FailureFibreExactThree 1) 5663963 0 = true := by decide

theorem tailEnvelope0024FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5663963 (tailEnvelope0024FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0024FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0024FailureCutoffTreeThree1Check

def tailEnvelope0024FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0024FailureCutoffTreeThree2Check :
    tailEnvelope0024FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0024FailureFibreExactThree 2) 5663963 0 = true := by decide

theorem tailEnvelope0024FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5663963 (tailEnvelope0024FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0024FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0024FailureCutoffTreeThree2Check

def tailEnvelope0024FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0024FailureCutoffTreeThree3Check :
    tailEnvelope0024FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0024FailureFibreExactThree 3) 5663963 0 = true := by decide

theorem tailEnvelope0024FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5663963 (tailEnvelope0024FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0024FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0024FailureCutoffTreeThree3Check

def tailEnvelope0024FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0024FailureCutoffTreeThree4Check :
    tailEnvelope0024FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0024FailureFibreExactThree 4) 5663963 0 = true := by decide

theorem tailEnvelope0024FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5663963 (tailEnvelope0024FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0024FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0024FailureCutoffTreeThree4Check

def tailEnvelope0024FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0024FailureCutoffTreeThree5Check :
    tailEnvelope0024FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0024FailureFibreExactThree 5) 5663963 0 = true := by decide

theorem tailEnvelope0024FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5663963 (tailEnvelope0024FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0024FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0024FailureCutoffTreeThree5Check

def tailEnvelope0024FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0024FailureCutoffTreeThree6Check :
    tailEnvelope0024FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0024FailureFibreExactThree 6) 5663963 0 = true := by decide

theorem tailEnvelope0024FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5663963 (tailEnvelope0024FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0024FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0024FailureCutoffTreeThree6Check

def tailEnvelope0024FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0024FailureCutoffTreeThree7Check :
    tailEnvelope0024FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0024FailureFibreExactThree 7) 5663963 0 = true := by decide

theorem tailEnvelope0024FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5663963 (tailEnvelope0024FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0024FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0024FailureCutoffTreeThree7Check

def tailEnvelope0024FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0024FailureCutoffTreeThree8Check :
    tailEnvelope0024FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0024FailureFibreExactThree 8) 5663963 0 = true := by decide

theorem tailEnvelope0024FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5663963 (tailEnvelope0024FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0024FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0024FailureCutoffTreeThree8Check

theorem tailEnvelope0024FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5663963 (tailEnvelope0024FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0024FailureFibreCutoffThree0 residue
  · exact tailEnvelope0024FailureFibreCutoffThree1 residue
  · exact tailEnvelope0024FailureFibreCutoffThree2 residue
  · exact tailEnvelope0024FailureFibreCutoffThree3 residue
  · exact tailEnvelope0024FailureFibreCutoffThree4 residue
  · exact tailEnvelope0024FailureFibreCutoffThree5 residue
  · exact tailEnvelope0024FailureFibreCutoffThree6 residue
  · exact tailEnvelope0024FailureFibreCutoffThree7 residue
  · exact tailEnvelope0024FailureFibreCutoffThree8 residue

theorem tailEnvelope0024FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0024FailureFibreExactThree cell residue ≤ tailEnvelope0024FailureFibreMaxThree cell := by decide

theorem tailEnvelope0024FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0024CountsThree tailEnvelope0024FailureFibreMaxThree 20105 = true := by decide

theorem tailEnvelope0024FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0024CountsThree tailEnvelope0024FailureFibreMaxThree 20190 = true := by decide

theorem tailEnvelope0024FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5635786 5663964
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5663963 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0024CountsOne) (fibre := tailEnvelope0024FailureFibreMaxOne) (bound := 20106) tailEnvelope0024FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0024CountsOne tailEnvelope0024FailureFibreMaxOne tailEnvelope0024FailureFibreExactOne
      (lower := 5635786) (upper := 5663963) (N := N) (bound := 20106)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0024FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0024FailureFibreCutoffOne
      tailEnvelope0024FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0024CountsThree) (fibre := tailEnvelope0024FailureFibreMaxThree) (bound := 20105) tailEnvelope0024FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0024CountsThree tailEnvelope0024FailureFibreMaxThree tailEnvelope0024FailureFibreExactThree
      (lower := 5635786) (upper := 5663963) (N := N) (bound := 20105)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0024FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0024FailureFibreCutoffThree
      tailEnvelope0024FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0024FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5635786 5663964
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5663963 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0024CountsOne) (fibre := tailEnvelope0024FailureFibreMaxOne) (bound := 20193) tailEnvelope0024FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0024CountsOne tailEnvelope0024FailureFibreMaxOne tailEnvelope0024FailureFibreExactOne
      (lower := 5635786) (upper := 5663963) (N := N) (bound := 20193)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0024FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0024FailureFibreCutoffOne
      tailEnvelope0024FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0024CountsThree) (fibre := tailEnvelope0024FailureFibreMaxThree) (bound := 20190) tailEnvelope0024FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0024CountsThree tailEnvelope0024FailureFibreMaxThree tailEnvelope0024FailureFibreExactThree
      (lower := 5635786) (upper := 5663963) (N := N) (bound := 20190)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0024FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0024FailureFibreCutoffThree
      tailEnvelope0024FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0025FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![77, 83, 83, 81, 84, 86, 76, 73, 81, 80, 86, 79, 80, 81, 84, 85, 78, 78, 87, 81, 78, 83, 87, 85, 78, 81, 76, 85, 89, 79, 78, 84, 79, 77, 80, 85, 82, 81, 79, 75, 80, 82, 81, 83, 75, 83, 85, 79, 84], ![77, 77, 83, 82, 80, 83, 81, 82, 84, 76, 88, 83, 82, 88, 82, 79, 81, 82, 89, 88, 81, 82, 87, 77, 76, 76, 84, 80, 84, 82, 87, 74, 77, 86, 79, 84, 80, 82, 81, 86, 84, 81, 83, 84, 80, 78, 85, 81, 80], ![78, 87, 84, 83, 81, 79, 78, 81, 80, 82, 80, 84, 75, 78, 77, 86, 79, 88, 79, 83, 77, 80, 80, 81, 83, 85, 81, 78, 79, 77, 76, 79, 80, 83, 82, 82, 81, 77, 81, 78, 83, 83, 84, 78, 79, 82, 77, 82, 80], ![75, 80, 83, 75, 81, 81, 81, 83, 82, 77, 84, 78, 81, 81, 81, 82, 84, 81, 84, 81, 86, 85, 78, 85, 84, 82, 80, 79, 80, 79, 77, 87, 87, 80, 82, 83, 78, 79, 83, 83, 89, 78, 82, 84, 84, 78, 80, 80, 84], ![85, 80, 86, 82, 82, 84, 83, 82, 82, 77, 83, 80, 82, 88, 83, 84, 80, 76, 74, 79, 78, 77, 77, 78, 84, 81, 80, 82, 81, 80, 85, 84, 88, 81, 84, 80, 82, 86, 79, 77, 79, 75, 79, 77, 80, 83, 80, 79, 82], ![82, 77, 77, 83, 87, 77, 85, 83, 82, 80, 76, 79, 87, 83, 80, 82, 83, 82, 83, 77, 87, 83, 77, 82, 82, 83, 82, 82, 79, 86, 80, 72, 83, 85, 78, 78, 87, 81, 78, 84, 77, 78, 87, 80, 83, 87, 81, 76, 81], ![87, 89, 83, 78, 86, 80, 81, 85, 76, 81, 86, 80, 85, 78, 75, 76, 85, 80, 78, 81, 80, 78, 77, 79, 82, 83, 84, 84, 78, 81, 82, 82, 80, 85, 80, 83, 78, 82, 79, 78, 78, 81, 80, 82, 76, 82, 84, 80, 78], ![84, 81, 75, 84, 80, 86, 79, 79, 86, 86, 79, 77, 80, 80, 80, 81, 83, 82, 81, 78, 84, 84, 81, 78, 77, 82, 80, 79, 77, 82, 76, 82, 84, 79, 83, 87, 75, 83, 82, 84, 77, 84, 77, 79, 87, 79, 83, 83, 86], ![80, 80, 81, 84, 79, 85, 83, 77, 79, 82, 77, 79, 83, 79, 86, 79, 83, 80, 80, 77, 83, 86, 79, 79, 81, 78, 79, 80, 85, 83, 82, 85, 79, 79, 82, 80, 80, 86, 80, 85, 81, 83, 80, 87, 83, 79, 86, 86, 77]]

def tailEnvelope0025FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![85, 82, 80, 82, 76, 82, 81, 83, 83, 86, 86, 85, 86, 78, 80, 79, 85, 84, 77, 80, 83, 74, 77, 80, 78, 84, 88, 79, 82, 84, 82, 79, 85, 86, 77, 79, 83, 82, 82, 81, 83, 84, 88, 79, 82, 79, 78, 77, 86], ![83, 80, 79, 78, 83, 83, 83, 81, 85, 82, 79, 76, 80, 84, 78, 78, 79, 84, 81, 80, 85, 79, 78, 90, 85, 84, 81, 74, 81, 84, 77, 83, 81, 84, 78, 77, 84, 82, 78, 83, 76, 80, 84, 79, 77, 82, 84, 78, 88], ![80, 78, 82, 76, 86, 87, 80, 80, 87, 77, 75, 85, 82, 85, 78, 78, 87, 78, 79, 84, 79, 83, 82, 77, 81, 87, 76, 75, 85, 81, 84, 82, 80, 76, 82, 83, 79, 81, 89, 81, 79, 80, 87, 81, 81, 85, 76, 82, 82], ![78, 84, 86, 79, 77, 81, 76, 77, 78, 84, 81, 82, 84, 86, 84, 80, 83, 81, 82, 87, 76, 82, 87, 79, 85, 84, 82, 82, 87, 81, 80, 80, 77, 82, 79, 74, 87, 80, 84, 74, 75, 83, 85, 81, 81, 80, 89, 81, 77], ![79, 82, 82, 79, 80, 78, 79, 82, 83, 84, 86, 81, 80, 83, 76, 76, 80, 83, 88, 78, 80, 82, 84, 82, 80, 85, 85, 81, 81, 78, 83, 81, 72, 80, 83, 81, 80, 82, 77, 82, 86, 82, 83, 77, 84, 76, 81, 83, 81], ![84, 82, 81, 80, 81, 86, 85, 80, 74, 80, 80, 81, 77, 79, 85, 87, 81, 79, 81, 76, 80, 81, 80, 84, 88, 80, 84, 81, 78, 84, 84, 81, 86, 86, 81, 79, 75, 78, 84, 81, 83, 79, 80, 82, 77, 79, 79, 92, 81], ![85, 81, 78, 77, 84, 83, 82, 84, 85, 83, 83, 75, 76, 85, 84, 79, 78, 78, 78, 84, 86, 80, 85, 83, 83, 75, 77, 86, 74, 77, 82, 74, 82, 75, 80, 84, 79, 76, 84, 88, 84, 83, 80, 81, 84, 83, 84, 84, 82], ![80, 80, 78, 91, 82, 80, 84, 82, 80, 77, 85, 85, 82, 78, 82, 90, 78, 79, 80, 78, 82, 82, 80, 82, 77, 76, 83, 83, 81, 83, 79, 83, 80, 81, 85, 83, 82, 84, 81, 86, 84, 76, 79, 85, 81, 84, 82, 81, 76], ![79, 82, 78, 82, 84, 81, 83, 82, 85, 80, 83, 75, 79, 82, 79, 84, 80, 79, 83, 82, 81, 80, 82, 83, 81, 80, 81, 81, 80, 77, 79, 82, 85, 75, 85, 81, 82, 84, 79, 79, 83, 83, 76, 84, 85, 80, 83, 79, 78]]

def tailEnvelope0025FailureFibreMaxOne : Fin 9 → Nat :=
  ![89, 89, 88, 89, 88, 87, 89, 87, 87]

def tailEnvelope0025FailureFibreMaxThree : Fin 9 → Nat :=
  ![88, 90, 89, 89, 88, 92, 88, 91, 85]

theorem tailEnvelope0025FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5692282 (tailEnvelope0025CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0025FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0025FailureCutoffTreeOne0Check :
    tailEnvelope0025FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0025FailureFibreExactOne 0) 5692282 0 = true := by decide

theorem tailEnvelope0025FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5692282 (tailEnvelope0025FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0025FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0025FailureCutoffTreeOne0Check

def tailEnvelope0025FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0025FailureCutoffTreeOne1Check :
    tailEnvelope0025FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0025FailureFibreExactOne 1) 5692282 0 = true := by decide

theorem tailEnvelope0025FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5692282 (tailEnvelope0025FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0025FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0025FailureCutoffTreeOne1Check

def tailEnvelope0025FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0025FailureCutoffTreeOne2Check :
    tailEnvelope0025FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0025FailureFibreExactOne 2) 5692282 0 = true := by decide

theorem tailEnvelope0025FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5692282 (tailEnvelope0025FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0025FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0025FailureCutoffTreeOne2Check

def tailEnvelope0025FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0025FailureCutoffTreeOne3Check :
    tailEnvelope0025FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0025FailureFibreExactOne 3) 5692282 0 = true := by decide

theorem tailEnvelope0025FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5692282 (tailEnvelope0025FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0025FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0025FailureCutoffTreeOne3Check

def tailEnvelope0025FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0025FailureCutoffTreeOne4Check :
    tailEnvelope0025FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0025FailureFibreExactOne 4) 5692282 0 = true := by decide

theorem tailEnvelope0025FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5692282 (tailEnvelope0025FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0025FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0025FailureCutoffTreeOne4Check

def tailEnvelope0025FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0025FailureCutoffTreeOne5Check :
    tailEnvelope0025FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0025FailureFibreExactOne 5) 5692282 0 = true := by decide

theorem tailEnvelope0025FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5692282 (tailEnvelope0025FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0025FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0025FailureCutoffTreeOne5Check

def tailEnvelope0025FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0025FailureCutoffTreeOne6Check :
    tailEnvelope0025FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0025FailureFibreExactOne 6) 5692282 0 = true := by decide

theorem tailEnvelope0025FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5692282 (tailEnvelope0025FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0025FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0025FailureCutoffTreeOne6Check

def tailEnvelope0025FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0025FailureCutoffTreeOne7Check :
    tailEnvelope0025FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0025FailureFibreExactOne 7) 5692282 0 = true := by decide

theorem tailEnvelope0025FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5692282 (tailEnvelope0025FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0025FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0025FailureCutoffTreeOne7Check

def tailEnvelope0025FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0025FailureCutoffTreeOne8Check :
    tailEnvelope0025FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0025FailureFibreExactOne 8) 5692282 0 = true := by decide

theorem tailEnvelope0025FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5692282 (tailEnvelope0025FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0025FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0025FailureCutoffTreeOne8Check

theorem tailEnvelope0025FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5692282 (tailEnvelope0025FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0025FailureFibreCutoffOne0 residue
  · exact tailEnvelope0025FailureFibreCutoffOne1 residue
  · exact tailEnvelope0025FailureFibreCutoffOne2 residue
  · exact tailEnvelope0025FailureFibreCutoffOne3 residue
  · exact tailEnvelope0025FailureFibreCutoffOne4 residue
  · exact tailEnvelope0025FailureFibreCutoffOne5 residue
  · exact tailEnvelope0025FailureFibreCutoffOne6 residue
  · exact tailEnvelope0025FailureFibreCutoffOne7 residue
  · exact tailEnvelope0025FailureFibreCutoffOne8 residue

theorem tailEnvelope0025FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0025FailureFibreExactOne cell residue ≤ tailEnvelope0025FailureFibreMaxOne cell := by decide

theorem tailEnvelope0025FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0025CountsOne tailEnvelope0025FailureFibreMaxOne 20210 = true := by decide

theorem tailEnvelope0025FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0025CountsOne tailEnvelope0025FailureFibreMaxOne 20298 = true := by decide

theorem tailEnvelope0025FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5692282 (tailEnvelope0025CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0025FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0025FailureCutoffTreeThree0Check :
    tailEnvelope0025FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0025FailureFibreExactThree 0) 5692282 0 = true := by decide

theorem tailEnvelope0025FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5692282 (tailEnvelope0025FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0025FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0025FailureCutoffTreeThree0Check

def tailEnvelope0025FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0025FailureCutoffTreeThree1Check :
    tailEnvelope0025FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0025FailureFibreExactThree 1) 5692282 0 = true := by decide

theorem tailEnvelope0025FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5692282 (tailEnvelope0025FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0025FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0025FailureCutoffTreeThree1Check

def tailEnvelope0025FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0025FailureCutoffTreeThree2Check :
    tailEnvelope0025FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0025FailureFibreExactThree 2) 5692282 0 = true := by decide

theorem tailEnvelope0025FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5692282 (tailEnvelope0025FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0025FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0025FailureCutoffTreeThree2Check

def tailEnvelope0025FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0025FailureCutoffTreeThree3Check :
    tailEnvelope0025FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0025FailureFibreExactThree 3) 5692282 0 = true := by decide

theorem tailEnvelope0025FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5692282 (tailEnvelope0025FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0025FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0025FailureCutoffTreeThree3Check

def tailEnvelope0025FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0025FailureCutoffTreeThree4Check :
    tailEnvelope0025FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0025FailureFibreExactThree 4) 5692282 0 = true := by decide

theorem tailEnvelope0025FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5692282 (tailEnvelope0025FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0025FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0025FailureCutoffTreeThree4Check

def tailEnvelope0025FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0025FailureCutoffTreeThree5Check :
    tailEnvelope0025FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0025FailureFibreExactThree 5) 5692282 0 = true := by decide

theorem tailEnvelope0025FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5692282 (tailEnvelope0025FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0025FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0025FailureCutoffTreeThree5Check

def tailEnvelope0025FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0025FailureCutoffTreeThree6Check :
    tailEnvelope0025FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0025FailureFibreExactThree 6) 5692282 0 = true := by decide

theorem tailEnvelope0025FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5692282 (tailEnvelope0025FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0025FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0025FailureCutoffTreeThree6Check

def tailEnvelope0025FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0025FailureCutoffTreeThree7Check :
    tailEnvelope0025FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0025FailureFibreExactThree 7) 5692282 0 = true := by decide

theorem tailEnvelope0025FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5692282 (tailEnvelope0025FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0025FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0025FailureCutoffTreeThree7Check

def tailEnvelope0025FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0025FailureCutoffTreeThree8Check :
    tailEnvelope0025FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0025FailureFibreExactThree 8) 5692282 0 = true := by decide

theorem tailEnvelope0025FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5692282 (tailEnvelope0025FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0025FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0025FailureCutoffTreeThree8Check

theorem tailEnvelope0025FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5692282 (tailEnvelope0025FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0025FailureFibreCutoffThree0 residue
  · exact tailEnvelope0025FailureFibreCutoffThree1 residue
  · exact tailEnvelope0025FailureFibreCutoffThree2 residue
  · exact tailEnvelope0025FailureFibreCutoffThree3 residue
  · exact tailEnvelope0025FailureFibreCutoffThree4 residue
  · exact tailEnvelope0025FailureFibreCutoffThree5 residue
  · exact tailEnvelope0025FailureFibreCutoffThree6 residue
  · exact tailEnvelope0025FailureFibreCutoffThree7 residue
  · exact tailEnvelope0025FailureFibreCutoffThree8 residue

theorem tailEnvelope0025FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0025FailureFibreExactThree cell residue ≤ tailEnvelope0025FailureFibreMaxThree cell := by decide

theorem tailEnvelope0025FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0025CountsThree tailEnvelope0025FailureFibreMaxThree 20209 = true := by decide

theorem tailEnvelope0025FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0025CountsThree tailEnvelope0025FailureFibreMaxThree 20294 = true := by decide

theorem tailEnvelope0025FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5663964 5692283
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5692282 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0025CountsOne) (fibre := tailEnvelope0025FailureFibreMaxOne) (bound := 20210) tailEnvelope0025FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0025CountsOne tailEnvelope0025FailureFibreMaxOne tailEnvelope0025FailureFibreExactOne
      (lower := 5663964) (upper := 5692282) (N := N) (bound := 20210)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0025FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0025FailureFibreCutoffOne
      tailEnvelope0025FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0025CountsThree) (fibre := tailEnvelope0025FailureFibreMaxThree) (bound := 20209) tailEnvelope0025FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0025CountsThree tailEnvelope0025FailureFibreMaxThree tailEnvelope0025FailureFibreExactThree
      (lower := 5663964) (upper := 5692282) (N := N) (bound := 20209)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0025FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0025FailureFibreCutoffThree
      tailEnvelope0025FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0025FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5663964 5692283
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5692282 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0025CountsOne) (fibre := tailEnvelope0025FailureFibreMaxOne) (bound := 20298) tailEnvelope0025FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0025CountsOne tailEnvelope0025FailureFibreMaxOne tailEnvelope0025FailureFibreExactOne
      (lower := 5663964) (upper := 5692282) (N := N) (bound := 20298)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0025FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0025FailureFibreCutoffOne
      tailEnvelope0025FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0025CountsThree) (fibre := tailEnvelope0025FailureFibreMaxThree) (bound := 20294) tailEnvelope0025FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0025CountsThree tailEnvelope0025FailureFibreMaxThree tailEnvelope0025FailureFibreExactThree
      (lower := 5663964) (upper := 5692282) (N := N) (bound := 20294)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0025FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0025FailureFibreCutoffThree
      tailEnvelope0025FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0026FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![79, 83, 85, 81, 85, 86, 76, 73, 81, 80, 86, 79, 81, 81, 85, 85, 78, 78, 88, 84, 79, 83, 88, 85, 78, 81, 76, 85, 89, 79, 78, 84, 79, 78, 80, 87, 83, 81, 79, 76, 80, 82, 81, 83, 75, 84, 86, 80, 84], ![77, 77, 85, 82, 81, 83, 81, 83, 84, 77, 89, 83, 83, 88, 82, 79, 81, 82, 89, 89, 81, 82, 87, 77, 76, 76, 84, 80, 84, 83, 87, 74, 77, 86, 79, 85, 80, 83, 81, 86, 85, 81, 84, 85, 80, 79, 85, 81, 80], ![81, 87, 85, 83, 81, 79, 78, 82, 80, 83, 80, 84, 75, 78, 78, 86, 80, 89, 79, 84, 77, 80, 80, 81, 83, 86, 81, 80, 79, 77, 76, 80, 80, 85, 82, 84, 83, 77, 81, 78, 84, 84, 84, 79, 79, 82, 77, 83, 80], ![75, 80, 83, 75, 81, 82, 82, 85, 82, 78, 84, 78, 81, 81, 81, 83, 84, 82, 84, 81, 86, 85, 79, 87, 85, 83, 80, 80, 80, 79, 77, 89, 87, 81, 82, 83, 78, 79, 84, 84, 90, 78, 82, 84, 84, 78, 80, 80, 84], ![85, 80, 87, 82, 84, 86, 83, 83, 82, 77, 83, 80, 82, 90, 83, 86, 80, 76, 74, 79, 78, 78, 77, 79, 84, 81, 80, 82, 81, 82, 85, 85, 88, 81, 84, 80, 82, 86, 80, 78, 79, 75, 79, 77, 80, 84, 81, 79, 83], ![83, 77, 77, 84, 87, 78, 86, 83, 82, 80, 76, 80, 87, 83, 80, 82, 83, 82, 84, 78, 88, 83, 78, 82, 82, 83, 82, 82, 80, 86, 80, 72, 83, 85, 79, 78, 89, 81, 80, 84, 77, 78, 87, 80, 84, 87, 82, 77, 82], ![88, 90, 83, 79, 86, 80, 81, 85, 76, 82, 86, 82, 85, 79, 75, 76, 85, 82, 78, 81, 81, 80, 79, 79, 82, 83, 85, 85, 80, 82, 82, 82, 81, 85, 81, 83, 79, 82, 79, 79, 78, 81, 81, 82, 77, 82, 84, 80, 78], ![84, 82, 78, 85, 81, 86, 79, 79, 86, 86, 80, 77, 80, 80, 80, 81, 84, 82, 82, 78, 84, 84, 81, 78, 78, 82, 81, 79, 77, 82, 76, 82, 85, 79, 85, 87, 76, 83, 82, 84, 78, 84, 78, 79, 87, 79, 83, 83, 86], ![81, 80, 81, 84, 79, 85, 84, 77, 80, 83, 77, 80, 83, 79, 88, 79, 85, 80, 81, 77, 83, 86, 79, 79, 82, 79, 79, 82, 85, 83, 83, 85, 80, 79, 82, 80, 80, 86, 81, 85, 81, 83, 81, 87, 84, 79, 86, 86, 77]]

def tailEnvelope0026FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![85, 82, 81, 82, 77, 82, 81, 83, 85, 86, 87, 85, 86, 78, 80, 79, 86, 84, 78, 81, 84, 74, 79, 80, 79, 84, 89, 79, 82, 84, 82, 79, 85, 86, 77, 79, 83, 82, 82, 81, 85, 86, 88, 81, 82, 79, 79, 78, 86], ![84, 81, 79, 81, 83, 83, 84, 81, 86, 83, 79, 76, 80, 84, 79, 79, 79, 85, 82, 80, 85, 80, 79, 90, 85, 84, 81, 74, 81, 84, 78, 84, 82, 84, 79, 77, 84, 82, 78, 84, 76, 81, 84, 79, 77, 82, 84, 79, 89], ![80, 78, 82, 76, 87, 87, 81, 80, 88, 77, 75, 85, 82, 85, 78, 79, 87, 78, 79, 85, 80, 84, 82, 79, 82, 87, 76, 76, 85, 83, 84, 83, 80, 76, 82, 83, 79, 81, 89, 85, 79, 82, 87, 81, 81, 87, 76, 83, 82], ![78, 84, 86, 79, 78, 82, 76, 77, 78, 84, 81, 83, 84, 87, 84, 80, 84, 81, 82, 88, 78, 83, 88, 79, 85, 84, 82, 83, 87, 82, 81, 80, 78, 82, 79, 75, 87, 81, 84, 74, 75, 83, 85, 81, 81, 80, 90, 81, 79], ![79, 83, 82, 80, 81, 78, 79, 83, 83, 85, 86, 82, 80, 83, 76, 76, 80, 84, 88, 79, 80, 82, 84, 83, 80, 86, 85, 82, 82, 78, 83, 81, 72, 80, 83, 81, 80, 83, 77, 83, 86, 82, 83, 77, 85, 76, 81, 83, 81], ![84, 83, 81, 80, 81, 86, 85, 81, 74, 82, 80, 82, 78, 79, 87, 88, 81, 80, 81, 76, 80, 81, 80, 84, 88, 80, 84, 81, 79, 84, 85, 81, 86, 86, 83, 79, 75, 80, 84, 81, 84, 79, 81, 82, 78, 79, 80, 92, 82], ![85, 81, 78, 78, 84, 85, 82, 85, 85, 83, 83, 75, 76, 85, 84, 79, 78, 78, 80, 85, 86, 81, 87, 83, 84, 75, 77, 86, 74, 77, 83, 74, 83, 76, 81, 85, 79, 77, 85, 88, 84, 83, 80, 81, 84, 83, 85, 84, 83], ![80, 80, 78, 91, 82, 82, 84, 82, 80, 77, 86, 85, 84, 78, 83, 90, 78, 79, 80, 78, 83, 82, 81, 82, 77, 76, 84, 83, 83, 83, 80, 83, 80, 81, 85, 83, 83, 84, 82, 86, 84, 77, 79, 87, 81, 85, 83, 81, 76], ![79, 83, 79, 82, 85, 81, 83, 82, 86, 80, 84, 75, 80, 82, 79, 84, 81, 80, 84, 83, 82, 80, 82, 83, 81, 80, 82, 81, 80, 77, 79, 82, 85, 75, 86, 83, 83, 84, 79, 79, 84, 83, 76, 84, 85, 80, 83, 79, 78]]

def tailEnvelope0026FailureFibreMaxOne : Fin 9 → Nat :=
  ![89, 89, 89, 90, 90, 89, 90, 87, 88]

def tailEnvelope0026FailureFibreMaxThree : Fin 9 → Nat :=
  ![89, 90, 89, 90, 88, 92, 88, 91, 86]

theorem tailEnvelope0026FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5720743 (tailEnvelope0026CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0026FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0026FailureCutoffTreeOne0Check :
    tailEnvelope0026FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0026FailureFibreExactOne 0) 5720743 0 = true := by decide

theorem tailEnvelope0026FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5720743 (tailEnvelope0026FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0026FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0026FailureCutoffTreeOne0Check

def tailEnvelope0026FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0026FailureCutoffTreeOne1Check :
    tailEnvelope0026FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0026FailureFibreExactOne 1) 5720743 0 = true := by decide

theorem tailEnvelope0026FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5720743 (tailEnvelope0026FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0026FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0026FailureCutoffTreeOne1Check

def tailEnvelope0026FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0026FailureCutoffTreeOne2Check :
    tailEnvelope0026FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0026FailureFibreExactOne 2) 5720743 0 = true := by decide

theorem tailEnvelope0026FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5720743 (tailEnvelope0026FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0026FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0026FailureCutoffTreeOne2Check

def tailEnvelope0026FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0026FailureCutoffTreeOne3Check :
    tailEnvelope0026FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0026FailureFibreExactOne 3) 5720743 0 = true := by decide

theorem tailEnvelope0026FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5720743 (tailEnvelope0026FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0026FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0026FailureCutoffTreeOne3Check

def tailEnvelope0026FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0026FailureCutoffTreeOne4Check :
    tailEnvelope0026FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0026FailureFibreExactOne 4) 5720743 0 = true := by decide

theorem tailEnvelope0026FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5720743 (tailEnvelope0026FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0026FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0026FailureCutoffTreeOne4Check

def tailEnvelope0026FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0026FailureCutoffTreeOne5Check :
    tailEnvelope0026FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0026FailureFibreExactOne 5) 5720743 0 = true := by decide

theorem tailEnvelope0026FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5720743 (tailEnvelope0026FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0026FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0026FailureCutoffTreeOne5Check

def tailEnvelope0026FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0026FailureCutoffTreeOne6Check :
    tailEnvelope0026FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0026FailureFibreExactOne 6) 5720743 0 = true := by decide

theorem tailEnvelope0026FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5720743 (tailEnvelope0026FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0026FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0026FailureCutoffTreeOne6Check

def tailEnvelope0026FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0026FailureCutoffTreeOne7Check :
    tailEnvelope0026FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0026FailureFibreExactOne 7) 5720743 0 = true := by decide

theorem tailEnvelope0026FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5720743 (tailEnvelope0026FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0026FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0026FailureCutoffTreeOne7Check

def tailEnvelope0026FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0026FailureCutoffTreeOne8Check :
    tailEnvelope0026FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0026FailureFibreExactOne 8) 5720743 0 = true := by decide

theorem tailEnvelope0026FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5720743 (tailEnvelope0026FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0026FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0026FailureCutoffTreeOne8Check

theorem tailEnvelope0026FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5720743 (tailEnvelope0026FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0026FailureFibreCutoffOne0 residue
  · exact tailEnvelope0026FailureFibreCutoffOne1 residue
  · exact tailEnvelope0026FailureFibreCutoffOne2 residue
  · exact tailEnvelope0026FailureFibreCutoffOne3 residue
  · exact tailEnvelope0026FailureFibreCutoffOne4 residue
  · exact tailEnvelope0026FailureFibreCutoffOne5 residue
  · exact tailEnvelope0026FailureFibreCutoffOne6 residue
  · exact tailEnvelope0026FailureFibreCutoffOne7 residue
  · exact tailEnvelope0026FailureFibreCutoffOne8 residue

theorem tailEnvelope0026FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0026FailureFibreExactOne cell residue ≤ tailEnvelope0026FailureFibreMaxOne cell := by decide

theorem tailEnvelope0026FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0026CountsOne tailEnvelope0026FailureFibreMaxOne 20307 = true := by decide

theorem tailEnvelope0026FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0026CountsOne tailEnvelope0026FailureFibreMaxOne 20394 = true := by decide

theorem tailEnvelope0026FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5720743 (tailEnvelope0026CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0026FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0026FailureCutoffTreeThree0Check :
    tailEnvelope0026FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0026FailureFibreExactThree 0) 5720743 0 = true := by decide

theorem tailEnvelope0026FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5720743 (tailEnvelope0026FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0026FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0026FailureCutoffTreeThree0Check

def tailEnvelope0026FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0026FailureCutoffTreeThree1Check :
    tailEnvelope0026FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0026FailureFibreExactThree 1) 5720743 0 = true := by decide

theorem tailEnvelope0026FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5720743 (tailEnvelope0026FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0026FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0026FailureCutoffTreeThree1Check

def tailEnvelope0026FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0026FailureCutoffTreeThree2Check :
    tailEnvelope0026FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0026FailureFibreExactThree 2) 5720743 0 = true := by decide

theorem tailEnvelope0026FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5720743 (tailEnvelope0026FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0026FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0026FailureCutoffTreeThree2Check

def tailEnvelope0026FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0026FailureCutoffTreeThree3Check :
    tailEnvelope0026FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0026FailureFibreExactThree 3) 5720743 0 = true := by decide

theorem tailEnvelope0026FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5720743 (tailEnvelope0026FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0026FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0026FailureCutoffTreeThree3Check

def tailEnvelope0026FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0026FailureCutoffTreeThree4Check :
    tailEnvelope0026FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0026FailureFibreExactThree 4) 5720743 0 = true := by decide

theorem tailEnvelope0026FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5720743 (tailEnvelope0026FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0026FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0026FailureCutoffTreeThree4Check

def tailEnvelope0026FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0026FailureCutoffTreeThree5Check :
    tailEnvelope0026FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0026FailureFibreExactThree 5) 5720743 0 = true := by decide

theorem tailEnvelope0026FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5720743 (tailEnvelope0026FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0026FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0026FailureCutoffTreeThree5Check

def tailEnvelope0026FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0026FailureCutoffTreeThree6Check :
    tailEnvelope0026FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0026FailureFibreExactThree 6) 5720743 0 = true := by decide

theorem tailEnvelope0026FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5720743 (tailEnvelope0026FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0026FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0026FailureCutoffTreeThree6Check

def tailEnvelope0026FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0026FailureCutoffTreeThree7Check :
    tailEnvelope0026FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0026FailureFibreExactThree 7) 5720743 0 = true := by decide

theorem tailEnvelope0026FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5720743 (tailEnvelope0026FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0026FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0026FailureCutoffTreeThree7Check

def tailEnvelope0026FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0026FailureCutoffTreeThree8Check :
    tailEnvelope0026FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0026FailureFibreExactThree 8) 5720743 0 = true := by decide

theorem tailEnvelope0026FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5720743 (tailEnvelope0026FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0026FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0026FailureCutoffTreeThree8Check

theorem tailEnvelope0026FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5720743 (tailEnvelope0026FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0026FailureFibreCutoffThree0 residue
  · exact tailEnvelope0026FailureFibreCutoffThree1 residue
  · exact tailEnvelope0026FailureFibreCutoffThree2 residue
  · exact tailEnvelope0026FailureFibreCutoffThree3 residue
  · exact tailEnvelope0026FailureFibreCutoffThree4 residue
  · exact tailEnvelope0026FailureFibreCutoffThree5 residue
  · exact tailEnvelope0026FailureFibreCutoffThree6 residue
  · exact tailEnvelope0026FailureFibreCutoffThree7 residue
  · exact tailEnvelope0026FailureFibreCutoffThree8 residue

theorem tailEnvelope0026FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0026FailureFibreExactThree cell residue ≤ tailEnvelope0026FailureFibreMaxThree cell := by decide

theorem tailEnvelope0026FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0026CountsThree tailEnvelope0026FailureFibreMaxThree 20312 = true := by decide

theorem tailEnvelope0026FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0026CountsThree tailEnvelope0026FailureFibreMaxThree 20398 = true := by decide

theorem tailEnvelope0026FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5692283 5720744
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5720743 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0026CountsOne) (fibre := tailEnvelope0026FailureFibreMaxOne) (bound := 20307) tailEnvelope0026FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0026CountsOne tailEnvelope0026FailureFibreMaxOne tailEnvelope0026FailureFibreExactOne
      (lower := 5692283) (upper := 5720743) (N := N) (bound := 20307)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0026FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0026FailureFibreCutoffOne
      tailEnvelope0026FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0026CountsThree) (fibre := tailEnvelope0026FailureFibreMaxThree) (bound := 20312) tailEnvelope0026FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0026CountsThree tailEnvelope0026FailureFibreMaxThree tailEnvelope0026FailureFibreExactThree
      (lower := 5692283) (upper := 5720743) (N := N) (bound := 20312)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0026FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0026FailureFibreCutoffThree
      tailEnvelope0026FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0026FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5692283 5720744
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5720743 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0026CountsOne) (fibre := tailEnvelope0026FailureFibreMaxOne) (bound := 20394) tailEnvelope0026FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0026CountsOne tailEnvelope0026FailureFibreMaxOne tailEnvelope0026FailureFibreExactOne
      (lower := 5692283) (upper := 5720743) (N := N) (bound := 20394)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0026FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0026FailureFibreCutoffOne
      tailEnvelope0026FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0026CountsThree) (fibre := tailEnvelope0026FailureFibreMaxThree) (bound := 20398) tailEnvelope0026FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0026CountsThree tailEnvelope0026FailureFibreMaxThree tailEnvelope0026FailureFibreExactThree
      (lower := 5692283) (upper := 5720743) (N := N) (bound := 20398)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0026FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0026FailureFibreCutoffThree
      tailEnvelope0026FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0027FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![79, 84, 85, 82, 85, 87, 76, 73, 81, 80, 86, 80, 81, 84, 85, 86, 78, 79, 88, 84, 79, 83, 88, 86, 78, 81, 76, 85, 90, 79, 80, 84, 80, 78, 81, 87, 85, 81, 80, 76, 80, 83, 81, 83, 76, 84, 87, 80, 85], ![79, 78, 85, 82, 81, 83, 81, 83, 85, 77, 89, 83, 83, 88, 82, 79, 82, 82, 90, 89, 82, 82, 87, 78, 76, 77, 85, 80, 85, 83, 87, 74, 77, 86, 81, 85, 81, 83, 81, 87, 85, 82, 85, 85, 81, 79, 85, 81, 80], ![82, 87, 85, 83, 81, 79, 78, 82, 81, 83, 81, 84, 76, 78, 78, 86, 82, 90, 80, 84, 77, 80, 81, 81, 85, 86, 83, 80, 79, 77, 79, 80, 82, 85, 83, 84, 83, 77, 81, 78, 85, 84, 85, 79, 79, 83, 78, 83, 81], ![76, 80, 83, 75, 82, 82, 83, 85, 82, 78, 84, 78, 81, 81, 82, 83, 85, 85, 84, 81, 86, 86, 80, 88, 86, 83, 80, 80, 80, 79, 78, 89, 88, 81, 82, 83, 78, 80, 84, 85, 90, 79, 82, 84, 84, 78, 80, 81, 85], ![85, 80, 87, 82, 85, 86, 84, 83, 82, 77, 83, 80, 83, 90, 85, 86, 80, 76, 74, 79, 79, 78, 77, 80, 84, 81, 80, 82, 82, 83, 87, 86, 88, 81, 84, 80, 83, 87, 80, 79, 79, 75, 79, 77, 81, 85, 82, 82, 83], ![83, 77, 78, 85, 88, 79, 86, 83, 82, 80, 76, 80, 87, 83, 80, 82, 83, 82, 84, 79, 88, 85, 79, 82, 82, 83, 82, 83, 80, 87, 80, 72, 83, 85, 80, 80, 89, 82, 80, 84, 77, 78, 87, 81, 84, 87, 82, 77, 82], ![88, 90, 83, 79, 87, 80, 81, 86, 76, 82, 87, 83, 86, 79, 75, 78, 86, 82, 78, 83, 81, 80, 79, 79, 82, 84, 86, 87, 82, 82, 82, 82, 81, 86, 81, 84, 79, 82, 79, 79, 78, 82, 81, 83, 77, 83, 84, 80, 78], ![84, 83, 78, 86, 81, 86, 79, 80, 86, 87, 80, 78, 80, 80, 80, 82, 84, 84, 82, 79, 84, 84, 82, 79, 78, 83, 81, 79, 77, 82, 76, 83, 85, 80, 86, 87, 77, 83, 82, 84, 78, 84, 78, 79, 87, 81, 84, 84, 87], ![81, 80, 81, 84, 80, 85, 85, 78, 81, 83, 77, 81, 84, 80, 88, 80, 85, 81, 81, 77, 83, 87, 79, 80, 83, 79, 80, 82, 85, 83, 83, 85, 82, 80, 82, 80, 80, 86, 82, 85, 82, 84, 81, 88, 84, 79, 87, 86, 78]]

def tailEnvelope0027FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![85, 83, 81, 82, 77, 82, 81, 85, 85, 88, 87, 85, 86, 78, 80, 79, 88, 84, 78, 81, 84, 74, 79, 80, 79, 84, 90, 79, 82, 85, 83, 79, 86, 86, 78, 79, 83, 82, 82, 81, 87, 86, 89, 81, 82, 79, 79, 78, 87], ![86, 81, 79, 81, 83, 84, 84, 81, 86, 83, 79, 76, 80, 84, 80, 79, 81, 85, 82, 80, 85, 80, 80, 90, 86, 84, 81, 74, 81, 85, 79, 85, 83, 85, 79, 77, 85, 82, 79, 84, 77, 81, 84, 79, 77, 82, 85, 80, 90], ![80, 78, 82, 76, 87, 88, 82, 81, 88, 77, 75, 86, 83, 85, 79, 80, 87, 78, 79, 85, 81, 84, 84, 79, 83, 87, 76, 76, 86, 83, 84, 84, 80, 78, 82, 83, 80, 81, 90, 85, 80, 83, 87, 81, 82, 87, 76, 83, 82], ![78, 84, 87, 80, 79, 82, 76, 77, 78, 84, 82, 83, 85, 88, 84, 80, 84, 81, 83, 88, 79, 83, 89, 79, 85, 84, 83, 83, 88, 83, 81, 82, 78, 82, 79, 75, 87, 81, 85, 74, 75, 83, 85, 82, 81, 82, 90, 82, 79], ![80, 85, 83, 80, 81, 78, 80, 83, 84, 85, 87, 82, 80, 83, 76, 76, 81, 84, 89, 80, 81, 82, 85, 83, 81, 86, 85, 82, 82, 78, 83, 81, 72, 81, 84, 81, 81, 83, 78, 83, 86, 83, 84, 78, 86, 76, 81, 83, 81], ![85, 83, 81, 80, 82, 86, 86, 81, 74, 82, 80, 82, 78, 80, 87, 89, 81, 80, 81, 76, 80, 81, 80, 85, 88, 82, 84, 82, 79, 85, 85, 83, 86, 87, 83, 80, 75, 80, 84, 81, 84, 80, 82, 83, 78, 79, 80, 93, 82], ![85, 81, 79, 78, 85, 85, 82, 85, 85, 83, 83, 75, 77, 86, 84, 81, 78, 79, 81, 85, 87, 82, 87, 83, 84, 75, 77, 87, 75, 79, 83, 75, 83, 76, 82, 85, 81, 78, 85, 89, 84, 83, 80, 81, 84, 85, 85, 84, 83], ![80, 80, 78, 93, 82, 83, 84, 82, 80, 78, 86, 87, 84, 79, 83, 90, 78, 79, 80, 80, 83, 83, 81, 82, 77, 77, 84, 84, 83, 84, 80, 83, 80, 81, 85, 84, 83, 84, 82, 86, 84, 77, 80, 87, 82, 85, 83, 82, 78], ![80, 84, 80, 83, 85, 81, 83, 82, 86, 81, 84, 76, 80, 82, 79, 84, 82, 81, 85, 84, 82, 80, 83, 83, 82, 81, 82, 81, 80, 79, 79, 82, 85, 76, 86, 84, 84, 84, 79, 79, 84, 83, 77, 84, 86, 80, 84, 80, 78]]

def tailEnvelope0027FailureFibreMaxOne : Fin 9 → Nat :=
  ![90, 90, 90, 90, 90, 89, 90, 87, 88]

def tailEnvelope0027FailureFibreMaxThree : Fin 9 → Nat :=
  ![90, 90, 90, 90, 89, 93, 89, 93, 86]

theorem tailEnvelope0027FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5749346 (tailEnvelope0027CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0027FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0027FailureCutoffTreeOne0Check :
    tailEnvelope0027FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0027FailureFibreExactOne 0) 5749346 0 = true := by decide

theorem tailEnvelope0027FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5749346 (tailEnvelope0027FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0027FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0027FailureCutoffTreeOne0Check

def tailEnvelope0027FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0027FailureCutoffTreeOne1Check :
    tailEnvelope0027FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0027FailureFibreExactOne 1) 5749346 0 = true := by decide

theorem tailEnvelope0027FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5749346 (tailEnvelope0027FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0027FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0027FailureCutoffTreeOne1Check

def tailEnvelope0027FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0027FailureCutoffTreeOne2Check :
    tailEnvelope0027FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0027FailureFibreExactOne 2) 5749346 0 = true := by decide

theorem tailEnvelope0027FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5749346 (tailEnvelope0027FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0027FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0027FailureCutoffTreeOne2Check

def tailEnvelope0027FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0027FailureCutoffTreeOne3Check :
    tailEnvelope0027FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0027FailureFibreExactOne 3) 5749346 0 = true := by decide

theorem tailEnvelope0027FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5749346 (tailEnvelope0027FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0027FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0027FailureCutoffTreeOne3Check

def tailEnvelope0027FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0027FailureCutoffTreeOne4Check :
    tailEnvelope0027FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0027FailureFibreExactOne 4) 5749346 0 = true := by decide

theorem tailEnvelope0027FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5749346 (tailEnvelope0027FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0027FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0027FailureCutoffTreeOne4Check

def tailEnvelope0027FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0027FailureCutoffTreeOne5Check :
    tailEnvelope0027FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0027FailureFibreExactOne 5) 5749346 0 = true := by decide

theorem tailEnvelope0027FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5749346 (tailEnvelope0027FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0027FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0027FailureCutoffTreeOne5Check

def tailEnvelope0027FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0027FailureCutoffTreeOne6Check :
    tailEnvelope0027FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0027FailureFibreExactOne 6) 5749346 0 = true := by decide

theorem tailEnvelope0027FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5749346 (tailEnvelope0027FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0027FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0027FailureCutoffTreeOne6Check

def tailEnvelope0027FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0027FailureCutoffTreeOne7Check :
    tailEnvelope0027FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0027FailureFibreExactOne 7) 5749346 0 = true := by decide

theorem tailEnvelope0027FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5749346 (tailEnvelope0027FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0027FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0027FailureCutoffTreeOne7Check

def tailEnvelope0027FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0027FailureCutoffTreeOne8Check :
    tailEnvelope0027FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0027FailureFibreExactOne 8) 5749346 0 = true := by decide

theorem tailEnvelope0027FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5749346 (tailEnvelope0027FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0027FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0027FailureCutoffTreeOne8Check

theorem tailEnvelope0027FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5749346 (tailEnvelope0027FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0027FailureFibreCutoffOne0 residue
  · exact tailEnvelope0027FailureFibreCutoffOne1 residue
  · exact tailEnvelope0027FailureFibreCutoffOne2 residue
  · exact tailEnvelope0027FailureFibreCutoffOne3 residue
  · exact tailEnvelope0027FailureFibreCutoffOne4 residue
  · exact tailEnvelope0027FailureFibreCutoffOne5 residue
  · exact tailEnvelope0027FailureFibreCutoffOne6 residue
  · exact tailEnvelope0027FailureFibreCutoffOne7 residue
  · exact tailEnvelope0027FailureFibreCutoffOne8 residue

theorem tailEnvelope0027FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0027FailureFibreExactOne cell residue ≤ tailEnvelope0027FailureFibreMaxOne cell := by decide

theorem tailEnvelope0027FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0027CountsOne tailEnvelope0027FailureFibreMaxOne 20404 = true := by decide

theorem tailEnvelope0027FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0027CountsOne tailEnvelope0027FailureFibreMaxOne 20491 = true := by decide

theorem tailEnvelope0027FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5749346 (tailEnvelope0027CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0027FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0027FailureCutoffTreeThree0Check :
    tailEnvelope0027FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0027FailureFibreExactThree 0) 5749346 0 = true := by decide

theorem tailEnvelope0027FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5749346 (tailEnvelope0027FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0027FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0027FailureCutoffTreeThree0Check

def tailEnvelope0027FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0027FailureCutoffTreeThree1Check :
    tailEnvelope0027FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0027FailureFibreExactThree 1) 5749346 0 = true := by decide

theorem tailEnvelope0027FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5749346 (tailEnvelope0027FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0027FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0027FailureCutoffTreeThree1Check

def tailEnvelope0027FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0027FailureCutoffTreeThree2Check :
    tailEnvelope0027FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0027FailureFibreExactThree 2) 5749346 0 = true := by decide

theorem tailEnvelope0027FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5749346 (tailEnvelope0027FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0027FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0027FailureCutoffTreeThree2Check

def tailEnvelope0027FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0027FailureCutoffTreeThree3Check :
    tailEnvelope0027FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0027FailureFibreExactThree 3) 5749346 0 = true := by decide

theorem tailEnvelope0027FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5749346 (tailEnvelope0027FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0027FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0027FailureCutoffTreeThree3Check

def tailEnvelope0027FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0027FailureCutoffTreeThree4Check :
    tailEnvelope0027FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0027FailureFibreExactThree 4) 5749346 0 = true := by decide

theorem tailEnvelope0027FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5749346 (tailEnvelope0027FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0027FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0027FailureCutoffTreeThree4Check

def tailEnvelope0027FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0027FailureCutoffTreeThree5Check :
    tailEnvelope0027FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0027FailureFibreExactThree 5) 5749346 0 = true := by decide

theorem tailEnvelope0027FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5749346 (tailEnvelope0027FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0027FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0027FailureCutoffTreeThree5Check

def tailEnvelope0027FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0027FailureCutoffTreeThree6Check :
    tailEnvelope0027FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0027FailureFibreExactThree 6) 5749346 0 = true := by decide

theorem tailEnvelope0027FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5749346 (tailEnvelope0027FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0027FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0027FailureCutoffTreeThree6Check

def tailEnvelope0027FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0027FailureCutoffTreeThree7Check :
    tailEnvelope0027FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0027FailureFibreExactThree 7) 5749346 0 = true := by decide

theorem tailEnvelope0027FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5749346 (tailEnvelope0027FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0027FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0027FailureCutoffTreeThree7Check

def tailEnvelope0027FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0027FailureCutoffTreeThree8Check :
    tailEnvelope0027FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0027FailureFibreExactThree 8) 5749346 0 = true := by decide

theorem tailEnvelope0027FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5749346 (tailEnvelope0027FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0027FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0027FailureCutoffTreeThree8Check

theorem tailEnvelope0027FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5749346 (tailEnvelope0027FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0027FailureFibreCutoffThree0 residue
  · exact tailEnvelope0027FailureFibreCutoffThree1 residue
  · exact tailEnvelope0027FailureFibreCutoffThree2 residue
  · exact tailEnvelope0027FailureFibreCutoffThree3 residue
  · exact tailEnvelope0027FailureFibreCutoffThree4 residue
  · exact tailEnvelope0027FailureFibreCutoffThree5 residue
  · exact tailEnvelope0027FailureFibreCutoffThree6 residue
  · exact tailEnvelope0027FailureFibreCutoffThree7 residue
  · exact tailEnvelope0027FailureFibreCutoffThree8 residue

theorem tailEnvelope0027FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0027FailureFibreExactThree cell residue ≤ tailEnvelope0027FailureFibreMaxThree cell := by decide

theorem tailEnvelope0027FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0027CountsThree tailEnvelope0027FailureFibreMaxThree 20406 = true := by decide

theorem tailEnvelope0027FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0027CountsThree tailEnvelope0027FailureFibreMaxThree 20492 = true := by decide

theorem tailEnvelope0027FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5720744 5749347
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5749346 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0027CountsOne) (fibre := tailEnvelope0027FailureFibreMaxOne) (bound := 20404) tailEnvelope0027FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0027CountsOne tailEnvelope0027FailureFibreMaxOne tailEnvelope0027FailureFibreExactOne
      (lower := 5720744) (upper := 5749346) (N := N) (bound := 20404)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0027FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0027FailureFibreCutoffOne
      tailEnvelope0027FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0027CountsThree) (fibre := tailEnvelope0027FailureFibreMaxThree) (bound := 20406) tailEnvelope0027FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0027CountsThree tailEnvelope0027FailureFibreMaxThree tailEnvelope0027FailureFibreExactThree
      (lower := 5720744) (upper := 5749346) (N := N) (bound := 20406)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0027FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0027FailureFibreCutoffThree
      tailEnvelope0027FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0027FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5720744 5749347
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5749346 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0027CountsOne) (fibre := tailEnvelope0027FailureFibreMaxOne) (bound := 20491) tailEnvelope0027FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0027CountsOne tailEnvelope0027FailureFibreMaxOne tailEnvelope0027FailureFibreExactOne
      (lower := 5720744) (upper := 5749346) (N := N) (bound := 20491)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0027FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0027FailureFibreCutoffOne
      tailEnvelope0027FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0027CountsThree) (fibre := tailEnvelope0027FailureFibreMaxThree) (bound := 20492) tailEnvelope0027FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0027CountsThree tailEnvelope0027FailureFibreMaxThree tailEnvelope0027FailureFibreExactThree
      (lower := 5720744) (upper := 5749346) (N := N) (bound := 20492)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0027FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0027FailureFibreCutoffThree
      tailEnvelope0027FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0028FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![79, 84, 85, 82, 85, 87, 76, 75, 81, 80, 86, 80, 81, 84, 86, 86, 79, 79, 88, 85, 79, 84, 88, 88, 78, 82, 76, 86, 90, 80, 80, 85, 80, 79, 81, 88, 85, 82, 80, 76, 80, 83, 81, 84, 76, 85, 87, 81, 85], ![79, 78, 85, 82, 81, 84, 81, 84, 85, 78, 89, 84, 83, 88, 82, 79, 82, 83, 90, 90, 82, 82, 88, 78, 77, 78, 85, 81, 85, 83, 87, 74, 77, 87, 81, 85, 81, 83, 82, 87, 86, 83, 86, 88, 81, 79, 85, 82, 80], ![82, 88, 85, 83, 81, 79, 78, 82, 81, 84, 81, 84, 76, 80, 78, 88, 82, 91, 80, 84, 77, 80, 81, 82, 87, 88, 83, 80, 79, 78, 80, 81, 82, 85, 83, 84, 83, 77, 81, 78, 86, 84, 86, 79, 79, 83, 78, 84, 82], ![76, 80, 83, 75, 82, 85, 84, 87, 82, 78, 85, 80, 81, 82, 82, 84, 85, 85, 84, 81, 87, 86, 81, 88, 86, 83, 80, 80, 82, 79, 78, 89, 89, 81, 82, 83, 79, 80, 86, 85, 90, 79, 82, 84, 84, 78, 81, 81, 86], ![85, 80, 87, 83, 86, 87, 84, 83, 83, 77, 83, 81, 83, 92, 85, 86, 80, 76, 75, 79, 79, 78, 78, 80, 84, 81, 80, 83, 83, 84, 88, 86, 88, 81, 84, 80, 84, 87, 81, 80, 79, 77, 79, 78, 81, 85, 83, 82, 83], ![83, 78, 80, 85, 89, 79, 87, 83, 83, 80, 77, 80, 88, 83, 80, 82, 83, 82, 86, 79, 90, 85, 79, 82, 82, 83, 83, 83, 83, 88, 80, 72, 83, 85, 82, 80, 91, 83, 80, 84, 77, 78, 88, 81, 85, 87, 82, 77, 82], ![88, 90, 84, 79, 87, 80, 81, 86, 77, 85, 89, 84, 88, 80, 75, 78, 87, 82, 80, 83, 81, 81, 79, 79, 83, 85, 87, 87, 83, 82, 82, 82, 82, 86, 82, 84, 79, 82, 79, 79, 78, 82, 82, 83, 78, 83, 84, 80, 78], ![85, 84, 79, 86, 81, 86, 80, 80, 87, 87, 80, 78, 80, 80, 81, 82, 86, 84, 84, 79, 84, 84, 83, 80, 78, 83, 81, 79, 77, 82, 76, 83, 85, 80, 86, 88, 77, 83, 82, 86, 79, 85, 79, 79, 87, 81, 84, 85, 87], ![81, 81, 81, 84, 81, 85, 86, 79, 81, 84, 77, 82, 85, 80, 88, 80, 85, 82, 81, 77, 83, 88, 79, 80, 83, 79, 82, 82, 85, 84, 83, 86, 82, 80, 82, 80, 80, 87, 82, 86, 83, 84, 82, 89, 84, 80, 87, 86, 78]]

def tailEnvelope0028FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![86, 83, 81, 82, 77, 82, 82, 85, 86, 88, 89, 85, 86, 78, 80, 80, 88, 85, 78, 81, 85, 74, 79, 82, 79, 85, 90, 79, 82, 85, 84, 80, 86, 87, 78, 79, 84, 82, 82, 83, 87, 88, 89, 81, 82, 79, 79, 79, 88], ![86, 81, 79, 81, 83, 85, 84, 82, 86, 83, 80, 77, 80, 85, 80, 80, 81, 85, 82, 80, 85, 81, 80, 91, 86, 84, 81, 74, 81, 86, 81, 86, 83, 85, 79, 77, 85, 83, 79, 85, 80, 81, 84, 79, 77, 82, 87, 80, 91], ![80, 78, 82, 77, 89, 89, 83, 81, 88, 77, 75, 87, 83, 85, 79, 80, 87, 78, 79, 86, 81, 87, 84, 80, 83, 87, 76, 79, 86, 84, 84, 84, 80, 78, 82, 83, 81, 82, 90, 86, 80, 83, 88, 81, 83, 87, 77, 83, 82], ![78, 85, 87, 81, 79, 82, 76, 77, 80, 85, 82, 84, 86, 88, 85, 80, 84, 81, 83, 88, 79, 83, 90, 79, 85, 85, 83, 83, 88, 83, 82, 82, 78, 82, 79, 76, 88, 81, 85, 74, 75, 83, 86, 83, 83, 82, 91, 82, 79], ![81, 86, 83, 81, 81, 78, 80, 84, 84, 85, 87, 82, 80, 83, 76, 76, 82, 84, 90, 81, 81, 83, 85, 83, 83, 86, 86, 82, 82, 78, 83, 81, 73, 81, 85, 82, 81, 84, 78, 83, 87, 83, 85, 78, 88, 77, 81, 83, 82], ![85, 83, 81, 80, 82, 86, 86, 81, 75, 82, 81, 82, 79, 80, 88, 89, 82, 80, 81, 76, 80, 81, 80, 85, 89, 84, 85, 82, 80, 85, 87, 83, 87, 87, 83, 80, 75, 80, 85, 81, 85, 80, 82, 83, 78, 80, 81, 93, 83], ![85, 81, 79, 79, 86, 85, 83, 86, 85, 83, 83, 75, 80, 86, 85, 81, 78, 80, 81, 86, 88, 82, 88, 84, 84, 75, 77, 87, 76, 79, 84, 75, 83, 77, 82, 85, 82, 78, 85, 89, 84, 83, 80, 81, 84, 85, 85, 85, 83], ![80, 80, 79, 93, 83, 83, 84, 82, 82, 78, 87, 87, 85, 79, 83, 90, 78, 79, 81, 80, 83, 83, 82, 82, 78, 77, 86, 84, 83, 84, 80, 83, 80, 81, 85, 84, 83, 85, 82, 86, 85, 78, 82, 89, 82, 86, 83, 83, 78], ![81, 85, 81, 83, 85, 82, 84, 82, 87, 82, 86, 77, 81, 82, 79, 85, 82, 82, 85, 84, 82, 80, 83, 85, 82, 81, 82, 82, 80, 79, 79, 83, 86, 77, 87, 86, 84, 85, 79, 79, 84, 84, 77, 85, 86, 80, 84, 80, 79]]

def tailEnvelope0028FailureFibreMaxOne : Fin 9 → Nat :=
  ![90, 90, 91, 90, 92, 91, 90, 88, 89]

def tailEnvelope0028FailureFibreMaxThree : Fin 9 → Nat :=
  ![90, 91, 90, 91, 90, 93, 89, 93, 87]

theorem tailEnvelope0028FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5778092 (tailEnvelope0028CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0028FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0028FailureCutoffTreeOne0Check :
    tailEnvelope0028FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0028FailureFibreExactOne 0) 5778092 0 = true := by decide

theorem tailEnvelope0028FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5778092 (tailEnvelope0028FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0028FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0028FailureCutoffTreeOne0Check

def tailEnvelope0028FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0028FailureCutoffTreeOne1Check :
    tailEnvelope0028FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0028FailureFibreExactOne 1) 5778092 0 = true := by decide

theorem tailEnvelope0028FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5778092 (tailEnvelope0028FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0028FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0028FailureCutoffTreeOne1Check

def tailEnvelope0028FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0028FailureCutoffTreeOne2Check :
    tailEnvelope0028FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0028FailureFibreExactOne 2) 5778092 0 = true := by decide

theorem tailEnvelope0028FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5778092 (tailEnvelope0028FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0028FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0028FailureCutoffTreeOne2Check

def tailEnvelope0028FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0028FailureCutoffTreeOne3Check :
    tailEnvelope0028FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0028FailureFibreExactOne 3) 5778092 0 = true := by decide

theorem tailEnvelope0028FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5778092 (tailEnvelope0028FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0028FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0028FailureCutoffTreeOne3Check

def tailEnvelope0028FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0028FailureCutoffTreeOne4Check :
    tailEnvelope0028FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0028FailureFibreExactOne 4) 5778092 0 = true := by decide

theorem tailEnvelope0028FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5778092 (tailEnvelope0028FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0028FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0028FailureCutoffTreeOne4Check

def tailEnvelope0028FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0028FailureCutoffTreeOne5Check :
    tailEnvelope0028FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0028FailureFibreExactOne 5) 5778092 0 = true := by decide

theorem tailEnvelope0028FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5778092 (tailEnvelope0028FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0028FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0028FailureCutoffTreeOne5Check

def tailEnvelope0028FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0028FailureCutoffTreeOne6Check :
    tailEnvelope0028FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0028FailureFibreExactOne 6) 5778092 0 = true := by decide

theorem tailEnvelope0028FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5778092 (tailEnvelope0028FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0028FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0028FailureCutoffTreeOne6Check

def tailEnvelope0028FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0028FailureCutoffTreeOne7Check :
    tailEnvelope0028FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0028FailureFibreExactOne 7) 5778092 0 = true := by decide

theorem tailEnvelope0028FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5778092 (tailEnvelope0028FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0028FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0028FailureCutoffTreeOne7Check

def tailEnvelope0028FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0028FailureCutoffTreeOne8Check :
    tailEnvelope0028FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0028FailureFibreExactOne 8) 5778092 0 = true := by decide

theorem tailEnvelope0028FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5778092 (tailEnvelope0028FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0028FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0028FailureCutoffTreeOne8Check

theorem tailEnvelope0028FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5778092 (tailEnvelope0028FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0028FailureFibreCutoffOne0 residue
  · exact tailEnvelope0028FailureFibreCutoffOne1 residue
  · exact tailEnvelope0028FailureFibreCutoffOne2 residue
  · exact tailEnvelope0028FailureFibreCutoffOne3 residue
  · exact tailEnvelope0028FailureFibreCutoffOne4 residue
  · exact tailEnvelope0028FailureFibreCutoffOne5 residue
  · exact tailEnvelope0028FailureFibreCutoffOne6 residue
  · exact tailEnvelope0028FailureFibreCutoffOne7 residue
  · exact tailEnvelope0028FailureFibreCutoffOne8 residue

theorem tailEnvelope0028FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0028FailureFibreExactOne cell residue ≤ tailEnvelope0028FailureFibreMaxOne cell := by decide

theorem tailEnvelope0028FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0028CountsOne tailEnvelope0028FailureFibreMaxOne 20508 = true := by decide

theorem tailEnvelope0028FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0028CountsOne tailEnvelope0028FailureFibreMaxOne 20596 = true := by decide

theorem tailEnvelope0028FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5778092 (tailEnvelope0028CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0028FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0028FailureCutoffTreeThree0Check :
    tailEnvelope0028FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0028FailureFibreExactThree 0) 5778092 0 = true := by decide

theorem tailEnvelope0028FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5778092 (tailEnvelope0028FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0028FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0028FailureCutoffTreeThree0Check

def tailEnvelope0028FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0028FailureCutoffTreeThree1Check :
    tailEnvelope0028FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0028FailureFibreExactThree 1) 5778092 0 = true := by decide

theorem tailEnvelope0028FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5778092 (tailEnvelope0028FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0028FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0028FailureCutoffTreeThree1Check

def tailEnvelope0028FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0028FailureCutoffTreeThree2Check :
    tailEnvelope0028FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0028FailureFibreExactThree 2) 5778092 0 = true := by decide

theorem tailEnvelope0028FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5778092 (tailEnvelope0028FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0028FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0028FailureCutoffTreeThree2Check

def tailEnvelope0028FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0028FailureCutoffTreeThree3Check :
    tailEnvelope0028FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0028FailureFibreExactThree 3) 5778092 0 = true := by decide

theorem tailEnvelope0028FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5778092 (tailEnvelope0028FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0028FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0028FailureCutoffTreeThree3Check

def tailEnvelope0028FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0028FailureCutoffTreeThree4Check :
    tailEnvelope0028FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0028FailureFibreExactThree 4) 5778092 0 = true := by decide

theorem tailEnvelope0028FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5778092 (tailEnvelope0028FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0028FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0028FailureCutoffTreeThree4Check

def tailEnvelope0028FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0028FailureCutoffTreeThree5Check :
    tailEnvelope0028FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0028FailureFibreExactThree 5) 5778092 0 = true := by decide

theorem tailEnvelope0028FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5778092 (tailEnvelope0028FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0028FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0028FailureCutoffTreeThree5Check

def tailEnvelope0028FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0028FailureCutoffTreeThree6Check :
    tailEnvelope0028FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0028FailureFibreExactThree 6) 5778092 0 = true := by decide

theorem tailEnvelope0028FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5778092 (tailEnvelope0028FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0028FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0028FailureCutoffTreeThree6Check

def tailEnvelope0028FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0028FailureCutoffTreeThree7Check :
    tailEnvelope0028FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0028FailureFibreExactThree 7) 5778092 0 = true := by decide

theorem tailEnvelope0028FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5778092 (tailEnvelope0028FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0028FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0028FailureCutoffTreeThree7Check

def tailEnvelope0028FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0028FailureCutoffTreeThree8Check :
    tailEnvelope0028FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0028FailureFibreExactThree 8) 5778092 0 = true := by decide

theorem tailEnvelope0028FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5778092 (tailEnvelope0028FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0028FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0028FailureCutoffTreeThree8Check

theorem tailEnvelope0028FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5778092 (tailEnvelope0028FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0028FailureFibreCutoffThree0 residue
  · exact tailEnvelope0028FailureFibreCutoffThree1 residue
  · exact tailEnvelope0028FailureFibreCutoffThree2 residue
  · exact tailEnvelope0028FailureFibreCutoffThree3 residue
  · exact tailEnvelope0028FailureFibreCutoffThree4 residue
  · exact tailEnvelope0028FailureFibreCutoffThree5 residue
  · exact tailEnvelope0028FailureFibreCutoffThree6 residue
  · exact tailEnvelope0028FailureFibreCutoffThree7 residue
  · exact tailEnvelope0028FailureFibreCutoffThree8 residue

theorem tailEnvelope0028FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0028FailureFibreExactThree cell residue ≤ tailEnvelope0028FailureFibreMaxThree cell := by decide

theorem tailEnvelope0028FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0028CountsThree tailEnvelope0028FailureFibreMaxThree 20506 = true := by decide

theorem tailEnvelope0028FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0028CountsThree tailEnvelope0028FailureFibreMaxThree 20593 = true := by decide

theorem tailEnvelope0028FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5749347 5778093
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5778092 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0028CountsOne) (fibre := tailEnvelope0028FailureFibreMaxOne) (bound := 20508) tailEnvelope0028FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0028CountsOne tailEnvelope0028FailureFibreMaxOne tailEnvelope0028FailureFibreExactOne
      (lower := 5749347) (upper := 5778092) (N := N) (bound := 20508)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0028FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0028FailureFibreCutoffOne
      tailEnvelope0028FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0028CountsThree) (fibre := tailEnvelope0028FailureFibreMaxThree) (bound := 20506) tailEnvelope0028FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0028CountsThree tailEnvelope0028FailureFibreMaxThree tailEnvelope0028FailureFibreExactThree
      (lower := 5749347) (upper := 5778092) (N := N) (bound := 20506)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0028FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0028FailureFibreCutoffThree
      tailEnvelope0028FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0028FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5749347 5778093
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5778092 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0028CountsOne) (fibre := tailEnvelope0028FailureFibreMaxOne) (bound := 20596) tailEnvelope0028FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0028CountsOne tailEnvelope0028FailureFibreMaxOne tailEnvelope0028FailureFibreExactOne
      (lower := 5749347) (upper := 5778092) (N := N) (bound := 20596)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0028FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0028FailureFibreCutoffOne
      tailEnvelope0028FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0028CountsThree) (fibre := tailEnvelope0028FailureFibreMaxThree) (bound := 20593) tailEnvelope0028FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0028CountsThree tailEnvelope0028FailureFibreMaxThree tailEnvelope0028FailureFibreExactThree
      (lower := 5749347) (upper := 5778092) (N := N) (bound := 20593)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0028FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0028FailureFibreCutoffThree
      tailEnvelope0028FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0029FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![79, 86, 86, 82, 86, 88, 76, 75, 81, 81, 87, 80, 82, 84, 86, 86, 79, 79, 89, 85, 80, 84, 89, 88, 80, 82, 77, 86, 91, 80, 81, 86, 81, 79, 81, 88, 86, 82, 80, 76, 80, 83, 81, 84, 77, 86, 88, 81, 86], ![80, 78, 86, 82, 82, 84, 83, 85, 86, 78, 90, 84, 83, 88, 82, 80, 83, 83, 91, 90, 82, 83, 88, 79, 78, 78, 86, 81, 85, 83, 87, 74, 77, 87, 81, 87, 81, 86, 82, 88, 86, 84, 86, 90, 81, 79, 86, 82, 80], ![83, 88, 85, 83, 81, 79, 79, 82, 82, 84, 81, 84, 77, 80, 81, 88, 83, 91, 83, 84, 77, 80, 81, 82, 87, 88, 83, 80, 80, 78, 81, 82, 82, 86, 83, 85, 83, 77, 81, 78, 87, 85, 86, 79, 80, 83, 79, 85, 82], ![76, 80, 83, 76, 83, 87, 85, 87, 82, 78, 85, 80, 81, 82, 82, 84, 85, 85, 84, 82, 87, 88, 82, 89, 86, 83, 80, 80, 82, 80, 78, 90, 89, 81, 82, 83, 79, 82, 87, 86, 90, 80, 82, 85, 84, 79, 81, 82, 86], ![85, 80, 87, 83, 86, 87, 84, 83, 83, 77, 84, 82, 84, 93, 85, 86, 80, 76, 75, 81, 79, 79, 78, 80, 84, 81, 81, 84, 84, 85, 88, 86, 88, 81, 84, 82, 84, 87, 82, 80, 79, 77, 79, 80, 81, 87, 83, 82, 83], ![83, 80, 80, 87, 89, 79, 87, 83, 83, 82, 77, 81, 88, 83, 80, 82, 83, 84, 86, 81, 90, 85, 79, 82, 82, 84, 83, 84, 83, 88, 80, 72, 83, 87, 82, 80, 92, 83, 80, 84, 77, 78, 88, 82, 85, 87, 82, 77, 82], ![88, 91, 85, 81, 87, 80, 81, 87, 78, 86, 90, 84, 88, 80, 75, 79, 87, 83, 80, 83, 81, 81, 79, 81, 84, 85, 89, 87, 83, 82, 82, 82, 82, 86, 82, 84, 79, 82, 79, 79, 79, 83, 82, 84, 78, 83, 84, 80, 79], ![85, 85, 80, 86, 81, 87, 81, 81, 87, 87, 80, 78, 80, 81, 81, 83, 86, 84, 84, 79, 84, 84, 83, 82, 79, 83, 82, 79, 77, 83, 77, 83, 87, 80, 87, 88, 77, 83, 83, 86, 80, 85, 79, 79, 88, 81, 85, 85, 89], ![81, 81, 81, 85, 82, 85, 87, 80, 82, 84, 77, 82, 85, 81, 89, 80, 85, 82, 81, 77, 86, 88, 80, 80, 83, 80, 82, 82, 86, 84, 83, 86, 82, 80, 83, 81, 81, 87, 83, 87, 83, 85, 82, 89, 85, 80, 88, 86, 78]]

def tailEnvelope0029FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![86, 83, 81, 82, 79, 83, 83, 86, 86, 88, 89, 85, 86, 78, 81, 80, 89, 85, 79, 81, 86, 74, 81, 82, 81, 85, 90, 79, 82, 85, 85, 81, 87, 87, 78, 79, 84, 82, 84, 83, 88, 89, 89, 81, 82, 79, 79, 79, 88], ![86, 81, 79, 81, 84, 85, 85, 82, 86, 83, 80, 77, 80, 86, 81, 81, 81, 85, 82, 80, 86, 81, 81, 91, 86, 84, 82, 74, 82, 87, 81, 87, 83, 85, 81, 77, 86, 83, 79, 85, 80, 81, 85, 79, 78, 84, 87, 82, 91], ![80, 78, 83, 77, 90, 89, 84, 82, 88, 77, 76, 87, 84, 85, 79, 80, 87, 78, 80, 86, 82, 89, 84, 80, 83, 88, 76, 79, 86, 84, 84, 84, 80, 78, 82, 84, 82, 84, 91, 86, 80, 83, 88, 82, 83, 88, 77, 83, 82], ![81, 85, 90, 81, 80, 82, 76, 77, 81, 85, 83, 85, 87, 89, 85, 80, 84, 81, 83, 89, 79, 83, 90, 79, 85, 86, 84, 85, 88, 84, 82, 82, 78, 83, 79, 77, 88, 81, 85, 74, 76, 85, 86, 85, 83, 83, 91, 82, 79], ![81, 86, 84, 81, 82, 78, 80, 84, 85, 87, 87, 82, 80, 83, 76, 78, 82, 86, 90, 81, 82, 83, 85, 84, 83, 87, 86, 82, 82, 78, 83, 82, 73, 82, 86, 82, 82, 84, 80, 84, 87, 84, 85, 79, 88, 77, 81, 84, 82], ![85, 83, 81, 80, 82, 88, 86, 82, 75, 83, 81, 83, 80, 81, 88, 89, 82, 80, 81, 78, 80, 82, 80, 86, 89, 85, 86, 83, 80, 86, 87, 84, 88, 87, 83, 80, 75, 80, 85, 81, 85, 80, 83, 83, 78, 80, 81, 94, 84], ![86, 81, 80, 80, 86, 86, 85, 86, 85, 83, 83, 76, 80, 87, 85, 81, 80, 80, 82, 86, 88, 84, 88, 84, 84, 75, 77, 87, 76, 79, 84, 75, 83, 77, 82, 86, 82, 79, 86, 89, 84, 84, 80, 81, 85, 85, 86, 85, 83], ![80, 81, 79, 93, 83, 83, 84, 83, 82, 80, 87, 88, 85, 79, 83, 90, 78, 79, 81, 80, 83, 83, 82, 83, 78, 77, 87, 84, 84, 85, 80, 83, 80, 81, 86, 84, 86, 86, 82, 87, 85, 79, 84, 89, 83, 86, 83, 83, 78], ![82, 86, 81, 83, 85, 82, 84, 82, 87, 82, 86, 77, 81, 82, 80, 85, 85, 83, 87, 84, 82, 80, 83, 85, 82, 81, 83, 82, 80, 79, 79, 84, 87, 78, 88, 86, 84, 85, 79, 79, 85, 84, 78, 85, 86, 81, 84, 81, 80]]

def tailEnvelope0029FailureFibreMaxOne : Fin 9 → Nat :=
  ![91, 91, 91, 90, 93, 92, 91, 89, 89]

def tailEnvelope0029FailureFibreMaxThree : Fin 9 → Nat :=
  ![90, 91, 91, 91, 90, 94, 89, 93, 88]

theorem tailEnvelope0029FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5806982 (tailEnvelope0029CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0029FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0029FailureCutoffTreeOne0Check :
    tailEnvelope0029FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0029FailureFibreExactOne 0) 5806982 0 = true := by decide

theorem tailEnvelope0029FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5806982 (tailEnvelope0029FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0029FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0029FailureCutoffTreeOne0Check

def tailEnvelope0029FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0029FailureCutoffTreeOne1Check :
    tailEnvelope0029FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0029FailureFibreExactOne 1) 5806982 0 = true := by decide

theorem tailEnvelope0029FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5806982 (tailEnvelope0029FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0029FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0029FailureCutoffTreeOne1Check

def tailEnvelope0029FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0029FailureCutoffTreeOne2Check :
    tailEnvelope0029FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0029FailureFibreExactOne 2) 5806982 0 = true := by decide

theorem tailEnvelope0029FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5806982 (tailEnvelope0029FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0029FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0029FailureCutoffTreeOne2Check

def tailEnvelope0029FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0029FailureCutoffTreeOne3Check :
    tailEnvelope0029FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0029FailureFibreExactOne 3) 5806982 0 = true := by decide

theorem tailEnvelope0029FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5806982 (tailEnvelope0029FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0029FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0029FailureCutoffTreeOne3Check

def tailEnvelope0029FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0029FailureCutoffTreeOne4Check :
    tailEnvelope0029FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0029FailureFibreExactOne 4) 5806982 0 = true := by decide

theorem tailEnvelope0029FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5806982 (tailEnvelope0029FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0029FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0029FailureCutoffTreeOne4Check

def tailEnvelope0029FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0029FailureCutoffTreeOne5Check :
    tailEnvelope0029FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0029FailureFibreExactOne 5) 5806982 0 = true := by decide

theorem tailEnvelope0029FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5806982 (tailEnvelope0029FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0029FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0029FailureCutoffTreeOne5Check

def tailEnvelope0029FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0029FailureCutoffTreeOne6Check :
    tailEnvelope0029FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0029FailureFibreExactOne 6) 5806982 0 = true := by decide

theorem tailEnvelope0029FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5806982 (tailEnvelope0029FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0029FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0029FailureCutoffTreeOne6Check

def tailEnvelope0029FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0029FailureCutoffTreeOne7Check :
    tailEnvelope0029FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0029FailureFibreExactOne 7) 5806982 0 = true := by decide

theorem tailEnvelope0029FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5806982 (tailEnvelope0029FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0029FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0029FailureCutoffTreeOne7Check

def tailEnvelope0029FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0029FailureCutoffTreeOne8Check :
    tailEnvelope0029FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0029FailureFibreExactOne 8) 5806982 0 = true := by decide

theorem tailEnvelope0029FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5806982 (tailEnvelope0029FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0029FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0029FailureCutoffTreeOne8Check

theorem tailEnvelope0029FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5806982 (tailEnvelope0029FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0029FailureFibreCutoffOne0 residue
  · exact tailEnvelope0029FailureFibreCutoffOne1 residue
  · exact tailEnvelope0029FailureFibreCutoffOne2 residue
  · exact tailEnvelope0029FailureFibreCutoffOne3 residue
  · exact tailEnvelope0029FailureFibreCutoffOne4 residue
  · exact tailEnvelope0029FailureFibreCutoffOne5 residue
  · exact tailEnvelope0029FailureFibreCutoffOne6 residue
  · exact tailEnvelope0029FailureFibreCutoffOne7 residue
  · exact tailEnvelope0029FailureFibreCutoffOne8 residue

theorem tailEnvelope0029FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0029FailureFibreExactOne cell residue ≤ tailEnvelope0029FailureFibreMaxOne cell := by decide

theorem tailEnvelope0029FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0029CountsOne tailEnvelope0029FailureFibreMaxOne 20616 = true := by decide

theorem tailEnvelope0029FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0029CountsOne tailEnvelope0029FailureFibreMaxOne 20705 = true := by decide

theorem tailEnvelope0029FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5806982 (tailEnvelope0029CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0029FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0029FailureCutoffTreeThree0Check :
    tailEnvelope0029FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0029FailureFibreExactThree 0) 5806982 0 = true := by decide

theorem tailEnvelope0029FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5806982 (tailEnvelope0029FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0029FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0029FailureCutoffTreeThree0Check

def tailEnvelope0029FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0029FailureCutoffTreeThree1Check :
    tailEnvelope0029FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0029FailureFibreExactThree 1) 5806982 0 = true := by decide

theorem tailEnvelope0029FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5806982 (tailEnvelope0029FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0029FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0029FailureCutoffTreeThree1Check

def tailEnvelope0029FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0029FailureCutoffTreeThree2Check :
    tailEnvelope0029FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0029FailureFibreExactThree 2) 5806982 0 = true := by decide

theorem tailEnvelope0029FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5806982 (tailEnvelope0029FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0029FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0029FailureCutoffTreeThree2Check

def tailEnvelope0029FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0029FailureCutoffTreeThree3Check :
    tailEnvelope0029FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0029FailureFibreExactThree 3) 5806982 0 = true := by decide

theorem tailEnvelope0029FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5806982 (tailEnvelope0029FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0029FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0029FailureCutoffTreeThree3Check

def tailEnvelope0029FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0029FailureCutoffTreeThree4Check :
    tailEnvelope0029FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0029FailureFibreExactThree 4) 5806982 0 = true := by decide

theorem tailEnvelope0029FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5806982 (tailEnvelope0029FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0029FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0029FailureCutoffTreeThree4Check

def tailEnvelope0029FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0029FailureCutoffTreeThree5Check :
    tailEnvelope0029FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0029FailureFibreExactThree 5) 5806982 0 = true := by decide

theorem tailEnvelope0029FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5806982 (tailEnvelope0029FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0029FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0029FailureCutoffTreeThree5Check

def tailEnvelope0029FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0029FailureCutoffTreeThree6Check :
    tailEnvelope0029FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0029FailureFibreExactThree 6) 5806982 0 = true := by decide

theorem tailEnvelope0029FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5806982 (tailEnvelope0029FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0029FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0029FailureCutoffTreeThree6Check

def tailEnvelope0029FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0029FailureCutoffTreeThree7Check :
    tailEnvelope0029FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0029FailureFibreExactThree 7) 5806982 0 = true := by decide

theorem tailEnvelope0029FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5806982 (tailEnvelope0029FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0029FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0029FailureCutoffTreeThree7Check

def tailEnvelope0029FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0029FailureCutoffTreeThree8Check :
    tailEnvelope0029FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0029FailureFibreExactThree 8) 5806982 0 = true := by decide

theorem tailEnvelope0029FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5806982 (tailEnvelope0029FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0029FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0029FailureCutoffTreeThree8Check

theorem tailEnvelope0029FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5806982 (tailEnvelope0029FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0029FailureFibreCutoffThree0 residue
  · exact tailEnvelope0029FailureFibreCutoffThree1 residue
  · exact tailEnvelope0029FailureFibreCutoffThree2 residue
  · exact tailEnvelope0029FailureFibreCutoffThree3 residue
  · exact tailEnvelope0029FailureFibreCutoffThree4 residue
  · exact tailEnvelope0029FailureFibreCutoffThree5 residue
  · exact tailEnvelope0029FailureFibreCutoffThree6 residue
  · exact tailEnvelope0029FailureFibreCutoffThree7 residue
  · exact tailEnvelope0029FailureFibreCutoffThree8 residue

theorem tailEnvelope0029FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0029FailureFibreExactThree cell residue ≤ tailEnvelope0029FailureFibreMaxThree cell := by decide

theorem tailEnvelope0029FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0029CountsThree tailEnvelope0029FailureFibreMaxThree 20609 = true := by decide

theorem tailEnvelope0029FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0029CountsThree tailEnvelope0029FailureFibreMaxThree 20697 = true := by decide

theorem tailEnvelope0029FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5778093 5806983
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5806982 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0029CountsOne) (fibre := tailEnvelope0029FailureFibreMaxOne) (bound := 20616) tailEnvelope0029FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0029CountsOne tailEnvelope0029FailureFibreMaxOne tailEnvelope0029FailureFibreExactOne
      (lower := 5778093) (upper := 5806982) (N := N) (bound := 20616)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0029FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0029FailureFibreCutoffOne
      tailEnvelope0029FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0029CountsThree) (fibre := tailEnvelope0029FailureFibreMaxThree) (bound := 20609) tailEnvelope0029FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0029CountsThree tailEnvelope0029FailureFibreMaxThree tailEnvelope0029FailureFibreExactThree
      (lower := 5778093) (upper := 5806982) (N := N) (bound := 20609)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0029FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0029FailureFibreCutoffThree
      tailEnvelope0029FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0029FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5778093 5806983
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5806982 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0029CountsOne) (fibre := tailEnvelope0029FailureFibreMaxOne) (bound := 20705) tailEnvelope0029FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0029CountsOne tailEnvelope0029FailureFibreMaxOne tailEnvelope0029FailureFibreExactOne
      (lower := 5778093) (upper := 5806982) (N := N) (bound := 20705)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0029FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0029FailureFibreCutoffOne
      tailEnvelope0029FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0029CountsThree) (fibre := tailEnvelope0029FailureFibreMaxThree) (bound := 20697) tailEnvelope0029FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0029CountsThree tailEnvelope0029FailureFibreMaxThree tailEnvelope0029FailureFibreExactThree
      (lower := 5778093) (upper := 5806982) (N := N) (bound := 20697)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0029FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0029FailureFibreCutoffThree
      tailEnvelope0029FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0030FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![79, 87, 86, 83, 86, 88, 76, 75, 81, 82, 87, 81, 82, 84, 86, 88, 79, 80, 89, 86, 80, 84, 89, 88, 80, 83, 77, 86, 91, 81, 81, 87, 81, 79, 82, 88, 86, 82, 80, 76, 80, 83, 82, 84, 79, 87, 88, 82, 86], ![80, 79, 86, 82, 82, 84, 83, 86, 86, 79, 90, 84, 83, 88, 82, 81, 83, 84, 91, 90, 83, 83, 89, 79, 78, 78, 86, 81, 85, 83, 87, 76, 78, 87, 82, 87, 82, 86, 83, 88, 87, 84, 87, 90, 81, 80, 86, 82, 81], ![83, 88, 85, 83, 81, 80, 79, 83, 82, 84, 81, 85, 79, 81, 81, 88, 83, 91, 84, 84, 78, 80, 82, 82, 89, 88, 83, 81, 80, 78, 82, 82, 83, 86, 83, 85, 83, 77, 82, 78, 88, 85, 86, 80, 80, 84, 81, 85, 84], ![76, 80, 84, 76, 84, 87, 85, 87, 83, 78, 85, 80, 82, 82, 83, 84, 85, 85, 85, 83, 89, 88, 83, 89, 86, 83, 80, 80, 83, 80, 79, 90, 89, 81, 83, 83, 80, 82, 88, 86, 90, 80, 82, 85, 86, 79, 81, 82, 88], ![85, 80, 88, 84, 87, 87, 84, 83, 83, 78, 85, 84, 85, 93, 86, 86, 80, 76, 76, 82, 79, 79, 78, 80, 84, 81, 82, 85, 85, 87, 88, 86, 88, 81, 85, 82, 84, 87, 82, 81, 80, 77, 80, 80, 82, 87, 83, 82, 83], ![84, 80, 84, 87, 89, 79, 87, 83, 84, 82, 79, 81, 88, 83, 80, 82, 87, 84, 88, 81, 91, 85, 79, 82, 82, 84, 83, 85, 83, 88, 81, 72, 83, 88, 82, 81, 92, 84, 80, 84, 77, 78, 88, 83, 85, 87, 82, 77, 82], ![89, 91, 85, 81, 87, 80, 82, 89, 81, 87, 90, 84, 88, 81, 76, 79, 87, 83, 80, 83, 81, 81, 79, 82, 84, 85, 89, 87, 83, 82, 82, 83, 82, 87, 82, 84, 79, 82, 79, 80, 80, 85, 83, 84, 78, 83, 86, 81, 79], ![86, 85, 80, 86, 81, 87, 81, 81, 87, 87, 80, 78, 80, 81, 82, 84, 87, 84, 84, 79, 84, 85, 84, 83, 79, 83, 82, 79, 77, 83, 77, 85, 87, 83, 87, 88, 77, 84, 83, 87, 80, 85, 79, 79, 88, 82, 85, 87, 89], ![81, 81, 81, 85, 82, 87, 87, 80, 82, 85, 77, 83, 85, 82, 91, 80, 85, 82, 81, 80, 86, 89, 81, 80, 84, 80, 82, 83, 86, 85, 83, 86, 82, 80, 83, 82, 81, 88, 84, 87, 85, 85, 82, 89, 85, 80, 88, 86, 78]]

def tailEnvelope0030FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![87, 83, 81, 82, 80, 84, 84, 87, 86, 88, 89, 86, 86, 79, 81, 81, 89, 86, 79, 81, 86, 76, 81, 84, 81, 86, 91, 79, 82, 86, 85, 81, 87, 87, 78, 79, 84, 83, 84, 84, 89, 89, 89, 81, 82, 79, 80, 80, 89], ![86, 81, 79, 82, 84, 85, 85, 82, 86, 84, 80, 79, 81, 87, 82, 81, 81, 85, 82, 81, 86, 81, 81, 91, 86, 84, 82, 74, 85, 87, 83, 87, 84, 85, 82, 77, 87, 84, 80, 85, 81, 81, 85, 79, 80, 84, 89, 82, 91], ![80, 79, 83, 79, 90, 90, 84, 82, 88, 78, 76, 87, 84, 85, 79, 82, 87, 78, 80, 87, 83, 90, 84, 80, 83, 88, 77, 79, 87, 84, 84, 84, 80, 78, 83, 85, 83, 85, 91, 86, 80, 83, 89, 82, 84, 88, 77, 83, 82], ![81, 85, 90, 81, 80, 83, 76, 77, 81, 85, 84, 85, 88, 89, 85, 80, 86, 81, 84, 89, 79, 83, 90, 79, 86, 86, 86, 85, 89, 84, 82, 82, 79, 84, 80, 77, 88, 81, 85, 75, 77, 85, 86, 85, 83, 85, 91, 82, 79], ![83, 87, 84, 82, 82, 78, 81, 84, 86, 87, 87, 82, 80, 83, 77, 78, 83, 87, 90, 82, 82, 83, 86, 84, 84, 87, 86, 82, 84, 78, 84, 83, 76, 83, 86, 83, 82, 84, 80, 84, 87, 84, 85, 79, 88, 77, 81, 84, 82], ![85, 83, 82, 80, 83, 88, 87, 83, 75, 83, 82, 83, 81, 82, 89, 89, 82, 81, 81, 78, 81, 82, 81, 86, 90, 85, 87, 83, 80, 86, 88, 84, 88, 87, 83, 80, 75, 81, 86, 82, 85, 81, 83, 84, 78, 81, 81, 94, 84], ![88, 82, 80, 80, 87, 86, 85, 86, 85, 83, 84, 76, 81, 87, 85, 82, 80, 81, 82, 86, 88, 84, 89, 84, 84, 75, 77, 88, 76, 80, 84, 75, 84, 77, 82, 87, 82, 80, 86, 89, 84, 84, 80, 82, 85, 86, 86, 85, 84], ![81, 81, 79, 93, 83, 83, 85, 83, 83, 80, 87, 88, 85, 80, 83, 90, 78, 80, 81, 81, 84, 84, 82, 83, 78, 79, 87, 86, 84, 85, 80, 83, 80, 82, 86, 85, 86, 86, 82, 88, 85, 81, 85, 90, 83, 86, 83, 83, 79], ![82, 86, 82, 83, 85, 82, 84, 82, 87, 83, 87, 77, 81, 83, 80, 86, 85, 85, 87, 84, 82, 80, 83, 86, 82, 82, 83, 82, 80, 79, 79, 85, 88, 79, 88, 86, 84, 85, 80, 80, 85, 84, 78, 85, 86, 81, 86, 81, 81]]

def tailEnvelope0030FailureFibreMaxOne : Fin 9 → Nat :=
  ![91, 91, 91, 90, 93, 92, 91, 89, 91]

def tailEnvelope0030FailureFibreMaxThree : Fin 9 → Nat :=
  ![91, 91, 91, 91, 90, 94, 89, 93, 88]

theorem tailEnvelope0030FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5836016 (tailEnvelope0030CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0030FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0030FailureCutoffTreeOne0Check :
    tailEnvelope0030FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0030FailureFibreExactOne 0) 5836016 0 = true := by decide

theorem tailEnvelope0030FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5836016 (tailEnvelope0030FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0030FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0030FailureCutoffTreeOne0Check

def tailEnvelope0030FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0030FailureCutoffTreeOne1Check :
    tailEnvelope0030FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0030FailureFibreExactOne 1) 5836016 0 = true := by decide

theorem tailEnvelope0030FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5836016 (tailEnvelope0030FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0030FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0030FailureCutoffTreeOne1Check

def tailEnvelope0030FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0030FailureCutoffTreeOne2Check :
    tailEnvelope0030FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0030FailureFibreExactOne 2) 5836016 0 = true := by decide

theorem tailEnvelope0030FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5836016 (tailEnvelope0030FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0030FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0030FailureCutoffTreeOne2Check

def tailEnvelope0030FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0030FailureCutoffTreeOne3Check :
    tailEnvelope0030FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0030FailureFibreExactOne 3) 5836016 0 = true := by decide

theorem tailEnvelope0030FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5836016 (tailEnvelope0030FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0030FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0030FailureCutoffTreeOne3Check

def tailEnvelope0030FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0030FailureCutoffTreeOne4Check :
    tailEnvelope0030FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0030FailureFibreExactOne 4) 5836016 0 = true := by decide

theorem tailEnvelope0030FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5836016 (tailEnvelope0030FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0030FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0030FailureCutoffTreeOne4Check

def tailEnvelope0030FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0030FailureCutoffTreeOne5Check :
    tailEnvelope0030FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0030FailureFibreExactOne 5) 5836016 0 = true := by decide

theorem tailEnvelope0030FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5836016 (tailEnvelope0030FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0030FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0030FailureCutoffTreeOne5Check

def tailEnvelope0030FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0030FailureCutoffTreeOne6Check :
    tailEnvelope0030FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0030FailureFibreExactOne 6) 5836016 0 = true := by decide

theorem tailEnvelope0030FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5836016 (tailEnvelope0030FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0030FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0030FailureCutoffTreeOne6Check

def tailEnvelope0030FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0030FailureCutoffTreeOne7Check :
    tailEnvelope0030FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0030FailureFibreExactOne 7) 5836016 0 = true := by decide

theorem tailEnvelope0030FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5836016 (tailEnvelope0030FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0030FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0030FailureCutoffTreeOne7Check

def tailEnvelope0030FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0030FailureCutoffTreeOne8Check :
    tailEnvelope0030FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0030FailureFibreExactOne 8) 5836016 0 = true := by decide

theorem tailEnvelope0030FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5836016 (tailEnvelope0030FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0030FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0030FailureCutoffTreeOne8Check

theorem tailEnvelope0030FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5836016 (tailEnvelope0030FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0030FailureFibreCutoffOne0 residue
  · exact tailEnvelope0030FailureFibreCutoffOne1 residue
  · exact tailEnvelope0030FailureFibreCutoffOne2 residue
  · exact tailEnvelope0030FailureFibreCutoffOne3 residue
  · exact tailEnvelope0030FailureFibreCutoffOne4 residue
  · exact tailEnvelope0030FailureFibreCutoffOne5 residue
  · exact tailEnvelope0030FailureFibreCutoffOne6 residue
  · exact tailEnvelope0030FailureFibreCutoffOne7 residue
  · exact tailEnvelope0030FailureFibreCutoffOne8 residue

theorem tailEnvelope0030FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0030FailureFibreExactOne cell residue ≤ tailEnvelope0030FailureFibreMaxOne cell := by decide

theorem tailEnvelope0030FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0030CountsOne tailEnvelope0030FailureFibreMaxOne 20710 = true := by decide

theorem tailEnvelope0030FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0030CountsOne tailEnvelope0030FailureFibreMaxOne 20799 = true := by decide

theorem tailEnvelope0030FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5836016 (tailEnvelope0030CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0030FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0030FailureCutoffTreeThree0Check :
    tailEnvelope0030FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0030FailureFibreExactThree 0) 5836016 0 = true := by decide

theorem tailEnvelope0030FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5836016 (tailEnvelope0030FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0030FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0030FailureCutoffTreeThree0Check

def tailEnvelope0030FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0030FailureCutoffTreeThree1Check :
    tailEnvelope0030FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0030FailureFibreExactThree 1) 5836016 0 = true := by decide

theorem tailEnvelope0030FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5836016 (tailEnvelope0030FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0030FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0030FailureCutoffTreeThree1Check

def tailEnvelope0030FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0030FailureCutoffTreeThree2Check :
    tailEnvelope0030FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0030FailureFibreExactThree 2) 5836016 0 = true := by decide

theorem tailEnvelope0030FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5836016 (tailEnvelope0030FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0030FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0030FailureCutoffTreeThree2Check

def tailEnvelope0030FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0030FailureCutoffTreeThree3Check :
    tailEnvelope0030FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0030FailureFibreExactThree 3) 5836016 0 = true := by decide

theorem tailEnvelope0030FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5836016 (tailEnvelope0030FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0030FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0030FailureCutoffTreeThree3Check

def tailEnvelope0030FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0030FailureCutoffTreeThree4Check :
    tailEnvelope0030FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0030FailureFibreExactThree 4) 5836016 0 = true := by decide

theorem tailEnvelope0030FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5836016 (tailEnvelope0030FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0030FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0030FailureCutoffTreeThree4Check

def tailEnvelope0030FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0030FailureCutoffTreeThree5Check :
    tailEnvelope0030FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0030FailureFibreExactThree 5) 5836016 0 = true := by decide

theorem tailEnvelope0030FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5836016 (tailEnvelope0030FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0030FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0030FailureCutoffTreeThree5Check

def tailEnvelope0030FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0030FailureCutoffTreeThree6Check :
    tailEnvelope0030FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0030FailureFibreExactThree 6) 5836016 0 = true := by decide

theorem tailEnvelope0030FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5836016 (tailEnvelope0030FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0030FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0030FailureCutoffTreeThree6Check

def tailEnvelope0030FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0030FailureCutoffTreeThree7Check :
    tailEnvelope0030FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0030FailureFibreExactThree 7) 5836016 0 = true := by decide

theorem tailEnvelope0030FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5836016 (tailEnvelope0030FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0030FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0030FailureCutoffTreeThree7Check

def tailEnvelope0030FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0030FailureCutoffTreeThree8Check :
    tailEnvelope0030FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0030FailureFibreExactThree 8) 5836016 0 = true := by decide

theorem tailEnvelope0030FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5836016 (tailEnvelope0030FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0030FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0030FailureCutoffTreeThree8Check

theorem tailEnvelope0030FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5836016 (tailEnvelope0030FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0030FailureFibreCutoffThree0 residue
  · exact tailEnvelope0030FailureFibreCutoffThree1 residue
  · exact tailEnvelope0030FailureFibreCutoffThree2 residue
  · exact tailEnvelope0030FailureFibreCutoffThree3 residue
  · exact tailEnvelope0030FailureFibreCutoffThree4 residue
  · exact tailEnvelope0030FailureFibreCutoffThree5 residue
  · exact tailEnvelope0030FailureFibreCutoffThree6 residue
  · exact tailEnvelope0030FailureFibreCutoffThree7 residue
  · exact tailEnvelope0030FailureFibreCutoffThree8 residue

theorem tailEnvelope0030FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0030FailureFibreExactThree cell residue ≤ tailEnvelope0030FailureFibreMaxThree cell := by decide

theorem tailEnvelope0030FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0030CountsThree tailEnvelope0030FailureFibreMaxThree 20706 = true := by decide

theorem tailEnvelope0030FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0030CountsThree tailEnvelope0030FailureFibreMaxThree 20794 = true := by decide

theorem tailEnvelope0030FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5806983 5836017
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5836016 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0030CountsOne) (fibre := tailEnvelope0030FailureFibreMaxOne) (bound := 20710) tailEnvelope0030FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0030CountsOne tailEnvelope0030FailureFibreMaxOne tailEnvelope0030FailureFibreExactOne
      (lower := 5806983) (upper := 5836016) (N := N) (bound := 20710)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0030FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0030FailureFibreCutoffOne
      tailEnvelope0030FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0030CountsThree) (fibre := tailEnvelope0030FailureFibreMaxThree) (bound := 20706) tailEnvelope0030FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0030CountsThree tailEnvelope0030FailureFibreMaxThree tailEnvelope0030FailureFibreExactThree
      (lower := 5806983) (upper := 5836016) (N := N) (bound := 20706)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0030FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0030FailureFibreCutoffThree
      tailEnvelope0030FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0030FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5806983 5836017
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5836016 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0030CountsOne) (fibre := tailEnvelope0030FailureFibreMaxOne) (bound := 20799) tailEnvelope0030FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0030CountsOne tailEnvelope0030FailureFibreMaxOne tailEnvelope0030FailureFibreExactOne
      (lower := 5806983) (upper := 5836016) (N := N) (bound := 20799)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0030FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0030FailureFibreCutoffOne
      tailEnvelope0030FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0030CountsThree) (fibre := tailEnvelope0030FailureFibreMaxThree) (bound := 20794) tailEnvelope0030FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0030CountsThree tailEnvelope0030FailureFibreMaxThree tailEnvelope0030FailureFibreExactThree
      (lower := 5806983) (upper := 5836016) (N := N) (bound := 20794)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0030FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0030FailureFibreCutoffThree
      tailEnvelope0030FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0031FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![80, 87, 87, 83, 86, 89, 76, 75, 83, 82, 87, 81, 83, 84, 87, 88, 80, 80, 90, 86, 80, 85, 89, 88, 80, 84, 77, 87, 92, 81, 82, 88, 81, 80, 82, 89, 87, 83, 80, 76, 80, 84, 82, 85, 81, 87, 89, 82, 86], ![81, 79, 86, 82, 82, 85, 84, 86, 87, 80, 90, 84, 83, 88, 82, 81, 83, 84, 91, 91, 83, 84, 89, 80, 78, 81, 86, 81, 85, 84, 88, 76, 78, 88, 82, 88, 83, 87, 83, 89, 87, 85, 87, 91, 81, 80, 86, 83, 81], ![83, 89, 85, 83, 82, 80, 80, 83, 82, 84, 82, 85, 80, 82, 81, 88, 83, 91, 85, 84, 78, 81, 82, 83, 89, 88, 84, 81, 81, 79, 82, 83, 83, 86, 83, 85, 83, 78, 82, 79, 88, 85, 86, 80, 80, 85, 81, 85, 84], ![76, 81, 84, 78, 84, 88, 85, 87, 83, 78, 85, 81, 82, 84, 83, 84, 85, 86, 85, 83, 89, 89, 83, 89, 86, 83, 80, 81, 83, 81, 79, 90, 89, 82, 84, 84, 80, 82, 88, 86, 90, 80, 84, 85, 86, 79, 83, 82, 88], ![85, 81, 88, 85, 87, 87, 84, 83, 84, 80, 86, 85, 85, 93, 86, 86, 80, 77, 76, 83, 79, 79, 78, 82, 85, 82, 83, 85, 85, 87, 88, 86, 88, 81, 86, 82, 85, 87, 82, 81, 80, 78, 81, 81, 84, 87, 83, 82, 83], ![84, 82, 84, 87, 89, 79, 87, 84, 84, 84, 81, 81, 88, 83, 80, 82, 87, 85, 88, 81, 91, 85, 79, 82, 82, 84, 84, 85, 83, 88, 81, 72, 85, 88, 84, 81, 92, 84, 80, 84, 78, 78, 89, 83, 85, 87, 82, 77, 84], ![89, 91, 85, 81, 87, 80, 83, 89, 82, 87, 90, 84, 88, 81, 76, 80, 88, 83, 81, 83, 81, 81, 80, 82, 85, 87, 89, 87, 83, 82, 83, 83, 83, 87, 82, 84, 79, 82, 80, 81, 82, 87, 83, 84, 78, 83, 87, 81, 80], ![86, 85, 80, 87, 82, 87, 82, 81, 87, 87, 80, 78, 81, 82, 83, 84, 88, 84, 84, 79, 85, 85, 85, 83, 80, 83, 82, 81, 78, 83, 79, 85, 88, 83, 87, 89, 78, 84, 84, 87, 80, 85, 79, 79, 88, 82, 86, 87, 91], ![81, 81, 82, 85, 84, 87, 88, 80, 84, 85, 78, 83, 86, 82, 92, 80, 85, 82, 82, 80, 87, 90, 81, 81, 84, 80, 82, 83, 87, 85, 83, 86, 82, 80, 83, 83, 81, 89, 84, 88, 85, 85, 82, 90, 86, 81, 89, 86, 78]]

def tailEnvelope0031FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![87, 83, 81, 83, 80, 84, 85, 87, 86, 88, 90, 86, 87, 79, 82, 81, 90, 86, 80, 81, 87, 76, 82, 84, 81, 86, 91, 79, 82, 86, 85, 82, 87, 87, 78, 79, 85, 85, 85, 85, 89, 91, 89, 81, 82, 80, 80, 81, 89], ![86, 81, 80, 82, 85, 85, 85, 82, 86, 84, 80, 80, 81, 88, 82, 81, 81, 85, 82, 81, 86, 82, 83, 91, 86, 84, 82, 76, 85, 89, 83, 87, 84, 85, 82, 78, 87, 84, 80, 85, 82, 81, 86, 81, 80, 86, 89, 82, 91], ![80, 79, 84, 79, 91, 90, 84, 82, 88, 80, 76, 88, 84, 85, 79, 83, 87, 79, 81, 88, 84, 90, 85, 81, 83, 89, 77, 81, 87, 84, 84, 84, 80, 79, 84, 86, 84, 85, 91, 86, 80, 83, 89, 84, 84, 88, 77, 83, 82], ![81, 86, 90, 81, 80, 84, 76, 78, 81, 87, 84, 86, 88, 90, 85, 81, 86, 82, 84, 89, 79, 83, 90, 81, 86, 87, 86, 86, 89, 84, 82, 83, 79, 86, 81, 77, 88, 81, 86, 77, 77, 85, 87, 85, 84, 85, 91, 82, 80], ![84, 87, 84, 82, 82, 79, 81, 86, 86, 87, 87, 82, 80, 84, 77, 79, 85, 87, 91, 82, 82, 84, 86, 85, 84, 87, 88, 82, 84, 78, 84, 83, 77, 84, 86, 83, 82, 84, 81, 84, 88, 84, 85, 79, 89, 77, 81, 85, 83], ![85, 84, 82, 82, 83, 89, 87, 86, 75, 84, 82, 84, 81, 82, 89, 89, 82, 81, 81, 78, 81, 82, 81, 87, 90, 86, 89, 84, 82, 86, 89, 84, 88, 87, 83, 80, 77, 81, 87, 82, 86, 81, 84, 84, 79, 81, 82, 94, 84], ![89, 84, 80, 81, 87, 86, 85, 86, 85, 83, 84, 76, 81, 87, 86, 82, 81, 82, 83, 86, 89, 84, 89, 84, 84, 75, 78, 88, 77, 80, 84, 76, 84, 78, 83, 87, 83, 80, 86, 89, 84, 84, 81, 84, 85, 86, 86, 85, 84], ![81, 81, 80, 93, 83, 84, 85, 84, 84, 80, 88, 89, 85, 80, 83, 90, 79, 80, 82, 81, 84, 84, 83, 83, 81, 79, 88, 87, 84, 85, 80, 83, 81, 82, 88, 85, 86, 86, 83, 88, 87, 81, 85, 91, 83, 86, 83, 83, 79], ![82, 87, 82, 83, 85, 82, 85, 82, 88, 83, 87, 79, 81, 83, 81, 87, 86, 85, 87, 84, 82, 80, 84, 86, 83, 82, 83, 82, 80, 80, 81, 87, 88, 80, 88, 87, 84, 85, 81, 80, 85, 85, 78, 85, 86, 83, 86, 84, 81]]

def tailEnvelope0031FailureFibreMaxOne : Fin 9 → Nat :=
  ![92, 91, 91, 90, 93, 92, 91, 91, 92]

def tailEnvelope0031FailureFibreMaxThree : Fin 9 → Nat :=
  ![91, 91, 91, 91, 91, 94, 89, 93, 88]

theorem tailEnvelope0031FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      5865196 (tailEnvelope0031CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0031FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0031FailureCutoffTreeOne0Check :
    tailEnvelope0031FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0031FailureFibreExactOne 0) 5865196 0 = true := by decide

theorem tailEnvelope0031FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      5865196 (tailEnvelope0031FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0031FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0031FailureCutoffTreeOne0Check

def tailEnvelope0031FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0031FailureCutoffTreeOne1Check :
    tailEnvelope0031FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0031FailureFibreExactOne 1) 5865196 0 = true := by decide

theorem tailEnvelope0031FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      5865196 (tailEnvelope0031FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0031FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0031FailureCutoffTreeOne1Check

def tailEnvelope0031FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0031FailureCutoffTreeOne2Check :
    tailEnvelope0031FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0031FailureFibreExactOne 2) 5865196 0 = true := by decide

theorem tailEnvelope0031FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      5865196 (tailEnvelope0031FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0031FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0031FailureCutoffTreeOne2Check

def tailEnvelope0031FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0031FailureCutoffTreeOne3Check :
    tailEnvelope0031FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0031FailureFibreExactOne 3) 5865196 0 = true := by decide

theorem tailEnvelope0031FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      5865196 (tailEnvelope0031FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0031FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0031FailureCutoffTreeOne3Check

def tailEnvelope0031FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0031FailureCutoffTreeOne4Check :
    tailEnvelope0031FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0031FailureFibreExactOne 4) 5865196 0 = true := by decide

theorem tailEnvelope0031FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      5865196 (tailEnvelope0031FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0031FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0031FailureCutoffTreeOne4Check

def tailEnvelope0031FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0031FailureCutoffTreeOne5Check :
    tailEnvelope0031FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0031FailureFibreExactOne 5) 5865196 0 = true := by decide

theorem tailEnvelope0031FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      5865196 (tailEnvelope0031FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0031FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0031FailureCutoffTreeOne5Check

def tailEnvelope0031FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0031FailureCutoffTreeOne6Check :
    tailEnvelope0031FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0031FailureFibreExactOne 6) 5865196 0 = true := by decide

theorem tailEnvelope0031FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      5865196 (tailEnvelope0031FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0031FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0031FailureCutoffTreeOne6Check

def tailEnvelope0031FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0031FailureCutoffTreeOne7Check :
    tailEnvelope0031FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0031FailureFibreExactOne 7) 5865196 0 = true := by decide

theorem tailEnvelope0031FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      5865196 (tailEnvelope0031FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0031FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0031FailureCutoffTreeOne7Check

def tailEnvelope0031FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0031FailureCutoffTreeOne8Check :
    tailEnvelope0031FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0031FailureFibreExactOne 8) 5865196 0 = true := by decide

theorem tailEnvelope0031FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      5865196 (tailEnvelope0031FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0031FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0031FailureCutoffTreeOne8Check

theorem tailEnvelope0031FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      5865196 (tailEnvelope0031FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0031FailureFibreCutoffOne0 residue
  · exact tailEnvelope0031FailureFibreCutoffOne1 residue
  · exact tailEnvelope0031FailureFibreCutoffOne2 residue
  · exact tailEnvelope0031FailureFibreCutoffOne3 residue
  · exact tailEnvelope0031FailureFibreCutoffOne4 residue
  · exact tailEnvelope0031FailureFibreCutoffOne5 residue
  · exact tailEnvelope0031FailureFibreCutoffOne6 residue
  · exact tailEnvelope0031FailureFibreCutoffOne7 residue
  · exact tailEnvelope0031FailureFibreCutoffOne8 residue

theorem tailEnvelope0031FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0031FailureFibreExactOne cell residue ≤ tailEnvelope0031FailureFibreMaxOne cell := by decide

theorem tailEnvelope0031FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0031CountsOne tailEnvelope0031FailureFibreMaxOne 20811 = true := by decide

theorem tailEnvelope0031FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0031CountsOne tailEnvelope0031FailureFibreMaxOne 20902 = true := by decide

theorem tailEnvelope0031FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      5865196 (tailEnvelope0031CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0031FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0031FailureCutoffTreeThree0Check :
    tailEnvelope0031FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0031FailureFibreExactThree 0) 5865196 0 = true := by decide

theorem tailEnvelope0031FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      5865196 (tailEnvelope0031FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0031FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0031FailureCutoffTreeThree0Check

def tailEnvelope0031FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0031FailureCutoffTreeThree1Check :
    tailEnvelope0031FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0031FailureFibreExactThree 1) 5865196 0 = true := by decide

theorem tailEnvelope0031FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      5865196 (tailEnvelope0031FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0031FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0031FailureCutoffTreeThree1Check

def tailEnvelope0031FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0031FailureCutoffTreeThree2Check :
    tailEnvelope0031FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0031FailureFibreExactThree 2) 5865196 0 = true := by decide

theorem tailEnvelope0031FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      5865196 (tailEnvelope0031FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0031FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0031FailureCutoffTreeThree2Check

def tailEnvelope0031FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0031FailureCutoffTreeThree3Check :
    tailEnvelope0031FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0031FailureFibreExactThree 3) 5865196 0 = true := by decide

theorem tailEnvelope0031FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      5865196 (tailEnvelope0031FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0031FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0031FailureCutoffTreeThree3Check

def tailEnvelope0031FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0031FailureCutoffTreeThree4Check :
    tailEnvelope0031FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0031FailureFibreExactThree 4) 5865196 0 = true := by decide

theorem tailEnvelope0031FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      5865196 (tailEnvelope0031FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0031FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0031FailureCutoffTreeThree4Check

def tailEnvelope0031FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0031FailureCutoffTreeThree5Check :
    tailEnvelope0031FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0031FailureFibreExactThree 5) 5865196 0 = true := by decide

theorem tailEnvelope0031FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      5865196 (tailEnvelope0031FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0031FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0031FailureCutoffTreeThree5Check

def tailEnvelope0031FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0031FailureCutoffTreeThree6Check :
    tailEnvelope0031FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0031FailureFibreExactThree 6) 5865196 0 = true := by decide

theorem tailEnvelope0031FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      5865196 (tailEnvelope0031FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0031FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0031FailureCutoffTreeThree6Check

def tailEnvelope0031FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0031FailureCutoffTreeThree7Check :
    tailEnvelope0031FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0031FailureFibreExactThree 7) 5865196 0 = true := by decide

theorem tailEnvelope0031FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      5865196 (tailEnvelope0031FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0031FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0031FailureCutoffTreeThree7Check

def tailEnvelope0031FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0031FailureCutoffTreeThree8Check :
    tailEnvelope0031FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0031FailureFibreExactThree 8) 5865196 0 = true := by decide

theorem tailEnvelope0031FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      5865196 (tailEnvelope0031FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0031FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0031FailureCutoffTreeThree8Check

theorem tailEnvelope0031FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      5865196 (tailEnvelope0031FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0031FailureFibreCutoffThree0 residue
  · exact tailEnvelope0031FailureFibreCutoffThree1 residue
  · exact tailEnvelope0031FailureFibreCutoffThree2 residue
  · exact tailEnvelope0031FailureFibreCutoffThree3 residue
  · exact tailEnvelope0031FailureFibreCutoffThree4 residue
  · exact tailEnvelope0031FailureFibreCutoffThree5 residue
  · exact tailEnvelope0031FailureFibreCutoffThree6 residue
  · exact tailEnvelope0031FailureFibreCutoffThree7 residue
  · exact tailEnvelope0031FailureFibreCutoffThree8 residue

theorem tailEnvelope0031FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0031FailureFibreExactThree cell residue ≤ tailEnvelope0031FailureFibreMaxThree cell := by decide

theorem tailEnvelope0031FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0031CountsThree tailEnvelope0031FailureFibreMaxThree 20815 = true := by decide

theorem tailEnvelope0031FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0031CountsThree tailEnvelope0031FailureFibreMaxThree 20903 = true := by decide

theorem tailEnvelope0031FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 5836017 5865197
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5865196 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0031CountsOne) (fibre := tailEnvelope0031FailureFibreMaxOne) (bound := 20811) tailEnvelope0031FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0031CountsOne tailEnvelope0031FailureFibreMaxOne tailEnvelope0031FailureFibreExactOne
      (lower := 5836017) (upper := 5865196) (N := N) (bound := 20811)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0031FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0031FailureFibreCutoffOne
      tailEnvelope0031FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0031CountsThree) (fibre := tailEnvelope0031FailureFibreMaxThree) (bound := 20815) tailEnvelope0031FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0031CountsThree tailEnvelope0031FailureFibreMaxThree tailEnvelope0031FailureFibreExactThree
      (lower := 5836017) (upper := 5865196) (N := N) (bound := 20815)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0031FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0031FailureFibreCutoffThree
      tailEnvelope0031FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0031FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 5836017 5865197
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 5865196 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0031CountsOne) (fibre := tailEnvelope0031FailureFibreMaxOne) (bound := 20902) tailEnvelope0031FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0031CountsOne tailEnvelope0031FailureFibreMaxOne tailEnvelope0031FailureFibreExactOne
      (lower := 5836017) (upper := 5865196) (N := N) (bound := 20902)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0031FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0031FailureFibreCutoffOne
      tailEnvelope0031FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0031CountsThree) (fibre := tailEnvelope0031FailureFibreMaxThree) (bound := 20903) tailEnvelope0031FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0031CountsThree tailEnvelope0031FailureFibreMaxThree tailEnvelope0031FailureFibreExactThree
      (lower := 5836017) (upper := 5865196) (N := N) (bound := 20903)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0031FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0031FailureFibreCutoffThree
      tailEnvelope0031FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
end Erdos848.GeneratedTailDiagonalCoverage
