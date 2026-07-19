import Erdos848.GeneratedTailDiagonalCoverage.TailEnvelopeBlock0008
import Erdos848.GeneratedTailDiagonalCoverage.TailFailureFibreAggregate
import Erdos848.TailDiagonalCapacityFailureScalar

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def tailEnvelope0128FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![133, 136, 142, 140, 140, 138, 128, 128, 136, 132, 137, 134, 135, 131, 141, 140, 138, 131, 140, 139, 131, 132, 139, 139, 131, 135, 130, 144, 144, 132, 132, 140, 131, 135, 136, 138, 136, 135, 134, 128, 134, 134, 137, 138, 131, 136, 137, 134, 139], ![133, 135, 137, 132, 131, 133, 135, 141, 141, 131, 138, 135, 134, 142, 134, 136, 138, 138, 143, 147, 134, 135, 139, 133, 138, 133, 131, 136, 138, 127, 132, 130, 132, 142, 134, 141, 138, 142, 135, 141, 141, 140, 131, 139, 139, 138, 135, 137, 133], ![135, 139, 135, 130, 132, 134, 132, 140, 134, 136, 132, 136, 132, 134, 130, 139, 139, 142, 131, 136, 132, 141, 136, 129, 139, 144, 138, 134, 132, 136, 139, 131, 137, 140, 130, 136, 134, 130, 136, 136, 140, 140, 135, 128, 135, 140, 131, 134, 134], ![131, 133, 136, 131, 136, 136, 129, 133, 139, 133, 135, 132, 136, 141, 135, 134, 135, 140, 137, 138, 142, 146, 132, 139, 142, 135, 130, 132, 139, 134, 127, 138, 142, 137, 134, 128, 136, 141, 142, 133, 145, 134, 133, 140, 135, 131, 139, 130, 137], ![139, 138, 136, 130, 141, 138, 137, 139, 136, 131, 138, 140, 137, 140, 135, 134, 134, 132, 131, 136, 132, 131, 127, 129, 137, 137, 136, 139, 134, 139, 143, 139, 136, 132, 140, 134, 133, 138, 137, 134, 130, 135, 135, 135, 135, 133, 134, 134, 131], ![139, 140, 135, 138, 141, 135, 141, 132, 134, 135, 134, 135, 143, 135, 135, 133, 134, 141, 142, 127, 136, 137, 133, 137, 137, 138, 137, 132, 131, 139, 138, 126, 138, 148, 142, 130, 145, 138, 129, 131, 135, 132, 146, 130, 129, 135, 136, 132, 132], ![139, 139, 136, 134, 141, 132, 139, 141, 129, 137, 143, 133, 137, 135, 131, 129, 137, 138, 136, 134, 133, 137, 140, 140, 135, 133, 139, 137, 130, 135, 137, 140, 131, 136, 137, 138, 130, 131, 136, 136, 133, 138, 135, 142, 130, 131, 139, 136, 136], ![134, 136, 133, 145, 134, 142, 139, 132, 135, 136, 135, 134, 135, 134, 139, 136, 138, 135, 134, 126, 133, 137, 138, 140, 130, 135, 140, 135, 132, 142, 132, 138, 140, 132, 137, 143, 130, 134, 134, 137, 129, 132, 137, 131, 133, 131, 140, 144, 143], ![134, 128, 135, 140, 134, 137, 136, 127, 135, 138, 131, 136, 136, 131, 145, 134, 134, 127, 133, 134, 143, 135, 138, 137, 135, 131, 132, 141, 139, 131, 133, 137, 129, 130, 138, 141, 140, 138, 136, 139, 138, 136, 130, 144, 140, 138, 143, 135, 135]]

def tailEnvelope0128FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![141, 139, 130, 129, 132, 142, 137, 138, 139, 137, 143, 138, 137, 137, 137, 133, 135, 143, 137, 130, 137, 132, 135, 138, 131, 140, 145, 132, 130, 139, 137, 133, 137, 134, 131, 130, 137, 142, 137, 134, 136, 136, 143, 135, 131, 135, 133, 133, 140], ![135, 136, 134, 132, 140, 138, 138, 131, 135, 135, 133, 133, 137, 138, 136, 132, 133, 139, 133, 132, 141, 135, 130, 137, 137, 137, 133, 129, 136, 139, 141, 136, 133, 136, 135, 133, 138, 138, 134, 140, 136, 132, 144, 138, 129, 132, 138, 132, 139], ![130, 136, 138, 134, 138, 139, 135, 133, 135, 135, 134, 138, 129, 137, 133, 133, 136, 131, 139, 144, 130, 136, 144, 137, 137, 139, 133, 137, 138, 131, 139, 135, 134, 135, 136, 139, 138, 133, 141, 136, 127, 133, 145, 135, 132, 142, 127, 138, 136], ![129, 130, 142, 134, 134, 132, 133, 137, 132, 143, 138, 137, 139, 142, 134, 138, 141, 133, 132, 142, 131, 137, 142, 134, 133, 140, 141, 140, 137, 131, 139, 137, 134, 137, 133, 131, 135, 126, 135, 135, 134, 140, 139, 138, 135, 134, 142, 135, 133], ![132, 138, 139, 138, 133, 128, 138, 140, 130, 139, 139, 135, 129, 134, 133, 136, 135, 132, 141, 138, 135, 138, 141, 138, 141, 134, 137, 136, 138, 127, 131, 135, 129, 132, 137, 135, 133, 132, 134, 140, 140, 139, 134, 130, 140, 130, 139, 142, 141], ![137, 131, 133, 133, 137, 142, 139, 140, 135, 138, 129, 136, 133, 132, 138, 139, 134, 135, 132, 129, 137, 136, 132, 138, 144, 133, 139, 137, 137, 140, 138, 132, 142, 134, 136, 135, 131, 135, 136, 136, 141, 133, 129, 134, 136, 136, 137, 142, 136], ![138, 135, 139, 136, 136, 138, 132, 138, 143, 132, 132, 130, 134, 136, 141, 135, 135, 129, 135, 139, 146, 134, 138, 139, 139, 128, 133, 138, 134, 131, 131, 131, 138, 132, 133, 138, 135, 134, 137, 141, 137, 136, 133, 135, 142, 138, 139, 139, 133], ![141, 134, 128, 141, 136, 138, 142, 134, 140, 139, 140, 134, 141, 133, 133, 140, 130, 134, 135, 136, 139, 135, 131, 135, 133, 133, 138, 131, 134, 142, 132, 131, 134, 135, 140, 135, 141, 141, 134, 141, 138, 133, 136, 138, 139, 142, 130, 129, 132], ![135, 142, 132, 135, 137, 135, 137, 139, 141, 130, 140, 133, 138, 140, 128, 135, 140, 137, 138, 135, 136, 135, 133, 134, 132, 137, 133, 133, 135, 131, 137, 142, 139, 131, 135, 129, 134, 142, 132, 130, 138, 139, 134, 135, 134, 133, 141, 136, 135]]

def tailEnvelope0128FailureFibreMaxOne : Fin 9 → Nat :=
  ![144, 147, 144, 146, 143, 148, 143, 145, 145]

def tailEnvelope0128FailureFibreMaxThree : Fin 9 → Nat :=
  ![145, 144, 145, 143, 142, 144, 146, 142, 142]

theorem tailEnvelope0128FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      9514529 (tailEnvelope0128CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0128FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0128FailureCutoffTreeOne0Check :
    tailEnvelope0128FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0128FailureFibreExactOne 0) 9514529 0 = true := by decide

theorem tailEnvelope0128FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      9514529 (tailEnvelope0128FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0128FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0128FailureCutoffTreeOne0Check

def tailEnvelope0128FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0128FailureCutoffTreeOne1Check :
    tailEnvelope0128FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0128FailureFibreExactOne 1) 9514529 0 = true := by decide

theorem tailEnvelope0128FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      9514529 (tailEnvelope0128FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0128FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0128FailureCutoffTreeOne1Check

def tailEnvelope0128FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0128FailureCutoffTreeOne2Check :
    tailEnvelope0128FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0128FailureFibreExactOne 2) 9514529 0 = true := by decide

theorem tailEnvelope0128FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      9514529 (tailEnvelope0128FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0128FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0128FailureCutoffTreeOne2Check

def tailEnvelope0128FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0128FailureCutoffTreeOne3Check :
    tailEnvelope0128FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0128FailureFibreExactOne 3) 9514529 0 = true := by decide

theorem tailEnvelope0128FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      9514529 (tailEnvelope0128FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0128FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0128FailureCutoffTreeOne3Check

def tailEnvelope0128FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0128FailureCutoffTreeOne4Check :
    tailEnvelope0128FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0128FailureFibreExactOne 4) 9514529 0 = true := by decide

theorem tailEnvelope0128FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      9514529 (tailEnvelope0128FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0128FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0128FailureCutoffTreeOne4Check

def tailEnvelope0128FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0128FailureCutoffTreeOne5Check :
    tailEnvelope0128FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0128FailureFibreExactOne 5) 9514529 0 = true := by decide

theorem tailEnvelope0128FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      9514529 (tailEnvelope0128FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0128FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0128FailureCutoffTreeOne5Check

def tailEnvelope0128FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0128FailureCutoffTreeOne6Check :
    tailEnvelope0128FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0128FailureFibreExactOne 6) 9514529 0 = true := by decide

theorem tailEnvelope0128FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      9514529 (tailEnvelope0128FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0128FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0128FailureCutoffTreeOne6Check

def tailEnvelope0128FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0128FailureCutoffTreeOne7Check :
    tailEnvelope0128FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0128FailureFibreExactOne 7) 9514529 0 = true := by decide

theorem tailEnvelope0128FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      9514529 (tailEnvelope0128FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0128FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0128FailureCutoffTreeOne7Check

def tailEnvelope0128FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0128FailureCutoffTreeOne8Check :
    tailEnvelope0128FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0128FailureFibreExactOne 8) 9514529 0 = true := by decide

theorem tailEnvelope0128FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      9514529 (tailEnvelope0128FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0128FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0128FailureCutoffTreeOne8Check

theorem tailEnvelope0128FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      9514529 (tailEnvelope0128FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0128FailureFibreCutoffOne0 residue
  · exact tailEnvelope0128FailureFibreCutoffOne1 residue
  · exact tailEnvelope0128FailureFibreCutoffOne2 residue
  · exact tailEnvelope0128FailureFibreCutoffOne3 residue
  · exact tailEnvelope0128FailureFibreCutoffOne4 residue
  · exact tailEnvelope0128FailureFibreCutoffOne5 residue
  · exact tailEnvelope0128FailureFibreCutoffOne6 residue
  · exact tailEnvelope0128FailureFibreCutoffOne7 residue
  · exact tailEnvelope0128FailureFibreCutoffOne8 residue

theorem tailEnvelope0128FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0128FailureFibreExactOne cell residue ≤ tailEnvelope0128FailureFibreMaxOne cell := by decide

theorem tailEnvelope0128FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0128CountsOne tailEnvelope0128FailureFibreMaxOne 33724 = true := by decide

theorem tailEnvelope0128FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0128CountsOne tailEnvelope0128FailureFibreMaxOne 33867 = true := by decide

theorem tailEnvelope0128FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      9514529 (tailEnvelope0128CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0128FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0128FailureCutoffTreeThree0Check :
    tailEnvelope0128FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0128FailureFibreExactThree 0) 9514529 0 = true := by decide

theorem tailEnvelope0128FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      9514529 (tailEnvelope0128FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0128FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0128FailureCutoffTreeThree0Check

def tailEnvelope0128FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0128FailureCutoffTreeThree1Check :
    tailEnvelope0128FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0128FailureFibreExactThree 1) 9514529 0 = true := by decide

theorem tailEnvelope0128FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      9514529 (tailEnvelope0128FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0128FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0128FailureCutoffTreeThree1Check

def tailEnvelope0128FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0128FailureCutoffTreeThree2Check :
    tailEnvelope0128FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0128FailureFibreExactThree 2) 9514529 0 = true := by decide

theorem tailEnvelope0128FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      9514529 (tailEnvelope0128FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0128FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0128FailureCutoffTreeThree2Check

def tailEnvelope0128FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0128FailureCutoffTreeThree3Check :
    tailEnvelope0128FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0128FailureFibreExactThree 3) 9514529 0 = true := by decide

theorem tailEnvelope0128FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      9514529 (tailEnvelope0128FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0128FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0128FailureCutoffTreeThree3Check

def tailEnvelope0128FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0128FailureCutoffTreeThree4Check :
    tailEnvelope0128FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0128FailureFibreExactThree 4) 9514529 0 = true := by decide

theorem tailEnvelope0128FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      9514529 (tailEnvelope0128FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0128FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0128FailureCutoffTreeThree4Check

def tailEnvelope0128FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0128FailureCutoffTreeThree5Check :
    tailEnvelope0128FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0128FailureFibreExactThree 5) 9514529 0 = true := by decide

theorem tailEnvelope0128FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      9514529 (tailEnvelope0128FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0128FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0128FailureCutoffTreeThree5Check

def tailEnvelope0128FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0128FailureCutoffTreeThree6Check :
    tailEnvelope0128FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0128FailureFibreExactThree 6) 9514529 0 = true := by decide

theorem tailEnvelope0128FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      9514529 (tailEnvelope0128FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0128FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0128FailureCutoffTreeThree6Check

def tailEnvelope0128FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0128FailureCutoffTreeThree7Check :
    tailEnvelope0128FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0128FailureFibreExactThree 7) 9514529 0 = true := by decide

theorem tailEnvelope0128FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      9514529 (tailEnvelope0128FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0128FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0128FailureCutoffTreeThree7Check

def tailEnvelope0128FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0128FailureCutoffTreeThree8Check :
    tailEnvelope0128FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0128FailureFibreExactThree 8) 9514529 0 = true := by decide

theorem tailEnvelope0128FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      9514529 (tailEnvelope0128FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0128FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0128FailureCutoffTreeThree8Check

theorem tailEnvelope0128FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      9514529 (tailEnvelope0128FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0128FailureFibreCutoffThree0 residue
  · exact tailEnvelope0128FailureFibreCutoffThree1 residue
  · exact tailEnvelope0128FailureFibreCutoffThree2 residue
  · exact tailEnvelope0128FailureFibreCutoffThree3 residue
  · exact tailEnvelope0128FailureFibreCutoffThree4 residue
  · exact tailEnvelope0128FailureFibreCutoffThree5 residue
  · exact tailEnvelope0128FailureFibreCutoffThree6 residue
  · exact tailEnvelope0128FailureFibreCutoffThree7 residue
  · exact tailEnvelope0128FailureFibreCutoffThree8 residue

theorem tailEnvelope0128FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0128FailureFibreExactThree cell residue ≤ tailEnvelope0128FailureFibreMaxThree cell := by decide

theorem tailEnvelope0128FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0128CountsThree tailEnvelope0128FailureFibreMaxThree 33728 = true := by decide

theorem tailEnvelope0128FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0128CountsThree tailEnvelope0128FailureFibreMaxThree 33870 = true := by decide

theorem tailEnvelope0128FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 9467195 9514530
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9514529 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0128CountsOne) (fibre := tailEnvelope0128FailureFibreMaxOne) (bound := 33724) tailEnvelope0128FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0128CountsOne tailEnvelope0128FailureFibreMaxOne tailEnvelope0128FailureFibreExactOne
      (lower := 9467195) (upper := 9514529) (N := N) (bound := 33724)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0128FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0128FailureFibreCutoffOne
      tailEnvelope0128FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0128CountsThree) (fibre := tailEnvelope0128FailureFibreMaxThree) (bound := 33728) tailEnvelope0128FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0128CountsThree tailEnvelope0128FailureFibreMaxThree tailEnvelope0128FailureFibreExactThree
      (lower := 9467195) (upper := 9514529) (N := N) (bound := 33728)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0128FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0128FailureFibreCutoffThree
      tailEnvelope0128FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0128FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 9467195 9514530
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9514529 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0128CountsOne) (fibre := tailEnvelope0128FailureFibreMaxOne) (bound := 33867) tailEnvelope0128FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0128CountsOne tailEnvelope0128FailureFibreMaxOne tailEnvelope0128FailureFibreExactOne
      (lower := 9467195) (upper := 9514529) (N := N) (bound := 33867)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0128FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0128FailureFibreCutoffOne
      tailEnvelope0128FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0128CountsThree) (fibre := tailEnvelope0128FailureFibreMaxThree) (bound := 33870) tailEnvelope0128FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0128CountsThree tailEnvelope0128FailureFibreMaxThree tailEnvelope0128FailureFibreExactThree
      (lower := 9467195) (upper := 9514529) (N := N) (bound := 33870)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0128FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0128FailureFibreCutoffThree
      tailEnvelope0128FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0129FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![134, 136, 142, 141, 140, 139, 129, 129, 137, 133, 139, 134, 135, 132, 141, 141, 139, 131, 140, 139, 132, 134, 140, 140, 133, 135, 131, 144, 144, 133, 133, 140, 132, 135, 136, 138, 136, 136, 135, 130, 136, 137, 138, 139, 131, 136, 138, 136, 141], ![133, 135, 137, 133, 131, 133, 136, 141, 141, 131, 138, 136, 135, 143, 136, 137, 138, 139, 143, 148, 136, 135, 140, 133, 138, 133, 131, 136, 141, 127, 134, 131, 133, 143, 135, 141, 140, 142, 136, 141, 142, 140, 131, 139, 140, 139, 136, 138, 135], ![135, 140, 136, 131, 133, 134, 133, 140, 135, 138, 135, 136, 133, 134, 130, 141, 139, 142, 132, 136, 133, 141, 137, 130, 140, 145, 139, 134, 133, 136, 139, 133, 138, 140, 131, 136, 135, 130, 138, 137, 140, 141, 136, 128, 136, 141, 131, 134, 134], ![132, 133, 137, 132, 136, 136, 129, 133, 141, 133, 135, 132, 136, 142, 136, 135, 138, 140, 138, 139, 142, 146, 132, 139, 143, 135, 131, 132, 139, 135, 128, 140, 144, 137, 135, 129, 136, 141, 142, 133, 146, 135, 133, 141, 135, 133, 139, 130, 138], ![140, 138, 136, 130, 142, 138, 139, 139, 137, 131, 138, 140, 137, 140, 135, 134, 135, 132, 132, 136, 133, 133, 129, 130, 138, 138, 138, 139, 134, 139, 145, 140, 139, 133, 140, 135, 135, 140, 137, 136, 130, 136, 135, 136, 135, 133, 134, 135, 131], ![139, 140, 137, 138, 142, 135, 143, 132, 134, 136, 134, 136, 145, 138, 138, 133, 134, 141, 143, 127, 137, 138, 134, 138, 137, 138, 137, 132, 132, 141, 139, 127, 138, 148, 143, 130, 145, 139, 129, 132, 135, 132, 147, 130, 130, 136, 137, 133, 132], ![141, 139, 137, 136, 144, 133, 139, 141, 129, 137, 144, 134, 138, 136, 131, 129, 137, 138, 137, 134, 134, 139, 140, 140, 135, 134, 140, 138, 130, 136, 137, 140, 131, 136, 137, 140, 130, 134, 136, 136, 133, 138, 136, 145, 130, 132, 139, 136, 136], ![135, 138, 133, 145, 135, 142, 139, 133, 135, 137, 136, 136, 136, 134, 139, 137, 138, 136, 134, 127, 134, 137, 138, 140, 130, 136, 141, 136, 133, 142, 134, 138, 140, 133, 137, 144, 131, 134, 134, 137, 129, 133, 139, 133, 135, 132, 141, 144, 143], ![136, 131, 136, 141, 134, 137, 136, 127, 135, 139, 131, 138, 136, 131, 145, 135, 134, 131, 133, 135, 143, 136, 138, 138, 135, 133, 134, 141, 139, 131, 133, 139, 130, 132, 139, 142, 141, 138, 136, 140, 139, 136, 131, 144, 140, 138, 143, 136, 136]]

def tailEnvelope0129FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![142, 143, 131, 130, 132, 142, 138, 138, 139, 138, 143, 139, 138, 137, 137, 133, 136, 144, 138, 132, 138, 132, 135, 138, 131, 141, 146, 132, 131, 139, 137, 133, 138, 135, 133, 131, 138, 142, 138, 135, 136, 136, 144, 135, 134, 135, 133, 133, 141], ![135, 137, 134, 132, 140, 138, 138, 133, 136, 137, 134, 133, 137, 138, 136, 133, 134, 140, 134, 133, 141, 135, 130, 139, 138, 141, 135, 129, 136, 139, 141, 137, 134, 137, 136, 133, 138, 138, 134, 141, 138, 133, 146, 138, 129, 132, 138, 132, 140], ![133, 136, 139, 135, 139, 140, 137, 133, 136, 135, 134, 139, 131, 137, 134, 133, 138, 131, 140, 144, 130, 137, 145, 137, 138, 139, 133, 137, 138, 131, 141, 136, 135, 136, 137, 139, 138, 133, 142, 136, 128, 133, 145, 136, 132, 142, 128, 140, 137], ![129, 130, 142, 134, 135, 133, 134, 138, 133, 143, 138, 137, 140, 142, 135, 138, 141, 134, 132, 142, 133, 138, 144, 136, 135, 140, 142, 140, 138, 131, 140, 137, 134, 137, 133, 131, 135, 128, 137, 136, 135, 140, 141, 138, 136, 136, 142, 136, 133], ![132, 138, 140, 138, 134, 128, 138, 142, 130, 139, 140, 135, 131, 135, 135, 137, 135, 132, 143, 138, 135, 139, 141, 138, 141, 134, 138, 137, 141, 131, 132, 136, 130, 132, 138, 136, 133, 132, 134, 140, 141, 139, 134, 131, 140, 132, 139, 143, 142], ![138, 131, 134, 134, 138, 143, 139, 141, 136, 138, 131, 137, 133, 133, 138, 139, 138, 136, 134, 131, 138, 137, 133, 138, 144, 134, 139, 138, 137, 140, 138, 133, 142, 135, 136, 136, 132, 135, 138, 137, 141, 133, 129, 135, 136, 136, 138, 142, 137], ![139, 137, 139, 136, 136, 138, 133, 139, 144, 133, 133, 131, 135, 137, 141, 136, 135, 130, 136, 140, 146, 134, 138, 140, 139, 128, 133, 139, 134, 132, 131, 132, 138, 133, 133, 138, 135, 135, 137, 142, 137, 137, 133, 136, 142, 138, 141, 140, 133], ![141, 135, 128, 142, 137, 139, 142, 135, 140, 139, 141, 134, 142, 134, 133, 141, 130, 134, 136, 136, 140, 136, 131, 136, 134, 133, 138, 134, 134, 142, 132, 132, 134, 137, 141, 135, 142, 142, 135, 142, 139, 133, 136, 139, 139, 144, 130, 130, 133], ![135, 143, 133, 136, 137, 136, 137, 139, 143, 131, 141, 135, 139, 141, 130, 135, 140, 137, 138, 136, 137, 136, 133, 134, 132, 138, 133, 135, 136, 132, 137, 142, 139, 131, 135, 130, 136, 143, 133, 130, 138, 139, 135, 136, 136, 133, 142, 136, 135]]

def tailEnvelope0129FailureFibreMaxOne : Fin 9 → Nat :=
  ![144, 148, 145, 146, 145, 148, 145, 145, 145]

def tailEnvelope0129FailureFibreMaxThree : Fin 9 → Nat :=
  ![146, 146, 145, 144, 143, 144, 146, 144, 143]

theorem tailEnvelope0129FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      9562101 (tailEnvelope0129CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0129FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0129FailureCutoffTreeOne0Check :
    tailEnvelope0129FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0129FailureFibreExactOne 0) 9562101 0 = true := by decide

theorem tailEnvelope0129FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      9562101 (tailEnvelope0129FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0129FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0129FailureCutoffTreeOne0Check

def tailEnvelope0129FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0129FailureCutoffTreeOne1Check :
    tailEnvelope0129FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0129FailureFibreExactOne 1) 9562101 0 = true := by decide

theorem tailEnvelope0129FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      9562101 (tailEnvelope0129FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0129FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0129FailureCutoffTreeOne1Check

def tailEnvelope0129FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0129FailureCutoffTreeOne2Check :
    tailEnvelope0129FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0129FailureFibreExactOne 2) 9562101 0 = true := by decide

theorem tailEnvelope0129FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      9562101 (tailEnvelope0129FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0129FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0129FailureCutoffTreeOne2Check

def tailEnvelope0129FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0129FailureCutoffTreeOne3Check :
    tailEnvelope0129FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0129FailureFibreExactOne 3) 9562101 0 = true := by decide

theorem tailEnvelope0129FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      9562101 (tailEnvelope0129FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0129FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0129FailureCutoffTreeOne3Check

def tailEnvelope0129FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0129FailureCutoffTreeOne4Check :
    tailEnvelope0129FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0129FailureFibreExactOne 4) 9562101 0 = true := by decide

theorem tailEnvelope0129FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      9562101 (tailEnvelope0129FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0129FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0129FailureCutoffTreeOne4Check

def tailEnvelope0129FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0129FailureCutoffTreeOne5Check :
    tailEnvelope0129FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0129FailureFibreExactOne 5) 9562101 0 = true := by decide

theorem tailEnvelope0129FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      9562101 (tailEnvelope0129FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0129FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0129FailureCutoffTreeOne5Check

def tailEnvelope0129FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0129FailureCutoffTreeOne6Check :
    tailEnvelope0129FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0129FailureFibreExactOne 6) 9562101 0 = true := by decide

theorem tailEnvelope0129FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      9562101 (tailEnvelope0129FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0129FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0129FailureCutoffTreeOne6Check

def tailEnvelope0129FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0129FailureCutoffTreeOne7Check :
    tailEnvelope0129FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0129FailureFibreExactOne 7) 9562101 0 = true := by decide

theorem tailEnvelope0129FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      9562101 (tailEnvelope0129FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0129FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0129FailureCutoffTreeOne7Check

def tailEnvelope0129FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0129FailureCutoffTreeOne8Check :
    tailEnvelope0129FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0129FailureFibreExactOne 8) 9562101 0 = true := by decide

theorem tailEnvelope0129FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      9562101 (tailEnvelope0129FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0129FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0129FailureCutoffTreeOne8Check

theorem tailEnvelope0129FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      9562101 (tailEnvelope0129FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0129FailureFibreCutoffOne0 residue
  · exact tailEnvelope0129FailureFibreCutoffOne1 residue
  · exact tailEnvelope0129FailureFibreCutoffOne2 residue
  · exact tailEnvelope0129FailureFibreCutoffOne3 residue
  · exact tailEnvelope0129FailureFibreCutoffOne4 residue
  · exact tailEnvelope0129FailureFibreCutoffOne5 residue
  · exact tailEnvelope0129FailureFibreCutoffOne6 residue
  · exact tailEnvelope0129FailureFibreCutoffOne7 residue
  · exact tailEnvelope0129FailureFibreCutoffOne8 residue

theorem tailEnvelope0129FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0129FailureFibreExactOne cell residue ≤ tailEnvelope0129FailureFibreMaxOne cell := by decide

theorem tailEnvelope0129FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0129CountsOne tailEnvelope0129FailureFibreMaxOne 33884 = true := by decide

theorem tailEnvelope0129FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0129CountsOne tailEnvelope0129FailureFibreMaxOne 34028 = true := by decide

theorem tailEnvelope0129FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      9562101 (tailEnvelope0129CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0129FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0129FailureCutoffTreeThree0Check :
    tailEnvelope0129FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0129FailureFibreExactThree 0) 9562101 0 = true := by decide

theorem tailEnvelope0129FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      9562101 (tailEnvelope0129FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0129FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0129FailureCutoffTreeThree0Check

def tailEnvelope0129FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0129FailureCutoffTreeThree1Check :
    tailEnvelope0129FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0129FailureFibreExactThree 1) 9562101 0 = true := by decide

theorem tailEnvelope0129FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      9562101 (tailEnvelope0129FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0129FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0129FailureCutoffTreeThree1Check

def tailEnvelope0129FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0129FailureCutoffTreeThree2Check :
    tailEnvelope0129FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0129FailureFibreExactThree 2) 9562101 0 = true := by decide

theorem tailEnvelope0129FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      9562101 (tailEnvelope0129FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0129FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0129FailureCutoffTreeThree2Check

def tailEnvelope0129FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0129FailureCutoffTreeThree3Check :
    tailEnvelope0129FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0129FailureFibreExactThree 3) 9562101 0 = true := by decide

theorem tailEnvelope0129FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      9562101 (tailEnvelope0129FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0129FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0129FailureCutoffTreeThree3Check

def tailEnvelope0129FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0129FailureCutoffTreeThree4Check :
    tailEnvelope0129FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0129FailureFibreExactThree 4) 9562101 0 = true := by decide

theorem tailEnvelope0129FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      9562101 (tailEnvelope0129FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0129FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0129FailureCutoffTreeThree4Check

def tailEnvelope0129FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0129FailureCutoffTreeThree5Check :
    tailEnvelope0129FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0129FailureFibreExactThree 5) 9562101 0 = true := by decide

theorem tailEnvelope0129FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      9562101 (tailEnvelope0129FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0129FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0129FailureCutoffTreeThree5Check

def tailEnvelope0129FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0129FailureCutoffTreeThree6Check :
    tailEnvelope0129FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0129FailureFibreExactThree 6) 9562101 0 = true := by decide

theorem tailEnvelope0129FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      9562101 (tailEnvelope0129FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0129FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0129FailureCutoffTreeThree6Check

def tailEnvelope0129FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0129FailureCutoffTreeThree7Check :
    tailEnvelope0129FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0129FailureFibreExactThree 7) 9562101 0 = true := by decide

theorem tailEnvelope0129FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      9562101 (tailEnvelope0129FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0129FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0129FailureCutoffTreeThree7Check

def tailEnvelope0129FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0129FailureCutoffTreeThree8Check :
    tailEnvelope0129FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0129FailureFibreExactThree 8) 9562101 0 = true := by decide

theorem tailEnvelope0129FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      9562101 (tailEnvelope0129FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0129FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0129FailureCutoffTreeThree8Check

theorem tailEnvelope0129FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      9562101 (tailEnvelope0129FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0129FailureFibreCutoffThree0 residue
  · exact tailEnvelope0129FailureFibreCutoffThree1 residue
  · exact tailEnvelope0129FailureFibreCutoffThree2 residue
  · exact tailEnvelope0129FailureFibreCutoffThree3 residue
  · exact tailEnvelope0129FailureFibreCutoffThree4 residue
  · exact tailEnvelope0129FailureFibreCutoffThree5 residue
  · exact tailEnvelope0129FailureFibreCutoffThree6 residue
  · exact tailEnvelope0129FailureFibreCutoffThree7 residue
  · exact tailEnvelope0129FailureFibreCutoffThree8 residue

theorem tailEnvelope0129FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0129FailureFibreExactThree cell residue ≤ tailEnvelope0129FailureFibreMaxThree cell := by decide

theorem tailEnvelope0129FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0129CountsThree tailEnvelope0129FailureFibreMaxThree 33891 = true := by decide

theorem tailEnvelope0129FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0129CountsThree tailEnvelope0129FailureFibreMaxThree 34034 = true := by decide

theorem tailEnvelope0129FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 9514530 9562102
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9562101 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0129CountsOne) (fibre := tailEnvelope0129FailureFibreMaxOne) (bound := 33884) tailEnvelope0129FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0129CountsOne tailEnvelope0129FailureFibreMaxOne tailEnvelope0129FailureFibreExactOne
      (lower := 9514530) (upper := 9562101) (N := N) (bound := 33884)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0129FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0129FailureFibreCutoffOne
      tailEnvelope0129FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0129CountsThree) (fibre := tailEnvelope0129FailureFibreMaxThree) (bound := 33891) tailEnvelope0129FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0129CountsThree tailEnvelope0129FailureFibreMaxThree tailEnvelope0129FailureFibreExactThree
      (lower := 9514530) (upper := 9562101) (N := N) (bound := 33891)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0129FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0129FailureFibreCutoffThree
      tailEnvelope0129FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0129FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 9514530 9562102
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9562101 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0129CountsOne) (fibre := tailEnvelope0129FailureFibreMaxOne) (bound := 34028) tailEnvelope0129FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0129CountsOne tailEnvelope0129FailureFibreMaxOne tailEnvelope0129FailureFibreExactOne
      (lower := 9514530) (upper := 9562101) (N := N) (bound := 34028)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0129FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0129FailureFibreCutoffOne
      tailEnvelope0129FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0129CountsThree) (fibre := tailEnvelope0129FailureFibreMaxThree) (bound := 34034) tailEnvelope0129FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0129CountsThree tailEnvelope0129FailureFibreMaxThree tailEnvelope0129FailureFibreExactThree
      (lower := 9514530) (upper := 9562101) (N := N) (bound := 34034)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0129FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0129FailureFibreCutoffThree
      tailEnvelope0129FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0130FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![134, 137, 142, 141, 140, 139, 131, 130, 138, 134, 139, 134, 136, 132, 142, 141, 139, 131, 140, 139, 134, 135, 142, 141, 134, 136, 131, 144, 145, 133, 134, 141, 132, 135, 136, 140, 136, 137, 136, 132, 136, 138, 138, 139, 132, 138, 138, 137, 141], ![134, 135, 138, 133, 133, 133, 136, 141, 141, 131, 140, 136, 136, 144, 137, 138, 141, 139, 145, 148, 138, 136, 142, 133, 138, 133, 132, 138, 143, 128, 135, 131, 134, 143, 135, 142, 140, 142, 136, 142, 142, 140, 131, 140, 140, 140, 137, 138, 136], ![136, 140, 137, 133, 134, 135, 134, 141, 136, 138, 136, 137, 133, 134, 131, 141, 140, 143, 133, 137, 133, 142, 138, 131, 140, 146, 139, 135, 133, 136, 139, 133, 138, 141, 132, 137, 135, 131, 138, 138, 140, 141, 136, 129, 137, 141, 132, 135, 134], ![133, 134, 137, 133, 136, 136, 130, 134, 142, 135, 135, 133, 137, 144, 137, 136, 138, 142, 138, 139, 142, 146, 132, 140, 143, 136, 131, 132, 140, 135, 128, 141, 144, 140, 135, 129, 136, 141, 143, 135, 146, 136, 134, 141, 136, 134, 140, 132, 139], ![140, 138, 137, 131, 145, 139, 139, 140, 137, 132, 138, 140, 137, 141, 135, 135, 135, 132, 132, 137, 136, 135, 129, 131, 138, 139, 138, 140, 134, 140, 145, 141, 140, 134, 140, 136, 135, 142, 139, 136, 131, 136, 135, 136, 135, 135, 134, 136, 132], ![139, 142, 137, 139, 142, 136, 143, 134, 135, 136, 135, 137, 146, 139, 138, 134, 134, 141, 143, 128, 137, 139, 134, 138, 137, 139, 137, 134, 134, 143, 140, 127, 138, 148, 143, 131, 146, 139, 130, 132, 135, 134, 149, 132, 132, 137, 138, 133, 132], ![141, 141, 137, 137, 145, 134, 139, 141, 129, 138, 144, 135, 139, 136, 131, 130, 138, 140, 138, 136, 135, 139, 140, 140, 135, 136, 142, 138, 131, 136, 137, 141, 131, 137, 139, 141, 132, 136, 136, 136, 133, 138, 137, 145, 130, 132, 139, 136, 136], ![135, 139, 134, 146, 135, 142, 139, 134, 137, 138, 138, 136, 136, 134, 139, 138, 140, 136, 137, 127, 134, 137, 138, 140, 133, 137, 143, 137, 133, 142, 134, 139, 142, 133, 138, 144, 131, 135, 134, 137, 132, 134, 140, 134, 135, 132, 142, 144, 143], ![136, 132, 137, 141, 134, 141, 137, 127, 136, 139, 131, 138, 136, 131, 146, 137, 136, 132, 134, 135, 143, 137, 139, 138, 136, 133, 134, 142, 139, 131, 134, 140, 131, 134, 140, 142, 141, 139, 137, 140, 140, 137, 132, 144, 140, 138, 144, 137, 140]]

def tailEnvelope0130FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![144, 143, 132, 130, 132, 142, 138, 138, 141, 138, 143, 139, 138, 138, 139, 135, 138, 145, 139, 132, 138, 132, 135, 139, 132, 141, 147, 132, 131, 139, 137, 134, 140, 137, 136, 132, 138, 142, 141, 135, 137, 137, 145, 136, 134, 135, 133, 134, 141], ![136, 137, 134, 132, 140, 139, 140, 135, 137, 138, 134, 133, 137, 139, 136, 134, 136, 140, 134, 135, 141, 135, 132, 141, 142, 142, 135, 129, 136, 139, 142, 137, 134, 138, 137, 133, 138, 138, 135, 142, 139, 134, 146, 138, 129, 133, 139, 133, 140], ![135, 136, 139, 135, 140, 140, 140, 135, 136, 135, 134, 139, 133, 139, 136, 134, 138, 131, 140, 144, 131, 138, 145, 138, 138, 139, 133, 137, 139, 133, 141, 138, 135, 137, 137, 140, 138, 134, 142, 138, 128, 133, 145, 136, 132, 144, 129, 141, 138], ![129, 130, 143, 136, 136, 135, 135, 138, 133, 143, 140, 138, 140, 143, 135, 138, 141, 134, 132, 143, 134, 139, 145, 136, 135, 140, 142, 141, 138, 132, 140, 137, 134, 137, 133, 132, 138, 129, 138, 137, 135, 141, 141, 139, 136, 137, 144, 137, 133], ![134, 139, 140, 139, 134, 128, 138, 142, 131, 140, 140, 137, 131, 136, 135, 137, 136, 135, 143, 139, 135, 139, 142, 140, 141, 136, 138, 139, 142, 135, 133, 136, 130, 133, 138, 137, 134, 132, 136, 140, 141, 140, 135, 132, 141, 133, 140, 143, 142], ![139, 133, 135, 135, 142, 143, 139, 142, 136, 140, 131, 137, 133, 133, 139, 141, 138, 136, 135, 133, 139, 137, 133, 139, 144, 135, 140, 138, 137, 140, 138, 134, 143, 136, 139, 137, 133, 136, 138, 137, 142, 133, 130, 135, 136, 136, 139, 142, 138], ![139, 137, 139, 136, 136, 140, 134, 140, 144, 134, 133, 132, 136, 138, 142, 137, 136, 130, 136, 140, 146, 135, 139, 141, 140, 129, 134, 141, 135, 133, 132, 132, 139, 133, 135, 139, 135, 135, 139, 142, 140, 138, 134, 137, 143, 138, 142, 140, 134], ![142, 135, 130, 143, 138, 139, 143, 135, 140, 139, 141, 135, 144, 135, 134, 141, 131, 135, 137, 137, 141, 138, 131, 136, 134, 133, 138, 135, 135, 142, 133, 132, 136, 138, 142, 136, 144, 142, 136, 142, 140, 133, 136, 139, 140, 144, 132, 130, 134], ![135, 145, 136, 137, 138, 136, 137, 140, 144, 132, 142, 135, 140, 141, 130, 135, 140, 137, 139, 136, 138, 136, 133, 136, 133, 138, 134, 135, 137, 132, 137, 142, 139, 131, 136, 130, 137, 143, 133, 130, 139, 139, 137, 137, 139, 134, 142, 136, 135]]

def tailEnvelope0130FailureFibreMaxOne : Fin 9 → Nat :=
  ![145, 148, 146, 146, 145, 149, 145, 146, 146]

def tailEnvelope0130FailureFibreMaxThree : Fin 9 → Nat :=
  ![147, 146, 145, 145, 143, 144, 146, 144, 145]

theorem tailEnvelope0130FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      9609911 (tailEnvelope0130CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0130FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0130FailureCutoffTreeOne0Check :
    tailEnvelope0130FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0130FailureFibreExactOne 0) 9609911 0 = true := by decide

theorem tailEnvelope0130FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      9609911 (tailEnvelope0130FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0130FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0130FailureCutoffTreeOne0Check

def tailEnvelope0130FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0130FailureCutoffTreeOne1Check :
    tailEnvelope0130FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0130FailureFibreExactOne 1) 9609911 0 = true := by decide

theorem tailEnvelope0130FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      9609911 (tailEnvelope0130FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0130FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0130FailureCutoffTreeOne1Check

def tailEnvelope0130FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0130FailureCutoffTreeOne2Check :
    tailEnvelope0130FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0130FailureFibreExactOne 2) 9609911 0 = true := by decide

theorem tailEnvelope0130FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      9609911 (tailEnvelope0130FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0130FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0130FailureCutoffTreeOne2Check

def tailEnvelope0130FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0130FailureCutoffTreeOne3Check :
    tailEnvelope0130FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0130FailureFibreExactOne 3) 9609911 0 = true := by decide

theorem tailEnvelope0130FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      9609911 (tailEnvelope0130FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0130FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0130FailureCutoffTreeOne3Check

def tailEnvelope0130FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0130FailureCutoffTreeOne4Check :
    tailEnvelope0130FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0130FailureFibreExactOne 4) 9609911 0 = true := by decide

theorem tailEnvelope0130FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      9609911 (tailEnvelope0130FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0130FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0130FailureCutoffTreeOne4Check

def tailEnvelope0130FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0130FailureCutoffTreeOne5Check :
    tailEnvelope0130FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0130FailureFibreExactOne 5) 9609911 0 = true := by decide

theorem tailEnvelope0130FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      9609911 (tailEnvelope0130FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0130FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0130FailureCutoffTreeOne5Check

def tailEnvelope0130FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0130FailureCutoffTreeOne6Check :
    tailEnvelope0130FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0130FailureFibreExactOne 6) 9609911 0 = true := by decide

theorem tailEnvelope0130FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      9609911 (tailEnvelope0130FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0130FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0130FailureCutoffTreeOne6Check

def tailEnvelope0130FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0130FailureCutoffTreeOne7Check :
    tailEnvelope0130FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0130FailureFibreExactOne 7) 9609911 0 = true := by decide

theorem tailEnvelope0130FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      9609911 (tailEnvelope0130FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0130FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0130FailureCutoffTreeOne7Check

def tailEnvelope0130FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0130FailureCutoffTreeOne8Check :
    tailEnvelope0130FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0130FailureFibreExactOne 8) 9609911 0 = true := by decide

theorem tailEnvelope0130FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      9609911 (tailEnvelope0130FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0130FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0130FailureCutoffTreeOne8Check

theorem tailEnvelope0130FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      9609911 (tailEnvelope0130FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0130FailureFibreCutoffOne0 residue
  · exact tailEnvelope0130FailureFibreCutoffOne1 residue
  · exact tailEnvelope0130FailureFibreCutoffOne2 residue
  · exact tailEnvelope0130FailureFibreCutoffOne3 residue
  · exact tailEnvelope0130FailureFibreCutoffOne4 residue
  · exact tailEnvelope0130FailureFibreCutoffOne5 residue
  · exact tailEnvelope0130FailureFibreCutoffOne6 residue
  · exact tailEnvelope0130FailureFibreCutoffOne7 residue
  · exact tailEnvelope0130FailureFibreCutoffOne8 residue

theorem tailEnvelope0130FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0130FailureFibreExactOne cell residue ≤ tailEnvelope0130FailureFibreMaxOne cell := by decide

theorem tailEnvelope0130FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0130CountsOne tailEnvelope0130FailureFibreMaxOne 34057 = true := by decide

theorem tailEnvelope0130FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0130CountsOne tailEnvelope0130FailureFibreMaxOne 34202 = true := by decide

theorem tailEnvelope0130FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      9609911 (tailEnvelope0130CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0130FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0130FailureCutoffTreeThree0Check :
    tailEnvelope0130FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0130FailureFibreExactThree 0) 9609911 0 = true := by decide

theorem tailEnvelope0130FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      9609911 (tailEnvelope0130FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0130FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0130FailureCutoffTreeThree0Check

def tailEnvelope0130FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0130FailureCutoffTreeThree1Check :
    tailEnvelope0130FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0130FailureFibreExactThree 1) 9609911 0 = true := by decide

theorem tailEnvelope0130FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      9609911 (tailEnvelope0130FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0130FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0130FailureCutoffTreeThree1Check

def tailEnvelope0130FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0130FailureCutoffTreeThree2Check :
    tailEnvelope0130FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0130FailureFibreExactThree 2) 9609911 0 = true := by decide

theorem tailEnvelope0130FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      9609911 (tailEnvelope0130FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0130FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0130FailureCutoffTreeThree2Check

def tailEnvelope0130FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0130FailureCutoffTreeThree3Check :
    tailEnvelope0130FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0130FailureFibreExactThree 3) 9609911 0 = true := by decide

theorem tailEnvelope0130FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      9609911 (tailEnvelope0130FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0130FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0130FailureCutoffTreeThree3Check

def tailEnvelope0130FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0130FailureCutoffTreeThree4Check :
    tailEnvelope0130FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0130FailureFibreExactThree 4) 9609911 0 = true := by decide

theorem tailEnvelope0130FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      9609911 (tailEnvelope0130FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0130FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0130FailureCutoffTreeThree4Check

def tailEnvelope0130FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0130FailureCutoffTreeThree5Check :
    tailEnvelope0130FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0130FailureFibreExactThree 5) 9609911 0 = true := by decide

theorem tailEnvelope0130FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      9609911 (tailEnvelope0130FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0130FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0130FailureCutoffTreeThree5Check

def tailEnvelope0130FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0130FailureCutoffTreeThree6Check :
    tailEnvelope0130FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0130FailureFibreExactThree 6) 9609911 0 = true := by decide

theorem tailEnvelope0130FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      9609911 (tailEnvelope0130FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0130FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0130FailureCutoffTreeThree6Check

def tailEnvelope0130FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0130FailureCutoffTreeThree7Check :
    tailEnvelope0130FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0130FailureFibreExactThree 7) 9609911 0 = true := by decide

theorem tailEnvelope0130FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      9609911 (tailEnvelope0130FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0130FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0130FailureCutoffTreeThree7Check

def tailEnvelope0130FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0130FailureCutoffTreeThree8Check :
    tailEnvelope0130FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0130FailureFibreExactThree 8) 9609911 0 = true := by decide

theorem tailEnvelope0130FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      9609911 (tailEnvelope0130FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0130FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0130FailureCutoffTreeThree8Check

theorem tailEnvelope0130FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      9609911 (tailEnvelope0130FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0130FailureFibreCutoffThree0 residue
  · exact tailEnvelope0130FailureFibreCutoffThree1 residue
  · exact tailEnvelope0130FailureFibreCutoffThree2 residue
  · exact tailEnvelope0130FailureFibreCutoffThree3 residue
  · exact tailEnvelope0130FailureFibreCutoffThree4 residue
  · exact tailEnvelope0130FailureFibreCutoffThree5 residue
  · exact tailEnvelope0130FailureFibreCutoffThree6 residue
  · exact tailEnvelope0130FailureFibreCutoffThree7 residue
  · exact tailEnvelope0130FailureFibreCutoffThree8 residue

theorem tailEnvelope0130FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0130FailureFibreExactThree cell residue ≤ tailEnvelope0130FailureFibreMaxThree cell := by decide

theorem tailEnvelope0130FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0130CountsThree tailEnvelope0130FailureFibreMaxThree 34061 = true := by decide

theorem tailEnvelope0130FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0130CountsThree tailEnvelope0130FailureFibreMaxThree 34205 = true := by decide

theorem tailEnvelope0130FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 9562102 9609912
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9609911 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0130CountsOne) (fibre := tailEnvelope0130FailureFibreMaxOne) (bound := 34057) tailEnvelope0130FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0130CountsOne tailEnvelope0130FailureFibreMaxOne tailEnvelope0130FailureFibreExactOne
      (lower := 9562102) (upper := 9609911) (N := N) (bound := 34057)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0130FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0130FailureFibreCutoffOne
      tailEnvelope0130FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0130CountsThree) (fibre := tailEnvelope0130FailureFibreMaxThree) (bound := 34061) tailEnvelope0130FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0130CountsThree tailEnvelope0130FailureFibreMaxThree tailEnvelope0130FailureFibreExactThree
      (lower := 9562102) (upper := 9609911) (N := N) (bound := 34061)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0130FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0130FailureFibreCutoffThree
      tailEnvelope0130FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0130FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 9562102 9609912
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9609911 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0130CountsOne) (fibre := tailEnvelope0130FailureFibreMaxOne) (bound := 34202) tailEnvelope0130FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0130CountsOne tailEnvelope0130FailureFibreMaxOne tailEnvelope0130FailureFibreExactOne
      (lower := 9562102) (upper := 9609911) (N := N) (bound := 34202)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0130FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0130FailureFibreCutoffOne
      tailEnvelope0130FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0130CountsThree) (fibre := tailEnvelope0130FailureFibreMaxThree) (bound := 34205) tailEnvelope0130FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0130CountsThree tailEnvelope0130FailureFibreMaxThree tailEnvelope0130FailureFibreExactThree
      (lower := 9562102) (upper := 9609911) (N := N) (bound := 34205)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0130FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0130FailureFibreCutoffThree
      tailEnvelope0130FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0131FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![134, 137, 143, 142, 142, 141, 131, 131, 139, 135, 139, 135, 137, 133, 142, 142, 139, 131, 140, 140, 134, 137, 142, 142, 134, 136, 132, 145, 145, 136, 134, 141, 132, 135, 137, 142, 136, 140, 136, 133, 137, 138, 138, 140, 132, 139, 139, 137, 141], ![135, 136, 139, 134, 133, 133, 136, 141, 141, 132, 143, 137, 137, 144, 138, 138, 141, 140, 145, 150, 138, 137, 142, 133, 138, 134, 132, 139, 144, 129, 136, 132, 134, 143, 136, 143, 141, 143, 136, 142, 142, 141, 132, 142, 142, 142, 138, 140, 136], ![136, 141, 137, 134, 134, 136, 134, 142, 136, 139, 136, 138, 133, 134, 131, 142, 140, 143, 134, 138, 134, 143, 140, 132, 141, 147, 140, 135, 133, 136, 139, 134, 140, 142, 133, 138, 137, 132, 139, 138, 143, 141, 137, 129, 137, 141, 136, 135, 135], ![133, 134, 137, 133, 137, 137, 131, 135, 142, 135, 136, 134, 138, 145, 138, 137, 139, 142, 138, 139, 142, 146, 134, 141, 145, 136, 132, 135, 142, 136, 129, 142, 145, 140, 135, 129, 136, 141, 143, 135, 148, 136, 136, 143, 136, 135, 141, 132, 141], ![140, 139, 137, 133, 146, 141, 140, 140, 139, 132, 138, 141, 138, 142, 138, 135, 135, 134, 133, 138, 137, 135, 130, 133, 139, 139, 138, 140, 135, 140, 146, 141, 140, 135, 141, 136, 137, 142, 140, 136, 131, 136, 135, 136, 136, 135, 135, 136, 132], ![139, 143, 138, 139, 143, 136, 143, 134, 136, 137, 137, 138, 147, 139, 138, 134, 135, 141, 144, 128, 138, 139, 134, 138, 138, 140, 139, 135, 135, 143, 140, 128, 138, 148, 144, 131, 147, 140, 131, 132, 135, 135, 150, 134, 135, 138, 139, 134, 132], ![143, 143, 139, 137, 145, 134, 141, 141, 130, 138, 145, 135, 139, 138, 131, 131, 139, 141, 140, 136, 135, 139, 141, 140, 136, 138, 143, 139, 131, 136, 137, 142, 133, 138, 141, 142, 132, 136, 136, 136, 134, 139, 137, 146, 130, 132, 139, 136, 137], ![136, 139, 134, 146, 135, 142, 141, 136, 139, 139, 138, 136, 138, 134, 140, 138, 141, 138, 137, 127, 134, 137, 140, 142, 133, 139, 143, 137, 133, 142, 137, 139, 142, 134, 139, 144, 132, 135, 136, 140, 133, 136, 140, 134, 135, 132, 142, 145, 143], ![137, 133, 137, 143, 135, 143, 138, 128, 136, 139, 131, 138, 137, 132, 148, 138, 137, 132, 134, 135, 144, 138, 140, 139, 136, 133, 134, 142, 139, 132, 135, 141, 131, 134, 140, 142, 141, 140, 138, 141, 140, 137, 135, 144, 140, 139, 145, 139, 141]]

def tailEnvelope0131FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![145, 144, 132, 130, 132, 142, 138, 139, 141, 139, 143, 139, 138, 139, 140, 137, 138, 146, 139, 132, 138, 132, 135, 140, 133, 142, 149, 132, 131, 140, 138, 136, 141, 138, 136, 133, 138, 142, 141, 136, 138, 138, 145, 136, 134, 136, 134, 136, 143], ![136, 137, 134, 132, 141, 141, 141, 137, 137, 138, 134, 133, 137, 142, 136, 135, 137, 140, 134, 135, 142, 137, 133, 142, 142, 143, 135, 129, 136, 140, 142, 138, 135, 138, 137, 133, 139, 140, 137, 143, 141, 134, 146, 138, 129, 134, 141, 133, 142], ![135, 136, 139, 136, 140, 141, 140, 135, 138, 135, 134, 139, 134, 141, 136, 134, 138, 131, 140, 145, 131, 139, 146, 139, 138, 139, 133, 139, 141, 135, 142, 138, 135, 137, 137, 141, 139, 134, 143, 138, 128, 134, 145, 139, 133, 144, 132, 141, 138], ![129, 131, 144, 137, 138, 135, 135, 138, 133, 144, 140, 140, 140, 143, 135, 138, 141, 135, 134, 146, 136, 140, 145, 136, 137, 142, 143, 141, 139, 132, 142, 137, 134, 137, 135, 133, 140, 130, 138, 137, 135, 141, 142, 139, 137, 137, 144, 138, 133], ![134, 140, 141, 139, 134, 128, 138, 143, 132, 143, 142, 140, 133, 136, 135, 137, 137, 135, 144, 139, 136, 139, 142, 140, 142, 137, 140, 139, 144, 135, 133, 136, 131, 133, 139, 137, 134, 132, 136, 140, 142, 140, 137, 132, 142, 133, 140, 143, 142], ![140, 133, 136, 136, 142, 144, 140, 142, 137, 140, 131, 137, 133, 133, 140, 141, 140, 137, 136, 134, 139, 137, 134, 139, 145, 135, 140, 138, 137, 140, 139, 135, 144, 136, 139, 138, 134, 136, 139, 138, 144, 136, 131, 135, 136, 137, 140, 144, 139], ![139, 137, 140, 136, 136, 140, 136, 141, 145, 135, 134, 133, 137, 138, 143, 137, 137, 131, 136, 140, 147, 135, 142, 141, 141, 129, 135, 142, 138, 134, 134, 133, 140, 133, 135, 139, 136, 137, 140, 143, 141, 138, 135, 137, 143, 139, 142, 141, 134], ![143, 136, 131, 143, 139, 139, 143, 135, 140, 141, 142, 135, 145, 136, 135, 142, 132, 136, 138, 138, 142, 139, 131, 136, 134, 133, 140, 136, 136, 143, 133, 134, 136, 139, 142, 137, 144, 143, 136, 142, 140, 135, 136, 140, 141, 145, 132, 131, 135], ![137, 145, 136, 138, 138, 137, 138, 141, 146, 132, 143, 136, 140, 141, 130, 135, 142, 138, 140, 137, 138, 136, 135, 136, 135, 139, 134, 136, 139, 132, 138, 143, 139, 132, 136, 131, 137, 143, 134, 133, 140, 141, 137, 138, 139, 136, 142, 136, 135]]

def tailEnvelope0131FailureFibreMaxOne : Fin 9 → Nat :=
  ![145, 150, 147, 148, 146, 150, 146, 146, 148]

def tailEnvelope0131FailureFibreMaxThree : Fin 9 → Nat :=
  ![149, 146, 146, 146, 144, 145, 147, 145, 146]

theorem tailEnvelope0131FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      9657960 (tailEnvelope0131CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0131FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0131FailureCutoffTreeOne0Check :
    tailEnvelope0131FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0131FailureFibreExactOne 0) 9657960 0 = true := by decide

theorem tailEnvelope0131FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      9657960 (tailEnvelope0131FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0131FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0131FailureCutoffTreeOne0Check

def tailEnvelope0131FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0131FailureCutoffTreeOne1Check :
    tailEnvelope0131FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0131FailureFibreExactOne 1) 9657960 0 = true := by decide

theorem tailEnvelope0131FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      9657960 (tailEnvelope0131FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0131FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0131FailureCutoffTreeOne1Check

def tailEnvelope0131FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0131FailureCutoffTreeOne2Check :
    tailEnvelope0131FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0131FailureFibreExactOne 2) 9657960 0 = true := by decide

theorem tailEnvelope0131FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      9657960 (tailEnvelope0131FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0131FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0131FailureCutoffTreeOne2Check

def tailEnvelope0131FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0131FailureCutoffTreeOne3Check :
    tailEnvelope0131FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0131FailureFibreExactOne 3) 9657960 0 = true := by decide

theorem tailEnvelope0131FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      9657960 (tailEnvelope0131FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0131FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0131FailureCutoffTreeOne3Check

def tailEnvelope0131FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0131FailureCutoffTreeOne4Check :
    tailEnvelope0131FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0131FailureFibreExactOne 4) 9657960 0 = true := by decide

theorem tailEnvelope0131FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      9657960 (tailEnvelope0131FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0131FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0131FailureCutoffTreeOne4Check

def tailEnvelope0131FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0131FailureCutoffTreeOne5Check :
    tailEnvelope0131FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0131FailureFibreExactOne 5) 9657960 0 = true := by decide

theorem tailEnvelope0131FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      9657960 (tailEnvelope0131FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0131FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0131FailureCutoffTreeOne5Check

def tailEnvelope0131FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0131FailureCutoffTreeOne6Check :
    tailEnvelope0131FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0131FailureFibreExactOne 6) 9657960 0 = true := by decide

theorem tailEnvelope0131FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      9657960 (tailEnvelope0131FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0131FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0131FailureCutoffTreeOne6Check

def tailEnvelope0131FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0131FailureCutoffTreeOne7Check :
    tailEnvelope0131FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0131FailureFibreExactOne 7) 9657960 0 = true := by decide

theorem tailEnvelope0131FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      9657960 (tailEnvelope0131FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0131FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0131FailureCutoffTreeOne7Check

def tailEnvelope0131FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0131FailureCutoffTreeOne8Check :
    tailEnvelope0131FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0131FailureFibreExactOne 8) 9657960 0 = true := by decide

theorem tailEnvelope0131FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      9657960 (tailEnvelope0131FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0131FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0131FailureCutoffTreeOne8Check

theorem tailEnvelope0131FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      9657960 (tailEnvelope0131FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0131FailureFibreCutoffOne0 residue
  · exact tailEnvelope0131FailureFibreCutoffOne1 residue
  · exact tailEnvelope0131FailureFibreCutoffOne2 residue
  · exact tailEnvelope0131FailureFibreCutoffOne3 residue
  · exact tailEnvelope0131FailureFibreCutoffOne4 residue
  · exact tailEnvelope0131FailureFibreCutoffOne5 residue
  · exact tailEnvelope0131FailureFibreCutoffOne6 residue
  · exact tailEnvelope0131FailureFibreCutoffOne7 residue
  · exact tailEnvelope0131FailureFibreCutoffOne8 residue

theorem tailEnvelope0131FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0131FailureFibreExactOne cell residue ≤ tailEnvelope0131FailureFibreMaxOne cell := by decide

theorem tailEnvelope0131FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0131CountsOne tailEnvelope0131FailureFibreMaxOne 34233 = true := by decide

theorem tailEnvelope0131FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0131CountsOne tailEnvelope0131FailureFibreMaxOne 34378 = true := by decide

theorem tailEnvelope0131FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      9657960 (tailEnvelope0131CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0131FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0131FailureCutoffTreeThree0Check :
    tailEnvelope0131FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0131FailureFibreExactThree 0) 9657960 0 = true := by decide

theorem tailEnvelope0131FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      9657960 (tailEnvelope0131FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0131FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0131FailureCutoffTreeThree0Check

def tailEnvelope0131FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0131FailureCutoffTreeThree1Check :
    tailEnvelope0131FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0131FailureFibreExactThree 1) 9657960 0 = true := by decide

theorem tailEnvelope0131FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      9657960 (tailEnvelope0131FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0131FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0131FailureCutoffTreeThree1Check

def tailEnvelope0131FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0131FailureCutoffTreeThree2Check :
    tailEnvelope0131FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0131FailureFibreExactThree 2) 9657960 0 = true := by decide

theorem tailEnvelope0131FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      9657960 (tailEnvelope0131FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0131FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0131FailureCutoffTreeThree2Check

def tailEnvelope0131FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0131FailureCutoffTreeThree3Check :
    tailEnvelope0131FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0131FailureFibreExactThree 3) 9657960 0 = true := by decide

theorem tailEnvelope0131FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      9657960 (tailEnvelope0131FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0131FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0131FailureCutoffTreeThree3Check

def tailEnvelope0131FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0131FailureCutoffTreeThree4Check :
    tailEnvelope0131FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0131FailureFibreExactThree 4) 9657960 0 = true := by decide

theorem tailEnvelope0131FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      9657960 (tailEnvelope0131FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0131FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0131FailureCutoffTreeThree4Check

def tailEnvelope0131FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0131FailureCutoffTreeThree5Check :
    tailEnvelope0131FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0131FailureFibreExactThree 5) 9657960 0 = true := by decide

theorem tailEnvelope0131FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      9657960 (tailEnvelope0131FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0131FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0131FailureCutoffTreeThree5Check

def tailEnvelope0131FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0131FailureCutoffTreeThree6Check :
    tailEnvelope0131FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0131FailureFibreExactThree 6) 9657960 0 = true := by decide

theorem tailEnvelope0131FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      9657960 (tailEnvelope0131FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0131FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0131FailureCutoffTreeThree6Check

def tailEnvelope0131FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0131FailureCutoffTreeThree7Check :
    tailEnvelope0131FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0131FailureFibreExactThree 7) 9657960 0 = true := by decide

theorem tailEnvelope0131FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      9657960 (tailEnvelope0131FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0131FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0131FailureCutoffTreeThree7Check

def tailEnvelope0131FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0131FailureCutoffTreeThree8Check :
    tailEnvelope0131FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0131FailureFibreExactThree 8) 9657960 0 = true := by decide

theorem tailEnvelope0131FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      9657960 (tailEnvelope0131FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0131FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0131FailureCutoffTreeThree8Check

theorem tailEnvelope0131FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      9657960 (tailEnvelope0131FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0131FailureFibreCutoffThree0 residue
  · exact tailEnvelope0131FailureFibreCutoffThree1 residue
  · exact tailEnvelope0131FailureFibreCutoffThree2 residue
  · exact tailEnvelope0131FailureFibreCutoffThree3 residue
  · exact tailEnvelope0131FailureFibreCutoffThree4 residue
  · exact tailEnvelope0131FailureFibreCutoffThree5 residue
  · exact tailEnvelope0131FailureFibreCutoffThree6 residue
  · exact tailEnvelope0131FailureFibreCutoffThree7 residue
  · exact tailEnvelope0131FailureFibreCutoffThree8 residue

theorem tailEnvelope0131FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0131FailureFibreExactThree cell residue ≤ tailEnvelope0131FailureFibreMaxThree cell := by decide

theorem tailEnvelope0131FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0131CountsThree tailEnvelope0131FailureFibreMaxThree 34229 = true := by decide

theorem tailEnvelope0131FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0131CountsThree tailEnvelope0131FailureFibreMaxThree 34373 = true := by decide

theorem tailEnvelope0131FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 9609912 9657961
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9657960 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0131CountsOne) (fibre := tailEnvelope0131FailureFibreMaxOne) (bound := 34233) tailEnvelope0131FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0131CountsOne tailEnvelope0131FailureFibreMaxOne tailEnvelope0131FailureFibreExactOne
      (lower := 9609912) (upper := 9657960) (N := N) (bound := 34233)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0131FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0131FailureFibreCutoffOne
      tailEnvelope0131FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0131CountsThree) (fibre := tailEnvelope0131FailureFibreMaxThree) (bound := 34229) tailEnvelope0131FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0131CountsThree tailEnvelope0131FailureFibreMaxThree tailEnvelope0131FailureFibreExactThree
      (lower := 9609912) (upper := 9657960) (N := N) (bound := 34229)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0131FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0131FailureFibreCutoffThree
      tailEnvelope0131FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0131FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 9609912 9657961
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9657960 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0131CountsOne) (fibre := tailEnvelope0131FailureFibreMaxOne) (bound := 34378) tailEnvelope0131FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0131CountsOne tailEnvelope0131FailureFibreMaxOne tailEnvelope0131FailureFibreExactOne
      (lower := 9609912) (upper := 9657960) (N := N) (bound := 34378)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0131FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0131FailureFibreCutoffOne
      tailEnvelope0131FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0131CountsThree) (fibre := tailEnvelope0131FailureFibreMaxThree) (bound := 34373) tailEnvelope0131FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0131CountsThree tailEnvelope0131FailureFibreMaxThree tailEnvelope0131FailureFibreExactThree
      (lower := 9609912) (upper := 9657960) (N := N) (bound := 34373)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0131FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0131FailureFibreCutoffThree
      tailEnvelope0131FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0132FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![134, 138, 143, 144, 142, 142, 132, 132, 140, 136, 140, 137, 137, 133, 142, 142, 139, 134, 141, 143, 135, 138, 142, 142, 134, 137, 133, 145, 146, 136, 134, 141, 132, 135, 138, 142, 138, 140, 137, 134, 137, 138, 139, 140, 133, 139, 139, 137, 141], ![137, 139, 140, 134, 135, 133, 136, 142, 142, 132, 146, 138, 137, 145, 138, 141, 141, 140, 146, 150, 138, 137, 143, 133, 139, 134, 133, 140, 144, 130, 137, 132, 135, 144, 137, 144, 141, 143, 136, 142, 143, 141, 134, 143, 142, 143, 138, 142, 137], ![137, 142, 138, 135, 135, 136, 135, 142, 139, 139, 136, 138, 134, 134, 132, 142, 141, 144, 135, 139, 136, 144, 141, 132, 143, 147, 140, 135, 133, 136, 140, 134, 141, 142, 136, 139, 138, 132, 140, 139, 144, 142, 137, 129, 137, 141, 137, 136, 136], ![133, 134, 137, 133, 138, 139, 132, 135, 142, 136, 137, 135, 139, 145, 138, 139, 139, 142, 138, 139, 143, 148, 135, 142, 145, 137, 132, 136, 143, 137, 130, 143, 146, 140, 135, 129, 137, 142, 145, 136, 148, 137, 137, 144, 138, 136, 141, 134, 141], ![142, 140, 141, 133, 147, 141, 141, 140, 139, 132, 140, 141, 139, 143, 138, 136, 136, 134, 134, 139, 138, 136, 130, 133, 140, 139, 139, 141, 135, 141, 146, 141, 141, 136, 143, 138, 137, 143, 140, 136, 131, 136, 135, 137, 136, 138, 135, 136, 133], ![140, 144, 138, 140, 143, 136, 143, 135, 137, 139, 138, 139, 147, 140, 138, 134, 137, 143, 144, 128, 138, 140, 134, 139, 138, 142, 140, 136, 135, 143, 140, 128, 140, 149, 145, 132, 147, 141, 132, 133, 136, 138, 151, 136, 135, 139, 139, 134, 132], ![145, 144, 139, 137, 145, 134, 141, 142, 131, 140, 145, 135, 140, 141, 132, 132, 140, 142, 140, 138, 135, 139, 141, 140, 136, 139, 143, 140, 131, 136, 138, 144, 134, 140, 142, 142, 132, 136, 136, 137, 134, 141, 138, 147, 130, 133, 140, 138, 138], ![138, 139, 134, 146, 135, 144, 141, 137, 140, 139, 138, 136, 139, 135, 140, 139, 141, 138, 137, 128, 136, 139, 141, 144, 134, 139, 143, 137, 133, 143, 137, 140, 143, 134, 139, 144, 132, 137, 138, 141, 135, 136, 140, 134, 135, 133, 143, 145, 144], ![138, 134, 137, 144, 135, 144, 138, 128, 136, 139, 131, 138, 138, 134, 150, 139, 137, 132, 134, 136, 144, 139, 141, 140, 136, 133, 134, 143, 141, 134, 139, 142, 131, 134, 140, 142, 144, 140, 140, 143, 140, 137, 135, 144, 142, 139, 146, 140, 141]]

def tailEnvelope0132FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![145, 144, 133, 131, 132, 143, 138, 140, 142, 139, 143, 140, 139, 141, 144, 139, 139, 147, 139, 132, 140, 133, 136, 140, 134, 142, 149, 133, 132, 142, 140, 136, 142, 138, 136, 133, 139, 142, 141, 136, 139, 138, 145, 136, 135, 137, 136, 136, 145], ![136, 139, 135, 134, 143, 143, 142, 137, 137, 138, 134, 134, 138, 142, 137, 135, 137, 140, 135, 136, 144, 138, 135, 142, 142, 143, 136, 129, 137, 140, 143, 138, 135, 138, 137, 134, 140, 141, 139, 143, 141, 134, 146, 138, 131, 134, 142, 135, 142], ![135, 137, 140, 136, 141, 141, 140, 135, 138, 136, 136, 140, 136, 143, 136, 134, 138, 131, 141, 146, 132, 139, 146, 139, 138, 139, 135, 139, 143, 135, 142, 138, 135, 137, 138, 141, 139, 137, 143, 138, 128, 135, 147, 139, 134, 146, 132, 141, 138], ![131, 131, 146, 138, 138, 135, 135, 138, 134, 144, 141, 140, 141, 143, 135, 138, 143, 136, 138, 147, 136, 140, 145, 136, 138, 142, 144, 144, 139, 132, 142, 137, 135, 139, 136, 135, 140, 130, 138, 137, 135, 142, 142, 141, 137, 137, 144, 139, 133], ![135, 141, 142, 139, 135, 130, 139, 144, 134, 146, 143, 140, 133, 136, 136, 138, 138, 137, 146, 139, 136, 139, 143, 141, 143, 138, 141, 139, 144, 135, 134, 137, 131, 135, 139, 137, 135, 132, 136, 141, 142, 141, 138, 133, 142, 133, 140, 144, 143], ![141, 134, 136, 136, 143, 146, 141, 143, 138, 140, 131, 137, 134, 134, 141, 143, 140, 137, 136, 134, 140, 139, 134, 140, 145, 135, 141, 138, 137, 143, 139, 138, 146, 137, 140, 140, 135, 137, 139, 139, 144, 137, 131, 135, 136, 137, 141, 146, 140], ![139, 138, 141, 138, 137, 141, 137, 143, 146, 135, 134, 134, 137, 139, 143, 137, 139, 131, 136, 141, 147, 136, 143, 141, 142, 130, 135, 143, 138, 134, 134, 134, 141, 133, 135, 140, 136, 138, 141, 144, 142, 139, 135, 138, 145, 140, 142, 141, 134], ![143, 136, 131, 146, 139, 139, 144, 135, 140, 142, 142, 136, 145, 136, 136, 143, 132, 137, 138, 140, 142, 139, 131, 136, 134, 134, 140, 137, 136, 144, 134, 136, 138, 140, 143, 138, 145, 143, 137, 142, 141, 137, 138, 141, 142, 145, 135, 131, 136], ![137, 146, 136, 138, 140, 137, 140, 142, 146, 133, 143, 137, 140, 141, 130, 136, 142, 140, 140, 137, 139, 137, 136, 138, 136, 140, 135, 136, 139, 132, 138, 144, 141, 135, 137, 131, 138, 144, 134, 135, 141, 141, 138, 138, 140, 136, 142, 136, 136]]

def tailEnvelope0132FailureFibreMaxOne : Fin 9 → Nat :=
  ![146, 150, 147, 148, 147, 151, 147, 146, 150]

def tailEnvelope0132FailureFibreMaxThree : Fin 9 → Nat :=
  ![149, 146, 147, 147, 146, 146, 147, 146, 146]

theorem tailEnvelope0132FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      9706249 (tailEnvelope0132CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0132FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0132FailureCutoffTreeOne0Check :
    tailEnvelope0132FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0132FailureFibreExactOne 0) 9706249 0 = true := by decide

theorem tailEnvelope0132FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      9706249 (tailEnvelope0132FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0132FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0132FailureCutoffTreeOne0Check

def tailEnvelope0132FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0132FailureCutoffTreeOne1Check :
    tailEnvelope0132FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0132FailureFibreExactOne 1) 9706249 0 = true := by decide

theorem tailEnvelope0132FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      9706249 (tailEnvelope0132FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0132FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0132FailureCutoffTreeOne1Check

def tailEnvelope0132FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0132FailureCutoffTreeOne2Check :
    tailEnvelope0132FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0132FailureFibreExactOne 2) 9706249 0 = true := by decide

theorem tailEnvelope0132FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      9706249 (tailEnvelope0132FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0132FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0132FailureCutoffTreeOne2Check

def tailEnvelope0132FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0132FailureCutoffTreeOne3Check :
    tailEnvelope0132FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0132FailureFibreExactOne 3) 9706249 0 = true := by decide

theorem tailEnvelope0132FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      9706249 (tailEnvelope0132FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0132FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0132FailureCutoffTreeOne3Check

def tailEnvelope0132FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0132FailureCutoffTreeOne4Check :
    tailEnvelope0132FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0132FailureFibreExactOne 4) 9706249 0 = true := by decide

theorem tailEnvelope0132FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      9706249 (tailEnvelope0132FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0132FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0132FailureCutoffTreeOne4Check

def tailEnvelope0132FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0132FailureCutoffTreeOne5Check :
    tailEnvelope0132FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0132FailureFibreExactOne 5) 9706249 0 = true := by decide

theorem tailEnvelope0132FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      9706249 (tailEnvelope0132FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0132FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0132FailureCutoffTreeOne5Check

def tailEnvelope0132FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0132FailureCutoffTreeOne6Check :
    tailEnvelope0132FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0132FailureFibreExactOne 6) 9706249 0 = true := by decide

theorem tailEnvelope0132FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      9706249 (tailEnvelope0132FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0132FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0132FailureCutoffTreeOne6Check

def tailEnvelope0132FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0132FailureCutoffTreeOne7Check :
    tailEnvelope0132FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0132FailureFibreExactOne 7) 9706249 0 = true := by decide

theorem tailEnvelope0132FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      9706249 (tailEnvelope0132FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0132FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0132FailureCutoffTreeOne7Check

def tailEnvelope0132FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0132FailureCutoffTreeOne8Check :
    tailEnvelope0132FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0132FailureFibreExactOne 8) 9706249 0 = true := by decide

theorem tailEnvelope0132FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      9706249 (tailEnvelope0132FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0132FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0132FailureCutoffTreeOne8Check

theorem tailEnvelope0132FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      9706249 (tailEnvelope0132FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0132FailureFibreCutoffOne0 residue
  · exact tailEnvelope0132FailureFibreCutoffOne1 residue
  · exact tailEnvelope0132FailureFibreCutoffOne2 residue
  · exact tailEnvelope0132FailureFibreCutoffOne3 residue
  · exact tailEnvelope0132FailureFibreCutoffOne4 residue
  · exact tailEnvelope0132FailureFibreCutoffOne5 residue
  · exact tailEnvelope0132FailureFibreCutoffOne6 residue
  · exact tailEnvelope0132FailureFibreCutoffOne7 residue
  · exact tailEnvelope0132FailureFibreCutoffOne8 residue

theorem tailEnvelope0132FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0132FailureFibreExactOne cell residue ≤ tailEnvelope0132FailureFibreMaxOne cell := by decide

theorem tailEnvelope0132FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0132CountsOne tailEnvelope0132FailureFibreMaxOne 34409 = true := by decide

theorem tailEnvelope0132FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0132CountsOne tailEnvelope0132FailureFibreMaxOne 34555 = true := by decide

theorem tailEnvelope0132FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      9706249 (tailEnvelope0132CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0132FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0132FailureCutoffTreeThree0Check :
    tailEnvelope0132FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0132FailureFibreExactThree 0) 9706249 0 = true := by decide

theorem tailEnvelope0132FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      9706249 (tailEnvelope0132FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0132FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0132FailureCutoffTreeThree0Check

def tailEnvelope0132FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0132FailureCutoffTreeThree1Check :
    tailEnvelope0132FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0132FailureFibreExactThree 1) 9706249 0 = true := by decide

theorem tailEnvelope0132FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      9706249 (tailEnvelope0132FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0132FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0132FailureCutoffTreeThree1Check

def tailEnvelope0132FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0132FailureCutoffTreeThree2Check :
    tailEnvelope0132FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0132FailureFibreExactThree 2) 9706249 0 = true := by decide

theorem tailEnvelope0132FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      9706249 (tailEnvelope0132FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0132FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0132FailureCutoffTreeThree2Check

def tailEnvelope0132FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0132FailureCutoffTreeThree3Check :
    tailEnvelope0132FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0132FailureFibreExactThree 3) 9706249 0 = true := by decide

theorem tailEnvelope0132FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      9706249 (tailEnvelope0132FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0132FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0132FailureCutoffTreeThree3Check

def tailEnvelope0132FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0132FailureCutoffTreeThree4Check :
    tailEnvelope0132FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0132FailureFibreExactThree 4) 9706249 0 = true := by decide

theorem tailEnvelope0132FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      9706249 (tailEnvelope0132FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0132FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0132FailureCutoffTreeThree4Check

def tailEnvelope0132FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0132FailureCutoffTreeThree5Check :
    tailEnvelope0132FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0132FailureFibreExactThree 5) 9706249 0 = true := by decide

theorem tailEnvelope0132FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      9706249 (tailEnvelope0132FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0132FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0132FailureCutoffTreeThree5Check

def tailEnvelope0132FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0132FailureCutoffTreeThree6Check :
    tailEnvelope0132FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0132FailureFibreExactThree 6) 9706249 0 = true := by decide

theorem tailEnvelope0132FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      9706249 (tailEnvelope0132FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0132FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0132FailureCutoffTreeThree6Check

def tailEnvelope0132FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0132FailureCutoffTreeThree7Check :
    tailEnvelope0132FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0132FailureFibreExactThree 7) 9706249 0 = true := by decide

theorem tailEnvelope0132FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      9706249 (tailEnvelope0132FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0132FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0132FailureCutoffTreeThree7Check

def tailEnvelope0132FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0132FailureCutoffTreeThree8Check :
    tailEnvelope0132FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0132FailureFibreExactThree 8) 9706249 0 = true := by decide

theorem tailEnvelope0132FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      9706249 (tailEnvelope0132FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0132FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0132FailureCutoffTreeThree8Check

theorem tailEnvelope0132FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      9706249 (tailEnvelope0132FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0132FailureFibreCutoffThree0 residue
  · exact tailEnvelope0132FailureFibreCutoffThree1 residue
  · exact tailEnvelope0132FailureFibreCutoffThree2 residue
  · exact tailEnvelope0132FailureFibreCutoffThree3 residue
  · exact tailEnvelope0132FailureFibreCutoffThree4 residue
  · exact tailEnvelope0132FailureFibreCutoffThree5 residue
  · exact tailEnvelope0132FailureFibreCutoffThree6 residue
  · exact tailEnvelope0132FailureFibreCutoffThree7 residue
  · exact tailEnvelope0132FailureFibreCutoffThree8 residue

theorem tailEnvelope0132FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0132FailureFibreExactThree cell residue ≤ tailEnvelope0132FailureFibreMaxThree cell := by decide

theorem tailEnvelope0132FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0132CountsThree tailEnvelope0132FailureFibreMaxThree 34403 = true := by decide

theorem tailEnvelope0132FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0132CountsThree tailEnvelope0132FailureFibreMaxThree 34549 = true := by decide

theorem tailEnvelope0132FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 9657961 9706250
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9706249 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0132CountsOne) (fibre := tailEnvelope0132FailureFibreMaxOne) (bound := 34409) tailEnvelope0132FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0132CountsOne tailEnvelope0132FailureFibreMaxOne tailEnvelope0132FailureFibreExactOne
      (lower := 9657961) (upper := 9706249) (N := N) (bound := 34409)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0132FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0132FailureFibreCutoffOne
      tailEnvelope0132FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0132CountsThree) (fibre := tailEnvelope0132FailureFibreMaxThree) (bound := 34403) tailEnvelope0132FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0132CountsThree tailEnvelope0132FailureFibreMaxThree tailEnvelope0132FailureFibreExactThree
      (lower := 9657961) (upper := 9706249) (N := N) (bound := 34403)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0132FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0132FailureFibreCutoffThree
      tailEnvelope0132FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0132FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 9657961 9706250
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9706249 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0132CountsOne) (fibre := tailEnvelope0132FailureFibreMaxOne) (bound := 34555) tailEnvelope0132FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0132CountsOne tailEnvelope0132FailureFibreMaxOne tailEnvelope0132FailureFibreExactOne
      (lower := 9657961) (upper := 9706249) (N := N) (bound := 34555)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0132FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0132FailureFibreCutoffOne
      tailEnvelope0132FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0132CountsThree) (fibre := tailEnvelope0132FailureFibreMaxThree) (bound := 34549) tailEnvelope0132FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0132CountsThree tailEnvelope0132FailureFibreMaxThree tailEnvelope0132FailureFibreExactThree
      (lower := 9657961) (upper := 9706249) (N := N) (bound := 34549)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0132FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0132FailureFibreCutoffThree
      tailEnvelope0132FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0133FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![135, 139, 145, 145, 143, 144, 132, 132, 140, 137, 141, 139, 139, 134, 142, 144, 140, 134, 143, 143, 136, 138, 142, 142, 135, 138, 134, 146, 146, 136, 134, 141, 133, 136, 140, 144, 139, 141, 137, 134, 139, 139, 139, 141, 134, 140, 140, 137, 141], ![138, 139, 140, 134, 135, 133, 137, 142, 143, 133, 146, 139, 137, 145, 139, 142, 143, 141, 146, 150, 138, 137, 144, 136, 140, 135, 134, 141, 145, 130, 137, 133, 135, 145, 137, 145, 141, 143, 136, 144, 143, 144, 135, 144, 143, 143, 138, 143, 137], ![138, 142, 138, 136, 136, 138, 136, 143, 139, 139, 136, 138, 135, 135, 135, 143, 142, 144, 136, 139, 136, 145, 142, 133, 144, 147, 140, 135, 135, 137, 140, 135, 142, 143, 138, 140, 140, 133, 140, 140, 144, 142, 138, 129, 137, 141, 137, 138, 136], ![133, 134, 138, 136, 139, 140, 132, 136, 142, 139, 137, 136, 139, 146, 138, 139, 139, 142, 138, 140, 143, 149, 135, 143, 147, 138, 133, 137, 144, 138, 130, 143, 146, 140, 135, 130, 137, 143, 146, 137, 149, 137, 138, 145, 139, 137, 142, 134, 141], ![143, 140, 141, 135, 147, 141, 141, 140, 139, 134, 140, 143, 139, 143, 139, 137, 137, 136, 134, 140, 138, 136, 130, 133, 140, 140, 139, 142, 136, 141, 147, 142, 142, 139, 144, 140, 138, 144, 140, 136, 131, 137, 136, 137, 137, 139, 136, 136, 135], ![140, 145, 138, 140, 143, 137, 144, 137, 138, 140, 138, 141, 147, 140, 138, 135, 137, 144, 145, 128, 140, 141, 135, 141, 140, 143, 143, 137, 136, 143, 141, 130, 141, 149, 146, 132, 147, 141, 134, 133, 138, 138, 152, 136, 135, 139, 139, 134, 133], ![145, 145, 140, 137, 146, 135, 141, 145, 132, 140, 145, 137, 142, 143, 134, 134, 141, 142, 140, 138, 135, 140, 142, 142, 137, 139, 143, 140, 132, 137, 139, 145, 135, 140, 142, 143, 132, 136, 137, 137, 135, 141, 138, 147, 130, 134, 141, 139, 139], ![138, 139, 134, 147, 137, 147, 142, 137, 140, 139, 139, 137, 140, 135, 141, 139, 141, 138, 138, 128, 137, 139, 143, 144, 134, 139, 143, 137, 135, 143, 138, 141, 143, 134, 139, 144, 134, 139, 140, 142, 135, 136, 140, 136, 136, 133, 144, 146, 144], ![138, 135, 138, 144, 135, 144, 138, 128, 136, 139, 133, 139, 140, 135, 150, 139, 137, 133, 135, 137, 145, 139, 141, 140, 138, 133, 136, 144, 142, 135, 140, 142, 131, 134, 142, 143, 144, 141, 140, 143, 141, 137, 136, 146, 144, 141, 147, 140, 141]]

def tailEnvelope0133FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![145, 144, 133, 131, 133, 144, 139, 140, 144, 139, 144, 140, 141, 141, 144, 139, 139, 147, 139, 132, 142, 133, 137, 141, 134, 142, 150, 133, 134, 143, 141, 136, 142, 138, 137, 133, 140, 143, 141, 137, 139, 138, 145, 137, 136, 139, 136, 137, 145], ![137, 140, 137, 135, 144, 144, 142, 137, 137, 139, 135, 134, 139, 143, 137, 135, 137, 141, 135, 138, 145, 139, 135, 142, 143, 143, 137, 130, 138, 141, 144, 138, 135, 139, 139, 136, 141, 142, 141, 143, 141, 134, 146, 139, 133, 135, 143, 135, 142], ![136, 137, 141, 139, 141, 141, 140, 135, 140, 138, 138, 141, 136, 143, 136, 134, 139, 133, 141, 148, 133, 140, 146, 139, 139, 142, 136, 141, 144, 136, 142, 138, 136, 139, 138, 142, 139, 138, 143, 138, 130, 137, 148, 141, 134, 146, 133, 141, 138], ![132, 133, 146, 138, 138, 135, 138, 139, 134, 146, 141, 140, 142, 144, 135, 140, 144, 139, 140, 147, 137, 140, 145, 136, 138, 143, 144, 144, 139, 132, 142, 139, 136, 142, 136, 136, 140, 130, 138, 138, 135, 143, 144, 141, 137, 137, 144, 140, 136], ![135, 141, 142, 139, 135, 131, 140, 145, 136, 146, 143, 140, 133, 137, 136, 139, 138, 137, 146, 139, 136, 140, 144, 143, 143, 140, 141, 139, 144, 136, 135, 139, 132, 135, 139, 137, 137, 133, 137, 143, 143, 143, 140, 133, 142, 133, 141, 144, 144], ![141, 134, 136, 137, 143, 148, 141, 143, 138, 140, 132, 138, 134, 136, 143, 144, 142, 137, 136, 135, 141, 140, 136, 142, 145, 135, 141, 139, 137, 145, 140, 138, 147, 137, 140, 140, 136, 137, 140, 139, 144, 137, 132, 135, 137, 137, 143, 146, 141], ![139, 139, 141, 140, 141, 142, 138, 143, 146, 136, 137, 135, 139, 139, 143, 137, 139, 132, 137, 142, 148, 137, 144, 142, 142, 130, 136, 143, 139, 134, 134, 134, 142, 133, 136, 140, 137, 139, 141, 145, 143, 139, 136, 139, 146, 140, 143, 141, 134], ![144, 137, 132, 146, 139, 139, 144, 136, 141, 142, 145, 137, 146, 138, 138, 145, 133, 137, 139, 140, 142, 141, 131, 136, 135, 134, 140, 138, 137, 144, 135, 136, 139, 140, 144, 139, 145, 143, 137, 142, 144, 137, 139, 142, 143, 146, 135, 132, 137], ![138, 146, 137, 139, 141, 139, 141, 142, 147, 133, 143, 137, 140, 141, 132, 136, 143, 140, 140, 138, 139, 140, 137, 138, 138, 140, 136, 138, 139, 133, 138, 144, 142, 136, 138, 132, 138, 145, 136, 136, 142, 142, 138, 138, 140, 137, 143, 137, 136]]

def tailEnvelope0133FailureFibreMaxOne : Fin 9 → Nat :=
  ![146, 150, 147, 149, 147, 152, 147, 147, 150]

def tailEnvelope0133FailureFibreMaxThree : Fin 9 → Nat :=
  ![150, 146, 148, 147, 146, 148, 148, 146, 147]

theorem tailEnvelope0133FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      9754780 (tailEnvelope0133CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0133FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0133FailureCutoffTreeOne0Check :
    tailEnvelope0133FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0133FailureFibreExactOne 0) 9754780 0 = true := by decide

theorem tailEnvelope0133FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      9754780 (tailEnvelope0133FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0133FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0133FailureCutoffTreeOne0Check

def tailEnvelope0133FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0133FailureCutoffTreeOne1Check :
    tailEnvelope0133FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0133FailureFibreExactOne 1) 9754780 0 = true := by decide

theorem tailEnvelope0133FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      9754780 (tailEnvelope0133FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0133FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0133FailureCutoffTreeOne1Check

def tailEnvelope0133FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0133FailureCutoffTreeOne2Check :
    tailEnvelope0133FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0133FailureFibreExactOne 2) 9754780 0 = true := by decide

theorem tailEnvelope0133FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      9754780 (tailEnvelope0133FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0133FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0133FailureCutoffTreeOne2Check

def tailEnvelope0133FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0133FailureCutoffTreeOne3Check :
    tailEnvelope0133FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0133FailureFibreExactOne 3) 9754780 0 = true := by decide

theorem tailEnvelope0133FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      9754780 (tailEnvelope0133FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0133FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0133FailureCutoffTreeOne3Check

def tailEnvelope0133FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0133FailureCutoffTreeOne4Check :
    tailEnvelope0133FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0133FailureFibreExactOne 4) 9754780 0 = true := by decide

theorem tailEnvelope0133FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      9754780 (tailEnvelope0133FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0133FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0133FailureCutoffTreeOne4Check

def tailEnvelope0133FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0133FailureCutoffTreeOne5Check :
    tailEnvelope0133FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0133FailureFibreExactOne 5) 9754780 0 = true := by decide

theorem tailEnvelope0133FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      9754780 (tailEnvelope0133FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0133FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0133FailureCutoffTreeOne5Check

def tailEnvelope0133FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0133FailureCutoffTreeOne6Check :
    tailEnvelope0133FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0133FailureFibreExactOne 6) 9754780 0 = true := by decide

theorem tailEnvelope0133FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      9754780 (tailEnvelope0133FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0133FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0133FailureCutoffTreeOne6Check

def tailEnvelope0133FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0133FailureCutoffTreeOne7Check :
    tailEnvelope0133FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0133FailureFibreExactOne 7) 9754780 0 = true := by decide

theorem tailEnvelope0133FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      9754780 (tailEnvelope0133FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0133FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0133FailureCutoffTreeOne7Check

def tailEnvelope0133FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0133FailureCutoffTreeOne8Check :
    tailEnvelope0133FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0133FailureFibreExactOne 8) 9754780 0 = true := by decide

theorem tailEnvelope0133FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      9754780 (tailEnvelope0133FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0133FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0133FailureCutoffTreeOne8Check

theorem tailEnvelope0133FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      9754780 (tailEnvelope0133FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0133FailureFibreCutoffOne0 residue
  · exact tailEnvelope0133FailureFibreCutoffOne1 residue
  · exact tailEnvelope0133FailureFibreCutoffOne2 residue
  · exact tailEnvelope0133FailureFibreCutoffOne3 residue
  · exact tailEnvelope0133FailureFibreCutoffOne4 residue
  · exact tailEnvelope0133FailureFibreCutoffOne5 residue
  · exact tailEnvelope0133FailureFibreCutoffOne6 residue
  · exact tailEnvelope0133FailureFibreCutoffOne7 residue
  · exact tailEnvelope0133FailureFibreCutoffOne8 residue

theorem tailEnvelope0133FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0133FailureFibreExactOne cell residue ≤ tailEnvelope0133FailureFibreMaxOne cell := by decide

theorem tailEnvelope0133FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0133CountsOne tailEnvelope0133FailureFibreMaxOne 34578 = true := by decide

theorem tailEnvelope0133FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0133CountsOne tailEnvelope0133FailureFibreMaxOne 34724 = true := by decide

theorem tailEnvelope0133FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      9754780 (tailEnvelope0133CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0133FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0133FailureCutoffTreeThree0Check :
    tailEnvelope0133FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0133FailureFibreExactThree 0) 9754780 0 = true := by decide

theorem tailEnvelope0133FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      9754780 (tailEnvelope0133FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0133FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0133FailureCutoffTreeThree0Check

def tailEnvelope0133FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0133FailureCutoffTreeThree1Check :
    tailEnvelope0133FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0133FailureFibreExactThree 1) 9754780 0 = true := by decide

theorem tailEnvelope0133FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      9754780 (tailEnvelope0133FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0133FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0133FailureCutoffTreeThree1Check

def tailEnvelope0133FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0133FailureCutoffTreeThree2Check :
    tailEnvelope0133FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0133FailureFibreExactThree 2) 9754780 0 = true := by decide

theorem tailEnvelope0133FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      9754780 (tailEnvelope0133FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0133FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0133FailureCutoffTreeThree2Check

def tailEnvelope0133FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0133FailureCutoffTreeThree3Check :
    tailEnvelope0133FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0133FailureFibreExactThree 3) 9754780 0 = true := by decide

theorem tailEnvelope0133FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      9754780 (tailEnvelope0133FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0133FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0133FailureCutoffTreeThree3Check

def tailEnvelope0133FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0133FailureCutoffTreeThree4Check :
    tailEnvelope0133FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0133FailureFibreExactThree 4) 9754780 0 = true := by decide

theorem tailEnvelope0133FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      9754780 (tailEnvelope0133FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0133FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0133FailureCutoffTreeThree4Check

def tailEnvelope0133FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0133FailureCutoffTreeThree5Check :
    tailEnvelope0133FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0133FailureFibreExactThree 5) 9754780 0 = true := by decide

theorem tailEnvelope0133FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      9754780 (tailEnvelope0133FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0133FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0133FailureCutoffTreeThree5Check

def tailEnvelope0133FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0133FailureCutoffTreeThree6Check :
    tailEnvelope0133FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0133FailureFibreExactThree 6) 9754780 0 = true := by decide

theorem tailEnvelope0133FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      9754780 (tailEnvelope0133FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0133FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0133FailureCutoffTreeThree6Check

def tailEnvelope0133FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0133FailureCutoffTreeThree7Check :
    tailEnvelope0133FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0133FailureFibreExactThree 7) 9754780 0 = true := by decide

theorem tailEnvelope0133FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      9754780 (tailEnvelope0133FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0133FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0133FailureCutoffTreeThree7Check

def tailEnvelope0133FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0133FailureCutoffTreeThree8Check :
    tailEnvelope0133FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0133FailureFibreExactThree 8) 9754780 0 = true := by decide

theorem tailEnvelope0133FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      9754780 (tailEnvelope0133FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0133FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0133FailureCutoffTreeThree8Check

theorem tailEnvelope0133FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      9754780 (tailEnvelope0133FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0133FailureFibreCutoffThree0 residue
  · exact tailEnvelope0133FailureFibreCutoffThree1 residue
  · exact tailEnvelope0133FailureFibreCutoffThree2 residue
  · exact tailEnvelope0133FailureFibreCutoffThree3 residue
  · exact tailEnvelope0133FailureFibreCutoffThree4 residue
  · exact tailEnvelope0133FailureFibreCutoffThree5 residue
  · exact tailEnvelope0133FailureFibreCutoffThree6 residue
  · exact tailEnvelope0133FailureFibreCutoffThree7 residue
  · exact tailEnvelope0133FailureFibreCutoffThree8 residue

theorem tailEnvelope0133FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0133FailureFibreExactThree cell residue ≤ tailEnvelope0133FailureFibreMaxThree cell := by decide

theorem tailEnvelope0133FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0133CountsThree tailEnvelope0133FailureFibreMaxThree 34569 = true := by decide

theorem tailEnvelope0133FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0133CountsThree tailEnvelope0133FailureFibreMaxThree 34715 = true := by decide

theorem tailEnvelope0133FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 9706250 9754781
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9754780 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0133CountsOne) (fibre := tailEnvelope0133FailureFibreMaxOne) (bound := 34578) tailEnvelope0133FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0133CountsOne tailEnvelope0133FailureFibreMaxOne tailEnvelope0133FailureFibreExactOne
      (lower := 9706250) (upper := 9754780) (N := N) (bound := 34578)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0133FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0133FailureFibreCutoffOne
      tailEnvelope0133FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0133CountsThree) (fibre := tailEnvelope0133FailureFibreMaxThree) (bound := 34569) tailEnvelope0133FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0133CountsThree tailEnvelope0133FailureFibreMaxThree tailEnvelope0133FailureFibreExactThree
      (lower := 9706250) (upper := 9754780) (N := N) (bound := 34569)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0133FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0133FailureFibreCutoffThree
      tailEnvelope0133FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0133FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 9706250 9754781
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9754780 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0133CountsOne) (fibre := tailEnvelope0133FailureFibreMaxOne) (bound := 34724) tailEnvelope0133FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0133CountsOne tailEnvelope0133FailureFibreMaxOne tailEnvelope0133FailureFibreExactOne
      (lower := 9706250) (upper := 9754780) (N := N) (bound := 34724)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0133FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0133FailureFibreCutoffOne
      tailEnvelope0133FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0133CountsThree) (fibre := tailEnvelope0133FailureFibreMaxThree) (bound := 34715) tailEnvelope0133FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0133CountsThree tailEnvelope0133FailureFibreMaxThree tailEnvelope0133FailureFibreExactThree
      (lower := 9706250) (upper := 9754780) (N := N) (bound := 34715)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0133FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0133FailureFibreCutoffThree
      tailEnvelope0133FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0134FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![137, 140, 146, 145, 143, 144, 132, 133, 140, 138, 141, 139, 139, 136, 142, 145, 142, 136, 144, 144, 136, 138, 142, 144, 136, 139, 134, 146, 146, 136, 134, 142, 134, 137, 140, 145, 139, 141, 137, 135, 139, 141, 142, 141, 134, 141, 140, 138, 145], ![138, 139, 140, 136, 136, 134, 137, 144, 144, 133, 147, 139, 137, 147, 139, 143, 143, 141, 146, 150, 138, 138, 144, 138, 142, 136, 135, 141, 145, 134, 138, 134, 136, 145, 137, 146, 141, 143, 137, 145, 145, 145, 137, 144, 143, 143, 139, 143, 138], ![139, 143, 138, 137, 138, 139, 136, 143, 139, 139, 138, 139, 135, 136, 137, 143, 145, 146, 136, 140, 138, 145, 144, 134, 144, 147, 140, 136, 136, 138, 141, 136, 142, 144, 139, 141, 141, 134, 140, 140, 144, 142, 138, 129, 138, 141, 138, 139, 137], ![133, 135, 138, 137, 140, 140, 133, 137, 143, 141, 138, 137, 141, 146, 138, 139, 139, 143, 140, 141, 144, 149, 136, 143, 148, 138, 134, 137, 145, 138, 130, 143, 146, 140, 136, 130, 138, 143, 147, 137, 150, 137, 139, 145, 140, 137, 144, 135, 142], ![145, 142, 142, 135, 147, 141, 141, 142, 140, 134, 141, 143, 139, 145, 139, 138, 138, 136, 135, 140, 138, 136, 130, 133, 141, 140, 140, 145, 136, 143, 147, 142, 143, 141, 145, 140, 139, 144, 140, 136, 133, 137, 138, 137, 137, 140, 137, 137, 137], ![142, 145, 139, 141, 144, 138, 145, 137, 139, 140, 138, 141, 147, 140, 140, 135, 139, 145, 146, 128, 142, 141, 137, 141, 141, 143, 143, 137, 136, 143, 141, 130, 142, 150, 147, 132, 148, 141, 136, 135, 139, 140, 152, 136, 135, 139, 141, 134, 133], ![145, 147, 140, 137, 147, 135, 142, 145, 133, 140, 145, 138, 143, 144, 135, 134, 141, 142, 140, 138, 136, 140, 143, 143, 137, 140, 143, 140, 134, 140, 141, 145, 135, 140, 142, 143, 133, 138, 137, 138, 135, 142, 138, 148, 133, 136, 142, 140, 139], ![139, 139, 136, 147, 139, 147, 142, 137, 141, 139, 140, 137, 142, 136, 141, 139, 142, 138, 140, 131, 139, 141, 143, 144, 134, 139, 144, 138, 136, 145, 138, 143, 143, 134, 140, 145, 135, 141, 140, 142, 135, 136, 140, 137, 136, 134, 144, 146, 144], ![139, 136, 140, 145, 135, 144, 138, 128, 137, 141, 134, 141, 142, 135, 151, 139, 137, 134, 138, 138, 145, 139, 141, 140, 139, 135, 137, 146, 143, 135, 142, 142, 131, 135, 142, 144, 144, 141, 140, 143, 141, 138, 137, 147, 145, 141, 149, 140, 141]]

def tailEnvelope0134FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![145, 144, 136, 133, 133, 145, 139, 140, 145, 140, 146, 142, 141, 142, 144, 139, 140, 147, 139, 133, 142, 134, 137, 141, 135, 143, 150, 135, 134, 144, 141, 136, 143, 138, 137, 135, 140, 145, 142, 138, 140, 139, 146, 140, 138, 142, 137, 137, 145], ![137, 142, 137, 136, 144, 144, 142, 137, 137, 140, 136, 134, 139, 143, 137, 136, 138, 143, 137, 139, 145, 139, 136, 142, 144, 144, 139, 132, 139, 141, 144, 138, 137, 141, 142, 137, 142, 142, 141, 144, 141, 135, 147, 139, 134, 135, 143, 135, 143], ![136, 138, 141, 139, 142, 141, 141, 137, 141, 140, 139, 141, 136, 145, 136, 134, 139, 134, 142, 148, 133, 140, 146, 141, 140, 144, 137, 141, 145, 136, 142, 139, 137, 139, 139, 143, 139, 139, 144, 139, 131, 138, 150, 141, 134, 146, 133, 142, 140], ![136, 133, 146, 138, 138, 136, 138, 141, 135, 146, 141, 140, 142, 146, 137, 142, 145, 139, 140, 148, 137, 142, 146, 136, 139, 143, 144, 144, 139, 132, 144, 139, 138, 142, 136, 136, 140, 130, 139, 138, 136, 143, 144, 143, 137, 138, 146, 141, 137], ![135, 141, 142, 139, 137, 134, 142, 146, 136, 146, 143, 141, 134, 137, 137, 139, 138, 137, 146, 139, 136, 141, 145, 144, 143, 140, 141, 139, 145, 136, 137, 140, 133, 135, 139, 137, 138, 134, 139, 144, 144, 143, 140, 134, 143, 134, 142, 146, 144], ![141, 134, 137, 137, 143, 148, 142, 143, 138, 140, 133, 140, 137, 136, 143, 144, 142, 140, 137, 135, 142, 140, 137, 142, 146, 137, 142, 139, 139, 145, 141, 139, 147, 137, 141, 141, 137, 138, 140, 139, 144, 138, 133, 137, 139, 138, 144, 147, 141], ![140, 139, 142, 141, 141, 144, 139, 143, 146, 136, 138, 135, 139, 139, 143, 137, 140, 132, 138, 143, 148, 139, 145, 142, 143, 130, 137, 144, 139, 134, 135, 134, 143, 135, 138, 142, 139, 140, 143, 145, 143, 140, 136, 140, 147, 140, 143, 141, 134], ![145, 137, 132, 146, 139, 140, 145, 136, 142, 142, 145, 138, 147, 138, 139, 146, 134, 138, 139, 140, 142, 141, 132, 137, 136, 135, 141, 139, 140, 145, 135, 137, 139, 141, 146, 139, 145, 143, 137, 143, 144, 138, 140, 143, 144, 147, 136, 133, 137], ![138, 147, 137, 140, 142, 140, 141, 143, 147, 134, 143, 137, 141, 141, 132, 138, 143, 141, 141, 139, 141, 141, 137, 139, 138, 140, 136, 138, 139, 134, 138, 145, 142, 137, 139, 134, 138, 146, 137, 137, 142, 143, 138, 138, 140, 138, 143, 138, 137]]

def tailEnvelope0134FailureFibreMaxOne : Fin 9 → Nat :=
  ![146, 150, 147, 150, 147, 152, 148, 147, 151]

def tailEnvelope0134FailureFibreMaxThree : Fin 9 → Nat :=
  ![150, 147, 150, 148, 146, 148, 148, 147, 147]

theorem tailEnvelope0134FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      9803553 (tailEnvelope0134CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0134FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0134FailureCutoffTreeOne0Check :
    tailEnvelope0134FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0134FailureFibreExactOne 0) 9803553 0 = true := by decide

theorem tailEnvelope0134FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      9803553 (tailEnvelope0134FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0134FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0134FailureCutoffTreeOne0Check

def tailEnvelope0134FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0134FailureCutoffTreeOne1Check :
    tailEnvelope0134FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0134FailureFibreExactOne 1) 9803553 0 = true := by decide

theorem tailEnvelope0134FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      9803553 (tailEnvelope0134FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0134FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0134FailureCutoffTreeOne1Check

def tailEnvelope0134FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0134FailureCutoffTreeOne2Check :
    tailEnvelope0134FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0134FailureFibreExactOne 2) 9803553 0 = true := by decide

theorem tailEnvelope0134FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      9803553 (tailEnvelope0134FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0134FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0134FailureCutoffTreeOne2Check

def tailEnvelope0134FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0134FailureCutoffTreeOne3Check :
    tailEnvelope0134FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0134FailureFibreExactOne 3) 9803553 0 = true := by decide

theorem tailEnvelope0134FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      9803553 (tailEnvelope0134FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0134FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0134FailureCutoffTreeOne3Check

def tailEnvelope0134FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0134FailureCutoffTreeOne4Check :
    tailEnvelope0134FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0134FailureFibreExactOne 4) 9803553 0 = true := by decide

theorem tailEnvelope0134FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      9803553 (tailEnvelope0134FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0134FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0134FailureCutoffTreeOne4Check

def tailEnvelope0134FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0134FailureCutoffTreeOne5Check :
    tailEnvelope0134FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0134FailureFibreExactOne 5) 9803553 0 = true := by decide

theorem tailEnvelope0134FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      9803553 (tailEnvelope0134FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0134FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0134FailureCutoffTreeOne5Check

def tailEnvelope0134FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0134FailureCutoffTreeOne6Check :
    tailEnvelope0134FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0134FailureFibreExactOne 6) 9803553 0 = true := by decide

theorem tailEnvelope0134FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      9803553 (tailEnvelope0134FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0134FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0134FailureCutoffTreeOne6Check

def tailEnvelope0134FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0134FailureCutoffTreeOne7Check :
    tailEnvelope0134FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0134FailureFibreExactOne 7) 9803553 0 = true := by decide

theorem tailEnvelope0134FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      9803553 (tailEnvelope0134FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0134FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0134FailureCutoffTreeOne7Check

def tailEnvelope0134FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0134FailureCutoffTreeOne8Check :
    tailEnvelope0134FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0134FailureFibreExactOne 8) 9803553 0 = true := by decide

theorem tailEnvelope0134FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      9803553 (tailEnvelope0134FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0134FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0134FailureCutoffTreeOne8Check

theorem tailEnvelope0134FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      9803553 (tailEnvelope0134FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0134FailureFibreCutoffOne0 residue
  · exact tailEnvelope0134FailureFibreCutoffOne1 residue
  · exact tailEnvelope0134FailureFibreCutoffOne2 residue
  · exact tailEnvelope0134FailureFibreCutoffOne3 residue
  · exact tailEnvelope0134FailureFibreCutoffOne4 residue
  · exact tailEnvelope0134FailureFibreCutoffOne5 residue
  · exact tailEnvelope0134FailureFibreCutoffOne6 residue
  · exact tailEnvelope0134FailureFibreCutoffOne7 residue
  · exact tailEnvelope0134FailureFibreCutoffOne8 residue

theorem tailEnvelope0134FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0134FailureFibreExactOne cell residue ≤ tailEnvelope0134FailureFibreMaxOne cell := by decide

theorem tailEnvelope0134FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0134CountsOne tailEnvelope0134FailureFibreMaxOne 34746 = true := by decide

theorem tailEnvelope0134FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0134CountsOne tailEnvelope0134FailureFibreMaxOne 34893 = true := by decide

theorem tailEnvelope0134FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      9803553 (tailEnvelope0134CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0134FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0134FailureCutoffTreeThree0Check :
    tailEnvelope0134FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0134FailureFibreExactThree 0) 9803553 0 = true := by decide

theorem tailEnvelope0134FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      9803553 (tailEnvelope0134FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0134FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0134FailureCutoffTreeThree0Check

def tailEnvelope0134FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0134FailureCutoffTreeThree1Check :
    tailEnvelope0134FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0134FailureFibreExactThree 1) 9803553 0 = true := by decide

theorem tailEnvelope0134FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      9803553 (tailEnvelope0134FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0134FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0134FailureCutoffTreeThree1Check

def tailEnvelope0134FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0134FailureCutoffTreeThree2Check :
    tailEnvelope0134FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0134FailureFibreExactThree 2) 9803553 0 = true := by decide

theorem tailEnvelope0134FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      9803553 (tailEnvelope0134FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0134FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0134FailureCutoffTreeThree2Check

def tailEnvelope0134FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0134FailureCutoffTreeThree3Check :
    tailEnvelope0134FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0134FailureFibreExactThree 3) 9803553 0 = true := by decide

theorem tailEnvelope0134FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      9803553 (tailEnvelope0134FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0134FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0134FailureCutoffTreeThree3Check

def tailEnvelope0134FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0134FailureCutoffTreeThree4Check :
    tailEnvelope0134FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0134FailureFibreExactThree 4) 9803553 0 = true := by decide

theorem tailEnvelope0134FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      9803553 (tailEnvelope0134FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0134FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0134FailureCutoffTreeThree4Check

def tailEnvelope0134FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0134FailureCutoffTreeThree5Check :
    tailEnvelope0134FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0134FailureFibreExactThree 5) 9803553 0 = true := by decide

theorem tailEnvelope0134FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      9803553 (tailEnvelope0134FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0134FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0134FailureCutoffTreeThree5Check

def tailEnvelope0134FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0134FailureCutoffTreeThree6Check :
    tailEnvelope0134FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0134FailureFibreExactThree 6) 9803553 0 = true := by decide

theorem tailEnvelope0134FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      9803553 (tailEnvelope0134FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0134FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0134FailureCutoffTreeThree6Check

def tailEnvelope0134FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0134FailureCutoffTreeThree7Check :
    tailEnvelope0134FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0134FailureFibreExactThree 7) 9803553 0 = true := by decide

theorem tailEnvelope0134FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      9803553 (tailEnvelope0134FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0134FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0134FailureCutoffTreeThree7Check

def tailEnvelope0134FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0134FailureCutoffTreeThree8Check :
    tailEnvelope0134FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0134FailureFibreExactThree 8) 9803553 0 = true := by decide

theorem tailEnvelope0134FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      9803553 (tailEnvelope0134FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0134FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0134FailureCutoffTreeThree8Check

theorem tailEnvelope0134FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      9803553 (tailEnvelope0134FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0134FailureFibreCutoffThree0 residue
  · exact tailEnvelope0134FailureFibreCutoffThree1 residue
  · exact tailEnvelope0134FailureFibreCutoffThree2 residue
  · exact tailEnvelope0134FailureFibreCutoffThree3 residue
  · exact tailEnvelope0134FailureFibreCutoffThree4 residue
  · exact tailEnvelope0134FailureFibreCutoffThree5 residue
  · exact tailEnvelope0134FailureFibreCutoffThree6 residue
  · exact tailEnvelope0134FailureFibreCutoffThree7 residue
  · exact tailEnvelope0134FailureFibreCutoffThree8 residue

theorem tailEnvelope0134FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0134FailureFibreExactThree cell residue ≤ tailEnvelope0134FailureFibreMaxThree cell := by decide

theorem tailEnvelope0134FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0134CountsThree tailEnvelope0134FailureFibreMaxThree 34744 = true := by decide

theorem tailEnvelope0134FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0134CountsThree tailEnvelope0134FailureFibreMaxThree 34890 = true := by decide

theorem tailEnvelope0134FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 9754781 9803554
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9803553 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0134CountsOne) (fibre := tailEnvelope0134FailureFibreMaxOne) (bound := 34746) tailEnvelope0134FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0134CountsOne tailEnvelope0134FailureFibreMaxOne tailEnvelope0134FailureFibreExactOne
      (lower := 9754781) (upper := 9803553) (N := N) (bound := 34746)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0134FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0134FailureFibreCutoffOne
      tailEnvelope0134FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0134CountsThree) (fibre := tailEnvelope0134FailureFibreMaxThree) (bound := 34744) tailEnvelope0134FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0134CountsThree tailEnvelope0134FailureFibreMaxThree tailEnvelope0134FailureFibreExactThree
      (lower := 9754781) (upper := 9803553) (N := N) (bound := 34744)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0134FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0134FailureFibreCutoffThree
      tailEnvelope0134FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0134FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 9754781 9803554
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9803553 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0134CountsOne) (fibre := tailEnvelope0134FailureFibreMaxOne) (bound := 34893) tailEnvelope0134FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0134CountsOne tailEnvelope0134FailureFibreMaxOne tailEnvelope0134FailureFibreExactOne
      (lower := 9754781) (upper := 9803553) (N := N) (bound := 34893)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0134FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0134FailureFibreCutoffOne
      tailEnvelope0134FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0134CountsThree) (fibre := tailEnvelope0134FailureFibreMaxThree) (bound := 34890) tailEnvelope0134FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0134CountsThree tailEnvelope0134FailureFibreMaxThree tailEnvelope0134FailureFibreExactThree
      (lower := 9754781) (upper := 9803553) (N := N) (bound := 34890)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0134FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0134FailureFibreCutoffThree
      tailEnvelope0134FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0135FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![138, 141, 146, 145, 143, 145, 133, 134, 141, 138, 142, 139, 139, 137, 144, 148, 142, 137, 144, 144, 136, 138, 143, 144, 137, 139, 134, 146, 146, 136, 135, 143, 135, 139, 142, 146, 141, 141, 139, 135, 140, 141, 143, 141, 136, 141, 141, 140, 147], ![138, 139, 140, 138, 138, 136, 139, 144, 146, 133, 147, 139, 138, 147, 140, 143, 143, 143, 146, 151, 138, 139, 146, 140, 143, 137, 135, 141, 146, 134, 139, 134, 136, 145, 137, 146, 142, 143, 139, 146, 146, 146, 137, 144, 144, 144, 140, 144, 138], ![140, 143, 139, 137, 141, 139, 136, 143, 139, 139, 139, 139, 136, 137, 137, 144, 145, 147, 137, 140, 139, 145, 144, 134, 144, 147, 141, 138, 137, 139, 142, 138, 143, 144, 140, 142, 142, 135, 140, 140, 144, 142, 140, 131, 139, 143, 139, 140, 137], ![134, 135, 140, 137, 141, 140, 134, 137, 145, 141, 139, 137, 141, 146, 138, 140, 140, 143, 140, 141, 145, 150, 137, 144, 149, 138, 135, 138, 145, 138, 130, 143, 147, 141, 139, 131, 139, 145, 147, 138, 152, 138, 139, 146, 140, 137, 145, 135, 142], ![146, 142, 142, 135, 147, 142, 142, 142, 142, 135, 141, 144, 140, 146, 141, 139, 139, 137, 135, 140, 138, 138, 130, 134, 141, 141, 141, 146, 137, 144, 148, 143, 144, 142, 145, 140, 140, 144, 140, 137, 134, 138, 138, 138, 137, 140, 138, 138, 138], ![143, 145, 142, 141, 146, 139, 145, 140, 141, 140, 138, 141, 148, 141, 140, 136, 139, 145, 148, 131, 143, 142, 137, 141, 141, 143, 143, 137, 136, 144, 141, 131, 142, 150, 147, 133, 148, 143, 136, 136, 140, 141, 152, 136, 135, 140, 141, 136, 134], ![145, 148, 141, 138, 147, 136, 142, 145, 134, 142, 147, 139, 144, 145, 135, 135, 141, 144, 140, 139, 137, 141, 143, 143, 137, 141, 144, 141, 135, 142, 142, 146, 136, 140, 142, 144, 133, 139, 140, 138, 135, 142, 139, 149, 135, 137, 143, 140, 139], ![140, 141, 137, 149, 139, 147, 143, 137, 141, 140, 141, 137, 142, 136, 141, 139, 144, 139, 141, 134, 140, 142, 143, 144, 134, 142, 144, 139, 136, 146, 138, 143, 143, 136, 141, 147, 136, 141, 140, 143, 135, 138, 141, 137, 137, 134, 144, 146, 145], ![141, 137, 140, 146, 135, 144, 138, 129, 138, 143, 135, 141, 142, 136, 153, 139, 138, 135, 139, 138, 145, 139, 141, 142, 141, 136, 139, 146, 143, 136, 142, 144, 131, 135, 143, 144, 144, 141, 140, 143, 143, 139, 139, 148, 146, 141, 149, 140, 142]]

def tailEnvelope0135FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![146, 145, 136, 134, 134, 145, 140, 141, 146, 142, 146, 143, 142, 142, 144, 139, 140, 148, 140, 134, 143, 134, 137, 142, 136, 144, 151, 135, 135, 144, 141, 136, 143, 141, 138, 135, 141, 145, 143, 140, 141, 141, 147, 140, 139, 142, 137, 137, 145], ![140, 144, 138, 136, 144, 144, 142, 138, 139, 140, 137, 135, 139, 143, 139, 136, 139, 143, 139, 139, 147, 139, 136, 142, 145, 144, 140, 132, 140, 141, 145, 139, 139, 143, 143, 137, 142, 142, 141, 144, 142, 135, 148, 139, 134, 135, 145, 136, 145], ![137, 140, 142, 139, 143, 142, 142, 140, 142, 140, 139, 142, 136, 145, 137, 134, 141, 135, 142, 148, 133, 141, 147, 142, 142, 144, 137, 141, 145, 136, 144, 140, 139, 140, 139, 143, 139, 140, 148, 142, 132, 139, 150, 141, 134, 146, 134, 142, 140], ![136, 134, 146, 138, 139, 136, 139, 141, 136, 147, 141, 140, 143, 147, 139, 142, 145, 139, 140, 148, 138, 142, 148, 137, 139, 143, 144, 144, 141, 134, 146, 140, 138, 142, 136, 137, 142, 134, 139, 139, 136, 143, 144, 143, 137, 139, 147, 143, 138], ![135, 141, 143, 140, 138, 135, 143, 146, 136, 146, 144, 142, 136, 138, 137, 139, 138, 137, 149, 141, 138, 145, 146, 144, 145, 141, 141, 140, 145, 137, 137, 140, 133, 136, 139, 139, 139, 137, 140, 144, 144, 143, 140, 135, 143, 134, 142, 146, 144], ![141, 135, 138, 138, 143, 150, 142, 143, 139, 141, 135, 142, 138, 137, 144, 144, 142, 141, 137, 136, 142, 140, 137, 143, 146, 138, 143, 141, 140, 146, 141, 139, 148, 138, 141, 142, 137, 138, 140, 139, 145, 139, 133, 139, 139, 140, 144, 147, 141], ![141, 140, 143, 142, 141, 144, 139, 144, 146, 137, 138, 135, 139, 139, 143, 138, 141, 134, 139, 144, 149, 139, 145, 143, 143, 131, 138, 144, 140, 135, 135, 136, 143, 135, 139, 144, 140, 140, 143, 146, 144, 143, 137, 140, 147, 140, 143, 142, 135], ![146, 139, 133, 146, 139, 140, 145, 138, 143, 143, 146, 139, 147, 140, 139, 147, 137, 138, 139, 140, 142, 142, 134, 139, 136, 136, 141, 140, 141, 146, 136, 138, 140, 141, 146, 139, 145, 143, 138, 144, 145, 139, 140, 143, 145, 147, 137, 133, 139], ![138, 148, 138, 143, 142, 141, 142, 143, 147, 136, 143, 138, 141, 142, 133, 139, 144, 141, 142, 141, 142, 143, 138, 139, 138, 141, 136, 141, 140, 135, 139, 145, 143, 138, 140, 134, 139, 146, 137, 137, 142, 143, 138, 138, 141, 138, 144, 138, 138]]

def tailEnvelope0135FailureFibreMaxOne : Fin 9 → Nat :=
  ![148, 151, 147, 152, 148, 152, 149, 149, 153]

def tailEnvelope0135FailureFibreMaxThree : Fin 9 → Nat :=
  ![151, 148, 150, 148, 149, 150, 149, 147, 148]

theorem tailEnvelope0135FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      9852570 (tailEnvelope0135CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0135FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0135FailureCutoffTreeOne0Check :
    tailEnvelope0135FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0135FailureFibreExactOne 0) 9852570 0 = true := by decide

theorem tailEnvelope0135FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      9852570 (tailEnvelope0135FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0135FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0135FailureCutoffTreeOne0Check

def tailEnvelope0135FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0135FailureCutoffTreeOne1Check :
    tailEnvelope0135FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0135FailureFibreExactOne 1) 9852570 0 = true := by decide

theorem tailEnvelope0135FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      9852570 (tailEnvelope0135FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0135FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0135FailureCutoffTreeOne1Check

def tailEnvelope0135FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0135FailureCutoffTreeOne2Check :
    tailEnvelope0135FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0135FailureFibreExactOne 2) 9852570 0 = true := by decide

theorem tailEnvelope0135FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      9852570 (tailEnvelope0135FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0135FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0135FailureCutoffTreeOne2Check

def tailEnvelope0135FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0135FailureCutoffTreeOne3Check :
    tailEnvelope0135FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0135FailureFibreExactOne 3) 9852570 0 = true := by decide

theorem tailEnvelope0135FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      9852570 (tailEnvelope0135FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0135FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0135FailureCutoffTreeOne3Check

def tailEnvelope0135FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0135FailureCutoffTreeOne4Check :
    tailEnvelope0135FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0135FailureFibreExactOne 4) 9852570 0 = true := by decide

theorem tailEnvelope0135FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      9852570 (tailEnvelope0135FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0135FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0135FailureCutoffTreeOne4Check

def tailEnvelope0135FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0135FailureCutoffTreeOne5Check :
    tailEnvelope0135FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0135FailureFibreExactOne 5) 9852570 0 = true := by decide

theorem tailEnvelope0135FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      9852570 (tailEnvelope0135FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0135FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0135FailureCutoffTreeOne5Check

def tailEnvelope0135FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0135FailureCutoffTreeOne6Check :
    tailEnvelope0135FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0135FailureFibreExactOne 6) 9852570 0 = true := by decide

theorem tailEnvelope0135FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      9852570 (tailEnvelope0135FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0135FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0135FailureCutoffTreeOne6Check

def tailEnvelope0135FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0135FailureCutoffTreeOne7Check :
    tailEnvelope0135FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0135FailureFibreExactOne 7) 9852570 0 = true := by decide

theorem tailEnvelope0135FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      9852570 (tailEnvelope0135FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0135FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0135FailureCutoffTreeOne7Check

def tailEnvelope0135FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0135FailureCutoffTreeOne8Check :
    tailEnvelope0135FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0135FailureFibreExactOne 8) 9852570 0 = true := by decide

theorem tailEnvelope0135FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      9852570 (tailEnvelope0135FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0135FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0135FailureCutoffTreeOne8Check

theorem tailEnvelope0135FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      9852570 (tailEnvelope0135FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0135FailureFibreCutoffOne0 residue
  · exact tailEnvelope0135FailureFibreCutoffOne1 residue
  · exact tailEnvelope0135FailureFibreCutoffOne2 residue
  · exact tailEnvelope0135FailureFibreCutoffOne3 residue
  · exact tailEnvelope0135FailureFibreCutoffOne4 residue
  · exact tailEnvelope0135FailureFibreCutoffOne5 residue
  · exact tailEnvelope0135FailureFibreCutoffOne6 residue
  · exact tailEnvelope0135FailureFibreCutoffOne7 residue
  · exact tailEnvelope0135FailureFibreCutoffOne8 residue

theorem tailEnvelope0135FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0135FailureFibreExactOne cell residue ≤ tailEnvelope0135FailureFibreMaxOne cell := by decide

theorem tailEnvelope0135FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0135CountsOne tailEnvelope0135FailureFibreMaxOne 34928 = true := by decide

theorem tailEnvelope0135FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0135CountsOne tailEnvelope0135FailureFibreMaxOne 35075 = true := by decide

theorem tailEnvelope0135FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      9852570 (tailEnvelope0135CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0135FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0135FailureCutoffTreeThree0Check :
    tailEnvelope0135FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0135FailureFibreExactThree 0) 9852570 0 = true := by decide

theorem tailEnvelope0135FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      9852570 (tailEnvelope0135FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0135FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0135FailureCutoffTreeThree0Check

def tailEnvelope0135FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0135FailureCutoffTreeThree1Check :
    tailEnvelope0135FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0135FailureFibreExactThree 1) 9852570 0 = true := by decide

theorem tailEnvelope0135FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      9852570 (tailEnvelope0135FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0135FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0135FailureCutoffTreeThree1Check

def tailEnvelope0135FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0135FailureCutoffTreeThree2Check :
    tailEnvelope0135FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0135FailureFibreExactThree 2) 9852570 0 = true := by decide

theorem tailEnvelope0135FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      9852570 (tailEnvelope0135FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0135FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0135FailureCutoffTreeThree2Check

def tailEnvelope0135FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0135FailureCutoffTreeThree3Check :
    tailEnvelope0135FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0135FailureFibreExactThree 3) 9852570 0 = true := by decide

theorem tailEnvelope0135FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      9852570 (tailEnvelope0135FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0135FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0135FailureCutoffTreeThree3Check

def tailEnvelope0135FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0135FailureCutoffTreeThree4Check :
    tailEnvelope0135FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0135FailureFibreExactThree 4) 9852570 0 = true := by decide

theorem tailEnvelope0135FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      9852570 (tailEnvelope0135FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0135FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0135FailureCutoffTreeThree4Check

def tailEnvelope0135FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0135FailureCutoffTreeThree5Check :
    tailEnvelope0135FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0135FailureFibreExactThree 5) 9852570 0 = true := by decide

theorem tailEnvelope0135FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      9852570 (tailEnvelope0135FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0135FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0135FailureCutoffTreeThree5Check

def tailEnvelope0135FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0135FailureCutoffTreeThree6Check :
    tailEnvelope0135FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0135FailureFibreExactThree 6) 9852570 0 = true := by decide

theorem tailEnvelope0135FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      9852570 (tailEnvelope0135FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0135FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0135FailureCutoffTreeThree6Check

def tailEnvelope0135FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0135FailureCutoffTreeThree7Check :
    tailEnvelope0135FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0135FailureFibreExactThree 7) 9852570 0 = true := by decide

theorem tailEnvelope0135FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      9852570 (tailEnvelope0135FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0135FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0135FailureCutoffTreeThree7Check

def tailEnvelope0135FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0135FailureCutoffTreeThree8Check :
    tailEnvelope0135FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0135FailureFibreExactThree 8) 9852570 0 = true := by decide

theorem tailEnvelope0135FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      9852570 (tailEnvelope0135FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0135FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0135FailureCutoffTreeThree8Check

theorem tailEnvelope0135FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      9852570 (tailEnvelope0135FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0135FailureFibreCutoffThree0 residue
  · exact tailEnvelope0135FailureFibreCutoffThree1 residue
  · exact tailEnvelope0135FailureFibreCutoffThree2 residue
  · exact tailEnvelope0135FailureFibreCutoffThree3 residue
  · exact tailEnvelope0135FailureFibreCutoffThree4 residue
  · exact tailEnvelope0135FailureFibreCutoffThree5 residue
  · exact tailEnvelope0135FailureFibreCutoffThree6 residue
  · exact tailEnvelope0135FailureFibreCutoffThree7 residue
  · exact tailEnvelope0135FailureFibreCutoffThree8 residue

theorem tailEnvelope0135FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0135FailureFibreExactThree cell residue ≤ tailEnvelope0135FailureFibreMaxThree cell := by decide

theorem tailEnvelope0135FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0135CountsThree tailEnvelope0135FailureFibreMaxThree 34913 = true := by decide

theorem tailEnvelope0135FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0135CountsThree tailEnvelope0135FailureFibreMaxThree 35061 = true := by decide

theorem tailEnvelope0135FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 9803554 9852571
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9852570 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0135CountsOne) (fibre := tailEnvelope0135FailureFibreMaxOne) (bound := 34928) tailEnvelope0135FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0135CountsOne tailEnvelope0135FailureFibreMaxOne tailEnvelope0135FailureFibreExactOne
      (lower := 9803554) (upper := 9852570) (N := N) (bound := 34928)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0135FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0135FailureFibreCutoffOne
      tailEnvelope0135FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0135CountsThree) (fibre := tailEnvelope0135FailureFibreMaxThree) (bound := 34913) tailEnvelope0135FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0135CountsThree tailEnvelope0135FailureFibreMaxThree tailEnvelope0135FailureFibreExactThree
      (lower := 9803554) (upper := 9852570) (N := N) (bound := 34913)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0135FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0135FailureFibreCutoffThree
      tailEnvelope0135FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0135FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 9803554 9852571
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9852570 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0135CountsOne) (fibre := tailEnvelope0135FailureFibreMaxOne) (bound := 35075) tailEnvelope0135FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0135CountsOne tailEnvelope0135FailureFibreMaxOne tailEnvelope0135FailureFibreExactOne
      (lower := 9803554) (upper := 9852570) (N := N) (bound := 35075)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0135FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0135FailureFibreCutoffOne
      tailEnvelope0135FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0135CountsThree) (fibre := tailEnvelope0135FailureFibreMaxThree) (bound := 35061) tailEnvelope0135FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0135CountsThree tailEnvelope0135FailureFibreMaxThree tailEnvelope0135FailureFibreExactThree
      (lower := 9803554) (upper := 9852570) (N := N) (bound := 35061)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0135FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0135FailureFibreCutoffThree
      tailEnvelope0135FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0136FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![138, 141, 146, 145, 144, 145, 134, 134, 141, 138, 142, 139, 139, 138, 147, 149, 143, 137, 144, 144, 137, 139, 144, 145, 139, 140, 134, 146, 148, 138, 139, 145, 136, 139, 143, 147, 142, 142, 139, 136, 140, 141, 143, 141, 136, 142, 141, 141, 148], ![138, 139, 142, 138, 141, 136, 140, 145, 146, 134, 148, 142, 139, 147, 140, 143, 143, 143, 147, 153, 140, 140, 147, 141, 143, 138, 135, 142, 146, 135, 139, 134, 136, 145, 138, 147, 142, 145, 139, 147, 147, 146, 138, 145, 144, 144, 140, 144, 138], ![140, 144, 140, 138, 141, 139, 136, 143, 140, 140, 142, 141, 137, 138, 138, 145, 145, 148, 137, 141, 139, 145, 144, 134, 144, 148, 142, 139, 138, 139, 143, 138, 143, 146, 140, 143, 143, 135, 140, 140, 144, 145, 140, 132, 140, 144, 140, 142, 137], ![136, 135, 141, 138, 143, 141, 134, 138, 145, 142, 139, 137, 141, 146, 139, 141, 140, 144, 141, 142, 146, 151, 137, 145, 149, 139, 136, 138, 147, 139, 131, 144, 147, 143, 139, 132, 140, 146, 148, 139, 153, 140, 140, 146, 140, 137, 145, 137, 143], ![147, 142, 142, 135, 147, 142, 142, 143, 142, 139, 142, 145, 141, 147, 141, 142, 139, 137, 135, 140, 138, 140, 131, 135, 142, 141, 142, 146, 137, 145, 149, 144, 146, 142, 145, 140, 140, 146, 142, 138, 135, 138, 139, 139, 138, 142, 139, 139, 139], ![144, 146, 143, 144, 146, 140, 146, 140, 141, 140, 138, 142, 148, 142, 141, 136, 139, 146, 148, 133, 145, 143, 138, 141, 141, 143, 143, 138, 137, 144, 143, 131, 142, 151, 147, 134, 150, 143, 137, 138, 140, 141, 152, 136, 136, 142, 144, 136, 135], ![145, 150, 141, 138, 148, 137, 142, 145, 135, 144, 149, 141, 145, 145, 135, 135, 141, 145, 142, 139, 138, 142, 143, 143, 137, 142, 147, 141, 136, 142, 142, 147, 137, 140, 143, 144, 134, 139, 140, 138, 137, 143, 141, 150, 136, 137, 143, 140, 139], ![141, 142, 138, 149, 139, 147, 143, 139, 142, 140, 142, 137, 142, 138, 141, 140, 145, 140, 143, 134, 140, 143, 143, 144, 135, 142, 145, 139, 137, 147, 138, 144, 145, 137, 143, 147, 136, 141, 141, 143, 136, 138, 143, 138, 138, 136, 144, 147, 147], ![142, 137, 140, 146, 136, 144, 140, 129, 139, 143, 136, 141, 142, 136, 154, 140, 139, 135, 139, 138, 145, 139, 143, 143, 143, 137, 140, 146, 143, 136, 143, 144, 132, 136, 143, 144, 144, 141, 142, 145, 143, 141, 139, 150, 146, 142, 150, 141, 142]]

def tailEnvelope0136FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![147, 145, 137, 134, 134, 146, 140, 142, 147, 142, 147, 143, 142, 142, 144, 139, 141, 148, 141, 135, 143, 135, 138, 143, 138, 145, 152, 139, 135, 144, 142, 136, 144, 142, 139, 135, 141, 146, 144, 142, 142, 142, 147, 141, 139, 142, 137, 137, 145], ![141, 145, 138, 136, 145, 144, 143, 138, 141, 141, 137, 136, 140, 144, 141, 138, 140, 144, 139, 139, 148, 139, 136, 143, 145, 145, 140, 132, 141, 142, 146, 140, 139, 144, 143, 137, 143, 142, 141, 144, 142, 137, 148, 139, 134, 137, 145, 139, 145], ![137, 141, 142, 140, 145, 144, 143, 141, 142, 140, 139, 142, 138, 146, 137, 135, 141, 135, 142, 149, 134, 143, 149, 142, 142, 144, 137, 141, 147, 138, 144, 141, 139, 140, 139, 143, 140, 141, 149, 143, 132, 139, 150, 141, 136, 147, 134, 143, 141], ![136, 134, 148, 140, 139, 137, 139, 142, 136, 147, 142, 142, 144, 149, 139, 142, 145, 139, 140, 149, 138, 143, 148, 138, 139, 145, 144, 146, 141, 136, 146, 141, 139, 142, 136, 138, 143, 135, 140, 139, 136, 143, 144, 145, 138, 140, 149, 143, 138], ![135, 143, 143, 142, 139, 135, 144, 146, 136, 147, 144, 144, 138, 138, 137, 140, 138, 138, 150, 142, 139, 145, 147, 144, 145, 143, 142, 142, 145, 137, 137, 140, 133, 137, 141, 140, 141, 137, 140, 144, 144, 144, 143, 135, 144, 134, 142, 146, 144], ![141, 136, 138, 139, 143, 150, 142, 144, 142, 143, 136, 143, 139, 138, 145, 145, 143, 142, 138, 136, 142, 140, 137, 144, 147, 139, 144, 142, 140, 146, 141, 139, 148, 138, 142, 143, 137, 138, 140, 139, 146, 140, 137, 140, 142, 140, 144, 147, 144], ![142, 141, 144, 142, 141, 145, 140, 145, 147, 137, 139, 136, 140, 140, 144, 139, 144, 134, 140, 144, 149, 139, 146, 145, 144, 132, 138, 144, 140, 137, 136, 136, 146, 136, 141, 146, 140, 140, 144, 146, 145, 143, 137, 140, 148, 140, 144, 142, 137], ![146, 139, 133, 147, 140, 141, 146, 139, 143, 144, 148, 139, 148, 140, 140, 147, 137, 139, 139, 140, 143, 142, 135, 140, 137, 137, 142, 140, 142, 146, 136, 138, 140, 141, 147, 139, 146, 143, 139, 145, 147, 140, 141, 143, 146, 149, 138, 134, 139], ![140, 148, 139, 143, 143, 141, 142, 144, 148, 136, 144, 138, 142, 142, 134, 140, 145, 142, 143, 141, 143, 143, 138, 139, 139, 141, 138, 141, 142, 135, 140, 146, 144, 138, 140, 135, 140, 147, 137, 137, 144, 143, 139, 141, 142, 139, 145, 139, 139]]

def tailEnvelope0136FailureFibreMaxOne : Fin 9 → Nat :=
  ![149, 153, 148, 153, 149, 152, 150, 149, 154]

def tailEnvelope0136FailureFibreMaxThree : Fin 9 → Nat :=
  ![152, 148, 150, 149, 150, 150, 149, 149, 148]

theorem tailEnvelope0136FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      9901832 (tailEnvelope0136CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0136FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0136FailureCutoffTreeOne0Check :
    tailEnvelope0136FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0136FailureFibreExactOne 0) 9901832 0 = true := by decide

theorem tailEnvelope0136FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      9901832 (tailEnvelope0136FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0136FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0136FailureCutoffTreeOne0Check

def tailEnvelope0136FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0136FailureCutoffTreeOne1Check :
    tailEnvelope0136FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0136FailureFibreExactOne 1) 9901832 0 = true := by decide

theorem tailEnvelope0136FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      9901832 (tailEnvelope0136FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0136FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0136FailureCutoffTreeOne1Check

def tailEnvelope0136FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0136FailureCutoffTreeOne2Check :
    tailEnvelope0136FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0136FailureFibreExactOne 2) 9901832 0 = true := by decide

theorem tailEnvelope0136FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      9901832 (tailEnvelope0136FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0136FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0136FailureCutoffTreeOne2Check

def tailEnvelope0136FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0136FailureCutoffTreeOne3Check :
    tailEnvelope0136FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0136FailureFibreExactOne 3) 9901832 0 = true := by decide

theorem tailEnvelope0136FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      9901832 (tailEnvelope0136FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0136FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0136FailureCutoffTreeOne3Check

def tailEnvelope0136FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0136FailureCutoffTreeOne4Check :
    tailEnvelope0136FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0136FailureFibreExactOne 4) 9901832 0 = true := by decide

theorem tailEnvelope0136FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      9901832 (tailEnvelope0136FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0136FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0136FailureCutoffTreeOne4Check

def tailEnvelope0136FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0136FailureCutoffTreeOne5Check :
    tailEnvelope0136FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0136FailureFibreExactOne 5) 9901832 0 = true := by decide

theorem tailEnvelope0136FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      9901832 (tailEnvelope0136FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0136FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0136FailureCutoffTreeOne5Check

def tailEnvelope0136FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0136FailureCutoffTreeOne6Check :
    tailEnvelope0136FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0136FailureFibreExactOne 6) 9901832 0 = true := by decide

theorem tailEnvelope0136FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      9901832 (tailEnvelope0136FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0136FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0136FailureCutoffTreeOne6Check

def tailEnvelope0136FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0136FailureCutoffTreeOne7Check :
    tailEnvelope0136FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0136FailureFibreExactOne 7) 9901832 0 = true := by decide

theorem tailEnvelope0136FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      9901832 (tailEnvelope0136FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0136FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0136FailureCutoffTreeOne7Check

def tailEnvelope0136FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0136FailureCutoffTreeOne8Check :
    tailEnvelope0136FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0136FailureFibreExactOne 8) 9901832 0 = true := by decide

theorem tailEnvelope0136FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      9901832 (tailEnvelope0136FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0136FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0136FailureCutoffTreeOne8Check

theorem tailEnvelope0136FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      9901832 (tailEnvelope0136FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0136FailureFibreCutoffOne0 residue
  · exact tailEnvelope0136FailureFibreCutoffOne1 residue
  · exact tailEnvelope0136FailureFibreCutoffOne2 residue
  · exact tailEnvelope0136FailureFibreCutoffOne3 residue
  · exact tailEnvelope0136FailureFibreCutoffOne4 residue
  · exact tailEnvelope0136FailureFibreCutoffOne5 residue
  · exact tailEnvelope0136FailureFibreCutoffOne6 residue
  · exact tailEnvelope0136FailureFibreCutoffOne7 residue
  · exact tailEnvelope0136FailureFibreCutoffOne8 residue

theorem tailEnvelope0136FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0136FailureFibreExactOne cell residue ≤ tailEnvelope0136FailureFibreMaxOne cell := by decide

theorem tailEnvelope0136FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0136CountsOne tailEnvelope0136FailureFibreMaxOne 35100 = true := by decide

theorem tailEnvelope0136FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0136CountsOne tailEnvelope0136FailureFibreMaxOne 35248 = true := by decide

theorem tailEnvelope0136FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      9901832 (tailEnvelope0136CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0136FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0136FailureCutoffTreeThree0Check :
    tailEnvelope0136FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0136FailureFibreExactThree 0) 9901832 0 = true := by decide

theorem tailEnvelope0136FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      9901832 (tailEnvelope0136FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0136FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0136FailureCutoffTreeThree0Check

def tailEnvelope0136FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0136FailureCutoffTreeThree1Check :
    tailEnvelope0136FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0136FailureFibreExactThree 1) 9901832 0 = true := by decide

theorem tailEnvelope0136FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      9901832 (tailEnvelope0136FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0136FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0136FailureCutoffTreeThree1Check

def tailEnvelope0136FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0136FailureCutoffTreeThree2Check :
    tailEnvelope0136FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0136FailureFibreExactThree 2) 9901832 0 = true := by decide

theorem tailEnvelope0136FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      9901832 (tailEnvelope0136FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0136FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0136FailureCutoffTreeThree2Check

def tailEnvelope0136FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0136FailureCutoffTreeThree3Check :
    tailEnvelope0136FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0136FailureFibreExactThree 3) 9901832 0 = true := by decide

theorem tailEnvelope0136FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      9901832 (tailEnvelope0136FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0136FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0136FailureCutoffTreeThree3Check

def tailEnvelope0136FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0136FailureCutoffTreeThree4Check :
    tailEnvelope0136FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0136FailureFibreExactThree 4) 9901832 0 = true := by decide

theorem tailEnvelope0136FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      9901832 (tailEnvelope0136FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0136FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0136FailureCutoffTreeThree4Check

def tailEnvelope0136FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0136FailureCutoffTreeThree5Check :
    tailEnvelope0136FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0136FailureFibreExactThree 5) 9901832 0 = true := by decide

theorem tailEnvelope0136FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      9901832 (tailEnvelope0136FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0136FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0136FailureCutoffTreeThree5Check

def tailEnvelope0136FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0136FailureCutoffTreeThree6Check :
    tailEnvelope0136FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0136FailureFibreExactThree 6) 9901832 0 = true := by decide

theorem tailEnvelope0136FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      9901832 (tailEnvelope0136FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0136FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0136FailureCutoffTreeThree6Check

def tailEnvelope0136FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0136FailureCutoffTreeThree7Check :
    tailEnvelope0136FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0136FailureFibreExactThree 7) 9901832 0 = true := by decide

theorem tailEnvelope0136FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      9901832 (tailEnvelope0136FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0136FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0136FailureCutoffTreeThree7Check

def tailEnvelope0136FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0136FailureCutoffTreeThree8Check :
    tailEnvelope0136FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0136FailureFibreExactThree 8) 9901832 0 = true := by decide

theorem tailEnvelope0136FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      9901832 (tailEnvelope0136FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0136FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0136FailureCutoffTreeThree8Check

theorem tailEnvelope0136FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      9901832 (tailEnvelope0136FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0136FailureFibreCutoffThree0 residue
  · exact tailEnvelope0136FailureFibreCutoffThree1 residue
  · exact tailEnvelope0136FailureFibreCutoffThree2 residue
  · exact tailEnvelope0136FailureFibreCutoffThree3 residue
  · exact tailEnvelope0136FailureFibreCutoffThree4 residue
  · exact tailEnvelope0136FailureFibreCutoffThree5 residue
  · exact tailEnvelope0136FailureFibreCutoffThree6 residue
  · exact tailEnvelope0136FailureFibreCutoffThree7 residue
  · exact tailEnvelope0136FailureFibreCutoffThree8 residue

theorem tailEnvelope0136FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0136FailureFibreExactThree cell residue ≤ tailEnvelope0136FailureFibreMaxThree cell := by decide

theorem tailEnvelope0136FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0136CountsThree tailEnvelope0136FailureFibreMaxThree 35085 = true := by decide

theorem tailEnvelope0136FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0136CountsThree tailEnvelope0136FailureFibreMaxThree 35233 = true := by decide

theorem tailEnvelope0136FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 9852571 9901833
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9901832 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0136CountsOne) (fibre := tailEnvelope0136FailureFibreMaxOne) (bound := 35100) tailEnvelope0136FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0136CountsOne tailEnvelope0136FailureFibreMaxOne tailEnvelope0136FailureFibreExactOne
      (lower := 9852571) (upper := 9901832) (N := N) (bound := 35100)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0136FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0136FailureFibreCutoffOne
      tailEnvelope0136FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0136CountsThree) (fibre := tailEnvelope0136FailureFibreMaxThree) (bound := 35085) tailEnvelope0136FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0136CountsThree tailEnvelope0136FailureFibreMaxThree tailEnvelope0136FailureFibreExactThree
      (lower := 9852571) (upper := 9901832) (N := N) (bound := 35085)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0136FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0136FailureFibreCutoffThree
      tailEnvelope0136FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0136FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 9852571 9901833
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9901832 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0136CountsOne) (fibre := tailEnvelope0136FailureFibreMaxOne) (bound := 35248) tailEnvelope0136FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0136CountsOne tailEnvelope0136FailureFibreMaxOne tailEnvelope0136FailureFibreExactOne
      (lower := 9852571) (upper := 9901832) (N := N) (bound := 35248)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0136FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0136FailureFibreCutoffOne
      tailEnvelope0136FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0136CountsThree) (fibre := tailEnvelope0136FailureFibreMaxThree) (bound := 35233) tailEnvelope0136FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0136CountsThree tailEnvelope0136FailureFibreMaxThree tailEnvelope0136FailureFibreExactThree
      (lower := 9852571) (upper := 9901832) (N := N) (bound := 35233)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0136FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0136FailureFibreCutoffThree
      tailEnvelope0136FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0137FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![138, 141, 147, 146, 145, 146, 134, 135, 141, 138, 142, 141, 140, 140, 148, 150, 143, 137, 147, 145, 137, 142, 145, 145, 140, 140, 134, 147, 149, 139, 139, 145, 136, 139, 143, 148, 142, 142, 140, 136, 140, 141, 143, 143, 137, 144, 143, 142, 148], ![138, 140, 143, 140, 142, 138, 140, 145, 146, 135, 148, 143, 139, 147, 140, 143, 143, 144, 147, 155, 141, 142, 147, 141, 143, 139, 137, 143, 147, 135, 139, 135, 137, 146, 139, 149, 143, 146, 140, 147, 147, 147, 139, 145, 145, 144, 140, 144, 140], ![140, 145, 140, 138, 141, 140, 136, 144, 140, 142, 143, 142, 138, 138, 138, 146, 147, 149, 138, 141, 139, 145, 144, 136, 145, 148, 143, 140, 139, 143, 143, 138, 145, 146, 141, 146, 143, 136, 140, 140, 145, 145, 141, 133, 141, 145, 140, 142, 138], ![136, 136, 141, 139, 143, 142, 135, 140, 146, 142, 139, 137, 141, 147, 140, 142, 143, 145, 141, 143, 146, 151, 138, 145, 150, 139, 136, 140, 147, 139, 132, 145, 148, 144, 140, 133, 141, 147, 149, 139, 154, 140, 140, 148, 140, 137, 145, 137, 145], ![147, 142, 142, 138, 148, 144, 144, 143, 143, 139, 144, 145, 143, 147, 142, 142, 139, 137, 135, 140, 139, 140, 132, 135, 143, 143, 143, 147, 138, 145, 149, 144, 146, 142, 145, 140, 141, 147, 144, 138, 136, 139, 140, 140, 139, 144, 142, 139, 139], ![145, 147, 143, 144, 147, 140, 147, 141, 141, 140, 139, 142, 149, 142, 141, 137, 140, 147, 149, 133, 147, 143, 138, 141, 141, 143, 144, 138, 138, 145, 143, 132, 143, 154, 148, 136, 153, 144, 137, 139, 140, 141, 153, 138, 137, 143, 144, 136, 137], ![146, 150, 142, 138, 148, 137, 143, 146, 136, 145, 150, 143, 145, 145, 137, 136, 142, 145, 143, 140, 140, 142, 144, 144, 139, 144, 149, 142, 136, 143, 142, 147, 139, 141, 144, 144, 134, 139, 140, 139, 137, 145, 141, 151, 136, 137, 143, 140, 139], ![143, 144, 139, 149, 139, 147, 144, 139, 143, 141, 142, 138, 142, 139, 142, 142, 148, 141, 143, 135, 140, 143, 144, 146, 135, 143, 145, 139, 137, 147, 139, 145, 147, 138, 143, 148, 136, 141, 141, 144, 136, 139, 143, 138, 138, 136, 145, 148, 148], ![143, 137, 141, 146, 138, 146, 142, 131, 139, 143, 136, 141, 143, 137, 154, 141, 139, 135, 139, 139, 146, 140, 143, 145, 143, 137, 140, 146, 143, 137, 143, 147, 132, 136, 143, 144, 144, 145, 142, 147, 143, 141, 139, 151, 147, 143, 151, 142, 143]]

def tailEnvelope0137FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![148, 146, 137, 135, 135, 147, 141, 143, 148, 143, 147, 143, 142, 142, 144, 142, 141, 149, 141, 136, 144, 137, 139, 144, 138, 146, 152, 139, 135, 145, 142, 137, 144, 144, 139, 135, 142, 146, 145, 144, 144, 143, 148, 141, 139, 142, 137, 138, 146], ![141, 145, 141, 136, 146, 145, 143, 139, 141, 141, 138, 138, 140, 145, 141, 139, 140, 144, 139, 139, 148, 140, 136, 144, 146, 145, 140, 133, 141, 144, 148, 141, 140, 144, 143, 137, 143, 144, 142, 145, 143, 138, 148, 141, 135, 139, 147, 139, 146], ![137, 142, 144, 141, 147, 145, 143, 142, 142, 140, 139, 143, 139, 147, 138, 135, 141, 135, 144, 149, 136, 144, 150, 142, 142, 144, 137, 142, 148, 139, 145, 141, 141, 140, 140, 144, 142, 143, 152, 143, 132, 139, 150, 141, 137, 147, 136, 143, 141], ![136, 136, 148, 140, 140, 137, 139, 142, 136, 148, 143, 144, 145, 150, 139, 142, 145, 140, 141, 151, 138, 143, 148, 138, 140, 146, 147, 147, 143, 136, 146, 141, 139, 142, 137, 138, 145, 136, 140, 140, 136, 144, 147, 146, 141, 140, 149, 144, 138], ![140, 145, 145, 142, 140, 135, 145, 146, 137, 147, 145, 144, 138, 139, 137, 140, 140, 139, 152, 143, 139, 145, 147, 144, 145, 143, 143, 142, 145, 137, 137, 140, 135, 139, 144, 140, 141, 137, 140, 144, 145, 144, 144, 136, 144, 134, 142, 146, 145], ![142, 136, 138, 139, 143, 150, 143, 145, 142, 144, 136, 143, 139, 138, 146, 145, 144, 142, 138, 136, 143, 140, 139, 145, 150, 140, 145, 142, 140, 146, 142, 141, 149, 139, 142, 144, 139, 138, 141, 141, 148, 141, 138, 140, 142, 141, 145, 148, 144], ![144, 141, 144, 142, 142, 145, 142, 146, 147, 137, 139, 136, 140, 140, 146, 140, 145, 137, 140, 146, 150, 140, 147, 146, 144, 132, 138, 144, 141, 137, 138, 137, 147, 137, 141, 147, 140, 141, 144, 148, 145, 143, 137, 140, 148, 142, 144, 144, 137], ![146, 139, 134, 147, 143, 142, 147, 140, 144, 144, 149, 140, 150, 141, 140, 147, 137, 139, 141, 141, 144, 143, 136, 141, 139, 137, 142, 141, 143, 147, 137, 138, 140, 141, 147, 140, 146, 144, 141, 146, 148, 140, 141, 144, 146, 151, 139, 135, 139], ![141, 149, 140, 144, 143, 142, 143, 144, 150, 138, 144, 139, 143, 143, 135, 141, 145, 142, 143, 142, 143, 144, 138, 139, 139, 142, 138, 142, 142, 137, 140, 147, 144, 139, 142, 137, 140, 147, 138, 137, 144, 144, 139, 142, 143, 140, 146, 140, 140]]

def tailEnvelope0137FailureFibreMaxOne : Fin 9 → Nat :=
  ![150, 155, 149, 154, 149, 154, 151, 149, 154]

def tailEnvelope0137FailureFibreMaxThree : Fin 9 → Nat :=
  ![152, 148, 152, 151, 152, 150, 150, 151, 150]

theorem tailEnvelope0137FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      9951341 (tailEnvelope0137CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0137FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0137FailureCutoffTreeOne0Check :
    tailEnvelope0137FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0137FailureFibreExactOne 0) 9951341 0 = true := by decide

theorem tailEnvelope0137FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      9951341 (tailEnvelope0137FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0137FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0137FailureCutoffTreeOne0Check

def tailEnvelope0137FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0137FailureCutoffTreeOne1Check :
    tailEnvelope0137FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0137FailureFibreExactOne 1) 9951341 0 = true := by decide

theorem tailEnvelope0137FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      9951341 (tailEnvelope0137FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0137FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0137FailureCutoffTreeOne1Check

def tailEnvelope0137FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0137FailureCutoffTreeOne2Check :
    tailEnvelope0137FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0137FailureFibreExactOne 2) 9951341 0 = true := by decide

theorem tailEnvelope0137FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      9951341 (tailEnvelope0137FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0137FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0137FailureCutoffTreeOne2Check

def tailEnvelope0137FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0137FailureCutoffTreeOne3Check :
    tailEnvelope0137FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0137FailureFibreExactOne 3) 9951341 0 = true := by decide

theorem tailEnvelope0137FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      9951341 (tailEnvelope0137FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0137FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0137FailureCutoffTreeOne3Check

def tailEnvelope0137FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0137FailureCutoffTreeOne4Check :
    tailEnvelope0137FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0137FailureFibreExactOne 4) 9951341 0 = true := by decide

theorem tailEnvelope0137FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      9951341 (tailEnvelope0137FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0137FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0137FailureCutoffTreeOne4Check

def tailEnvelope0137FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0137FailureCutoffTreeOne5Check :
    tailEnvelope0137FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0137FailureFibreExactOne 5) 9951341 0 = true := by decide

theorem tailEnvelope0137FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      9951341 (tailEnvelope0137FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0137FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0137FailureCutoffTreeOne5Check

def tailEnvelope0137FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0137FailureCutoffTreeOne6Check :
    tailEnvelope0137FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0137FailureFibreExactOne 6) 9951341 0 = true := by decide

theorem tailEnvelope0137FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      9951341 (tailEnvelope0137FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0137FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0137FailureCutoffTreeOne6Check

def tailEnvelope0137FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0137FailureCutoffTreeOne7Check :
    tailEnvelope0137FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0137FailureFibreExactOne 7) 9951341 0 = true := by decide

theorem tailEnvelope0137FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      9951341 (tailEnvelope0137FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0137FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0137FailureCutoffTreeOne7Check

def tailEnvelope0137FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0137FailureCutoffTreeOne8Check :
    tailEnvelope0137FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0137FailureFibreExactOne 8) 9951341 0 = true := by decide

theorem tailEnvelope0137FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      9951341 (tailEnvelope0137FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0137FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0137FailureCutoffTreeOne8Check

theorem tailEnvelope0137FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      9951341 (tailEnvelope0137FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0137FailureFibreCutoffOne0 residue
  · exact tailEnvelope0137FailureFibreCutoffOne1 residue
  · exact tailEnvelope0137FailureFibreCutoffOne2 residue
  · exact tailEnvelope0137FailureFibreCutoffOne3 residue
  · exact tailEnvelope0137FailureFibreCutoffOne4 residue
  · exact tailEnvelope0137FailureFibreCutoffOne5 residue
  · exact tailEnvelope0137FailureFibreCutoffOne6 residue
  · exact tailEnvelope0137FailureFibreCutoffOne7 residue
  · exact tailEnvelope0137FailureFibreCutoffOne8 residue

theorem tailEnvelope0137FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0137FailureFibreExactOne cell residue ≤ tailEnvelope0137FailureFibreMaxOne cell := by decide

theorem tailEnvelope0137FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0137CountsOne tailEnvelope0137FailureFibreMaxOne 35273 = true := by decide

theorem tailEnvelope0137FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0137CountsOne tailEnvelope0137FailureFibreMaxOne 35422 = true := by decide

theorem tailEnvelope0137FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      9951341 (tailEnvelope0137CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0137FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0137FailureCutoffTreeThree0Check :
    tailEnvelope0137FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0137FailureFibreExactThree 0) 9951341 0 = true := by decide

theorem tailEnvelope0137FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      9951341 (tailEnvelope0137FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0137FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0137FailureCutoffTreeThree0Check

def tailEnvelope0137FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0137FailureCutoffTreeThree1Check :
    tailEnvelope0137FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0137FailureFibreExactThree 1) 9951341 0 = true := by decide

theorem tailEnvelope0137FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      9951341 (tailEnvelope0137FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0137FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0137FailureCutoffTreeThree1Check

def tailEnvelope0137FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0137FailureCutoffTreeThree2Check :
    tailEnvelope0137FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0137FailureFibreExactThree 2) 9951341 0 = true := by decide

theorem tailEnvelope0137FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      9951341 (tailEnvelope0137FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0137FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0137FailureCutoffTreeThree2Check

def tailEnvelope0137FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0137FailureCutoffTreeThree3Check :
    tailEnvelope0137FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0137FailureFibreExactThree 3) 9951341 0 = true := by decide

theorem tailEnvelope0137FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      9951341 (tailEnvelope0137FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0137FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0137FailureCutoffTreeThree3Check

def tailEnvelope0137FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0137FailureCutoffTreeThree4Check :
    tailEnvelope0137FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0137FailureFibreExactThree 4) 9951341 0 = true := by decide

theorem tailEnvelope0137FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      9951341 (tailEnvelope0137FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0137FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0137FailureCutoffTreeThree4Check

def tailEnvelope0137FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0137FailureCutoffTreeThree5Check :
    tailEnvelope0137FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0137FailureFibreExactThree 5) 9951341 0 = true := by decide

theorem tailEnvelope0137FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      9951341 (tailEnvelope0137FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0137FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0137FailureCutoffTreeThree5Check

def tailEnvelope0137FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0137FailureCutoffTreeThree6Check :
    tailEnvelope0137FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0137FailureFibreExactThree 6) 9951341 0 = true := by decide

theorem tailEnvelope0137FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      9951341 (tailEnvelope0137FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0137FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0137FailureCutoffTreeThree6Check

def tailEnvelope0137FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0137FailureCutoffTreeThree7Check :
    tailEnvelope0137FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0137FailureFibreExactThree 7) 9951341 0 = true := by decide

theorem tailEnvelope0137FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      9951341 (tailEnvelope0137FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0137FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0137FailureCutoffTreeThree7Check

def tailEnvelope0137FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0137FailureCutoffTreeThree8Check :
    tailEnvelope0137FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0137FailureFibreExactThree 8) 9951341 0 = true := by decide

theorem tailEnvelope0137FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      9951341 (tailEnvelope0137FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0137FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0137FailureCutoffTreeThree8Check

theorem tailEnvelope0137FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      9951341 (tailEnvelope0137FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0137FailureFibreCutoffThree0 residue
  · exact tailEnvelope0137FailureFibreCutoffThree1 residue
  · exact tailEnvelope0137FailureFibreCutoffThree2 residue
  · exact tailEnvelope0137FailureFibreCutoffThree3 residue
  · exact tailEnvelope0137FailureFibreCutoffThree4 residue
  · exact tailEnvelope0137FailureFibreCutoffThree5 residue
  · exact tailEnvelope0137FailureFibreCutoffThree6 residue
  · exact tailEnvelope0137FailureFibreCutoffThree7 residue
  · exact tailEnvelope0137FailureFibreCutoffThree8 residue

theorem tailEnvelope0137FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0137FailureFibreExactThree cell residue ≤ tailEnvelope0137FailureFibreMaxThree cell := by decide

theorem tailEnvelope0137FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0137CountsThree tailEnvelope0137FailureFibreMaxThree 35263 = true := by decide

theorem tailEnvelope0137FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0137CountsThree tailEnvelope0137FailureFibreMaxThree 35411 = true := by decide

theorem tailEnvelope0137FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 9901833 9951342
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9951341 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0137CountsOne) (fibre := tailEnvelope0137FailureFibreMaxOne) (bound := 35273) tailEnvelope0137FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0137CountsOne tailEnvelope0137FailureFibreMaxOne tailEnvelope0137FailureFibreExactOne
      (lower := 9901833) (upper := 9951341) (N := N) (bound := 35273)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0137FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0137FailureFibreCutoffOne
      tailEnvelope0137FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0137CountsThree) (fibre := tailEnvelope0137FailureFibreMaxThree) (bound := 35263) tailEnvelope0137FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0137CountsThree tailEnvelope0137FailureFibreMaxThree tailEnvelope0137FailureFibreExactThree
      (lower := 9901833) (upper := 9951341) (N := N) (bound := 35263)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0137FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0137FailureFibreCutoffThree
      tailEnvelope0137FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0137FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 9901833 9951342
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9951341 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0137CountsOne) (fibre := tailEnvelope0137FailureFibreMaxOne) (bound := 35422) tailEnvelope0137FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0137CountsOne tailEnvelope0137FailureFibreMaxOne tailEnvelope0137FailureFibreExactOne
      (lower := 9901833) (upper := 9951341) (N := N) (bound := 35422)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0137FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0137FailureFibreCutoffOne
      tailEnvelope0137FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0137CountsThree) (fibre := tailEnvelope0137FailureFibreMaxThree) (bound := 35411) tailEnvelope0137FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0137CountsThree tailEnvelope0137FailureFibreMaxThree tailEnvelope0137FailureFibreExactThree
      (lower := 9901833) (upper := 9951341) (N := N) (bound := 35411)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0137FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0137FailureFibreCutoffThree
      tailEnvelope0137FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
def tailEnvelope0138FailureFibreExactOne : Fin 9 → Fin 49 → Nat :=
  ![![138, 142, 147, 147, 146, 146, 135, 135, 142, 139, 144, 142, 144, 140, 148, 151, 144, 138, 148, 145, 138, 142, 145, 145, 140, 141, 136, 148, 151, 140, 139, 145, 137, 139, 144, 148, 143, 142, 140, 136, 140, 141, 144, 143, 140, 145, 143, 142, 148], ![139, 142, 144, 141, 142, 138, 140, 146, 147, 135, 149, 143, 139, 147, 140, 143, 144, 145, 149, 156, 141, 142, 148, 141, 143, 139, 138, 144, 147, 135, 139, 135, 138, 146, 141, 150, 146, 146, 141, 147, 148, 147, 142, 146, 146, 144, 140, 144, 141], ![141, 145, 140, 138, 141, 140, 137, 144, 142, 143, 143, 143, 138, 139, 139, 146, 148, 150, 139, 141, 139, 145, 145, 138, 147, 149, 145, 141, 139, 143, 145, 139, 147, 148, 141, 146, 143, 136, 142, 141, 146, 147, 141, 134, 141, 145, 141, 144, 138], ![138, 137, 142, 139, 146, 142, 136, 140, 146, 142, 141, 137, 142, 147, 141, 143, 143, 147, 143, 144, 147, 153, 138, 146, 151, 139, 136, 141, 149, 139, 133, 146, 149, 144, 141, 133, 141, 148, 149, 140, 154, 140, 140, 148, 140, 138, 145, 139, 146], ![147, 143, 144, 139, 149, 144, 144, 144, 144, 140, 145, 147, 144, 148, 142, 142, 139, 137, 136, 141, 140, 141, 133, 136, 143, 144, 143, 148, 139, 146, 149, 144, 146, 142, 145, 141, 141, 149, 144, 140, 138, 140, 140, 141, 140, 146, 142, 139, 139], ![147, 148, 145, 145, 147, 140, 147, 141, 142, 141, 139, 143, 149, 143, 142, 137, 141, 148, 149, 134, 147, 144, 138, 141, 141, 144, 145, 140, 138, 145, 144, 132, 144, 155, 148, 137, 153, 145, 137, 139, 140, 142, 153, 139, 137, 143, 145, 137, 138], ![147, 151, 142, 138, 149, 138, 144, 147, 138, 146, 150, 143, 146, 146, 137, 137, 142, 146, 143, 140, 140, 143, 144, 146, 139, 145, 149, 142, 136, 143, 142, 147, 139, 142, 145, 144, 134, 140, 141, 141, 140, 146, 142, 151, 136, 137, 143, 141, 141], ![143, 144, 139, 149, 139, 148, 144, 140, 143, 142, 142, 138, 143, 140, 143, 142, 148, 142, 143, 135, 140, 144, 145, 147, 136, 144, 145, 139, 138, 149, 141, 147, 148, 139, 143, 148, 136, 142, 142, 144, 137, 139, 143, 139, 141, 137, 147, 148, 149], ![143, 137, 141, 150, 138, 149, 143, 131, 140, 143, 136, 142, 143, 138, 155, 141, 139, 135, 139, 141, 147, 142, 145, 146, 143, 139, 140, 147, 144, 137, 144, 147, 132, 138, 143, 145, 145, 145, 144, 148, 143, 141, 139, 151, 148, 143, 152, 142, 143]]

def tailEnvelope0138FailureFibreExactThree : Fin 9 → Fin 49 → Nat :=
  ![![148, 146, 138, 139, 136, 148, 142, 144, 149, 146, 147, 143, 142, 143, 145, 144, 143, 149, 142, 138, 146, 138, 140, 144, 139, 146, 152, 139, 135, 146, 143, 137, 145, 144, 140, 136, 143, 147, 147, 144, 145, 143, 148, 141, 139, 142, 137, 138, 147], ![141, 145, 141, 137, 148, 146, 144, 139, 141, 142, 138, 139, 142, 145, 142, 139, 140, 144, 139, 139, 149, 140, 137, 144, 146, 146, 142, 135, 143, 144, 149, 142, 140, 145, 144, 138, 144, 144, 143, 147, 143, 138, 149, 141, 137, 141, 148, 139, 147], ![139, 142, 146, 141, 148, 146, 143, 142, 143, 140, 140, 143, 140, 148, 138, 135, 142, 136, 146, 151, 139, 144, 150, 143, 142, 144, 140, 142, 149, 140, 145, 141, 141, 141, 141, 146, 143, 144, 152, 143, 132, 140, 151, 142, 137, 148, 136, 143, 141], ![137, 136, 149, 141, 140, 137, 139, 145, 138, 149, 145, 144, 145, 150, 139, 142, 147, 140, 142, 152, 138, 143, 148, 139, 143, 148, 149, 148, 143, 137, 146, 141, 141, 143, 137, 139, 145, 136, 141, 140, 137, 145, 148, 147, 141, 140, 149, 144, 138], ![141, 146, 146, 142, 140, 135, 148, 147, 138, 148, 145, 144, 138, 139, 140, 142, 143, 141, 152, 143, 139, 145, 149, 145, 145, 144, 143, 142, 145, 137, 138, 142, 135, 141, 144, 141, 141, 139, 140, 145, 146, 145, 144, 138, 144, 135, 143, 148, 146], ![143, 138, 138, 139, 143, 152, 145, 147, 143, 144, 136, 143, 140, 139, 146, 147, 144, 142, 138, 136, 143, 142, 140, 146, 152, 142, 145, 142, 140, 147, 142, 142, 150, 139, 143, 144, 139, 139, 141, 143, 149, 142, 138, 140, 142, 142, 146, 149, 145], ![144, 142, 145, 143, 142, 147, 142, 146, 148, 137, 139, 139, 140, 142, 146, 140, 145, 137, 140, 147, 151, 141, 147, 146, 144, 132, 138, 145, 141, 139, 138, 138, 147, 137, 141, 148, 142, 142, 145, 149, 145, 143, 137, 141, 149, 144, 146, 146, 138], ![146, 140, 134, 149, 144, 142, 148, 140, 144, 144, 149, 141, 150, 141, 141, 147, 137, 141, 141, 143, 146, 143, 137, 141, 139, 139, 143, 142, 144, 147, 137, 138, 140, 143, 148, 141, 148, 145, 142, 147, 148, 142, 142, 144, 147, 151, 140, 135, 139], ![141, 150, 140, 144, 143, 142, 143, 145, 150, 140, 144, 139, 143, 144, 136, 143, 146, 143, 144, 142, 143, 144, 140, 140, 140, 144, 139, 143, 145, 138, 142, 147, 145, 139, 143, 137, 140, 147, 138, 137, 145, 144, 139, 143, 144, 142, 147, 140, 141]]

def tailEnvelope0138FailureFibreMaxOne : Fin 9 → Nat :=
  ![151, 156, 150, 154, 149, 155, 151, 149, 155]

def tailEnvelope0138FailureFibreMaxThree : Fin 9 → Nat :=
  ![152, 149, 152, 152, 152, 152, 151, 151, 150]

theorem tailEnvelope0138FailureCellCutoffOne (cell : Fin 9) :
    (cellTargets { parity := false, residue := cell }).Cutoff
      9999999 (tailEnvelope0138CountsOne cell) := by
  fin_cases cell <;> decide

def tailEnvelope0138FailureCutoffTreeOne0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0138FailureCutoffTreeOne0Check :
    tailEnvelope0138FailureCutoffTreeOne0.check
      (fibreTargets { parity := false, residue := 0 })
      (tailEnvelope0138FailureFibreExactOne 0) 9999999 0 = true := by decide

theorem tailEnvelope0138FailureFibreCutoffOne0 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 0 } residue).Cutoff
      9999999 (tailEnvelope0138FailureFibreExactOne 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0138FailureCutoffTreeOne0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0138FailureCutoffTreeOne0Check

def tailEnvelope0138FailureCutoffTreeOne1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0138FailureCutoffTreeOne1Check :
    tailEnvelope0138FailureCutoffTreeOne1.check
      (fibreTargets { parity := false, residue := 1 })
      (tailEnvelope0138FailureFibreExactOne 1) 9999999 0 = true := by decide

theorem tailEnvelope0138FailureFibreCutoffOne1 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 1 } residue).Cutoff
      9999999 (tailEnvelope0138FailureFibreExactOne 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0138FailureCutoffTreeOne1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0138FailureCutoffTreeOne1Check

def tailEnvelope0138FailureCutoffTreeOne2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0138FailureCutoffTreeOne2Check :
    tailEnvelope0138FailureCutoffTreeOne2.check
      (fibreTargets { parity := false, residue := 2 })
      (tailEnvelope0138FailureFibreExactOne 2) 9999999 0 = true := by decide

theorem tailEnvelope0138FailureFibreCutoffOne2 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 2 } residue).Cutoff
      9999999 (tailEnvelope0138FailureFibreExactOne 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0138FailureCutoffTreeOne2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0138FailureCutoffTreeOne2Check

def tailEnvelope0138FailureCutoffTreeOne3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0138FailureCutoffTreeOne3Check :
    tailEnvelope0138FailureCutoffTreeOne3.check
      (fibreTargets { parity := false, residue := 3 })
      (tailEnvelope0138FailureFibreExactOne 3) 9999999 0 = true := by decide

theorem tailEnvelope0138FailureFibreCutoffOne3 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 3 } residue).Cutoff
      9999999 (tailEnvelope0138FailureFibreExactOne 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0138FailureCutoffTreeOne3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0138FailureCutoffTreeOne3Check

def tailEnvelope0138FailureCutoffTreeOne4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0138FailureCutoffTreeOne4Check :
    tailEnvelope0138FailureCutoffTreeOne4.check
      (fibreTargets { parity := false, residue := 4 })
      (tailEnvelope0138FailureFibreExactOne 4) 9999999 0 = true := by decide

theorem tailEnvelope0138FailureFibreCutoffOne4 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 4 } residue).Cutoff
      9999999 (tailEnvelope0138FailureFibreExactOne 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0138FailureCutoffTreeOne4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0138FailureCutoffTreeOne4Check

def tailEnvelope0138FailureCutoffTreeOne5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0138FailureCutoffTreeOne5Check :
    tailEnvelope0138FailureCutoffTreeOne5.check
      (fibreTargets { parity := false, residue := 5 })
      (tailEnvelope0138FailureFibreExactOne 5) 9999999 0 = true := by decide

theorem tailEnvelope0138FailureFibreCutoffOne5 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 5 } residue).Cutoff
      9999999 (tailEnvelope0138FailureFibreExactOne 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0138FailureCutoffTreeOne5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0138FailureCutoffTreeOne5Check

def tailEnvelope0138FailureCutoffTreeOne6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0138FailureCutoffTreeOne6Check :
    tailEnvelope0138FailureCutoffTreeOne6.check
      (fibreTargets { parity := false, residue := 6 })
      (tailEnvelope0138FailureFibreExactOne 6) 9999999 0 = true := by decide

theorem tailEnvelope0138FailureFibreCutoffOne6 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 6 } residue).Cutoff
      9999999 (tailEnvelope0138FailureFibreExactOne 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0138FailureCutoffTreeOne6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0138FailureCutoffTreeOne6Check

def tailEnvelope0138FailureCutoffTreeOne7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0138FailureCutoffTreeOne7Check :
    tailEnvelope0138FailureCutoffTreeOne7.check
      (fibreTargets { parity := false, residue := 7 })
      (tailEnvelope0138FailureFibreExactOne 7) 9999999 0 = true := by decide

theorem tailEnvelope0138FailureFibreCutoffOne7 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 7 } residue).Cutoff
      9999999 (tailEnvelope0138FailureFibreExactOne 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0138FailureCutoffTreeOne7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0138FailureCutoffTreeOne7Check

def tailEnvelope0138FailureCutoffTreeOne8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0138FailureCutoffTreeOne8Check :
    tailEnvelope0138FailureCutoffTreeOne8.check
      (fibreTargets { parity := false, residue := 8 })
      (tailEnvelope0138FailureFibreExactOne 8) 9999999 0 = true := by decide

theorem tailEnvelope0138FailureFibreCutoffOne8 (residue : Fin 49) :
    (fibreTargets { parity := false, residue := 8 } residue).Cutoff
      9999999 (tailEnvelope0138FailureFibreExactOne 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0138FailureCutoffTreeOne8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0138FailureCutoffTreeOne8Check

theorem tailEnvelope0138FailureFibreCutoffOne
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := false, residue := cell } residue).Cutoff
      9999999 (tailEnvelope0138FailureFibreExactOne cell residue) := by
  fin_cases cell
  · exact tailEnvelope0138FailureFibreCutoffOne0 residue
  · exact tailEnvelope0138FailureFibreCutoffOne1 residue
  · exact tailEnvelope0138FailureFibreCutoffOne2 residue
  · exact tailEnvelope0138FailureFibreCutoffOne3 residue
  · exact tailEnvelope0138FailureFibreCutoffOne4 residue
  · exact tailEnvelope0138FailureFibreCutoffOne5 residue
  · exact tailEnvelope0138FailureFibreCutoffOne6 residue
  · exact tailEnvelope0138FailureFibreCutoffOne7 residue
  · exact tailEnvelope0138FailureFibreCutoffOne8 residue

theorem tailEnvelope0138FailureFibreBoundOne :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0138FailureFibreExactOne cell residue ≤ tailEnvelope0138FailureFibreMaxOne cell := by decide

theorem tailEnvelope0138FailureEightScalarOne :
    eightCellCapacityFailureBoundPasses tailEnvelope0138CountsOne tailEnvelope0138FailureFibreMaxOne 35431 = true := by decide

theorem tailEnvelope0138FailureNineScalarOne :
    nineCellCapacityFailureBoundPasses tailEnvelope0138CountsOne tailEnvelope0138FailureFibreMaxOne 35580 = true := by decide

theorem tailEnvelope0138FailureCellCutoffThree (cell : Fin 9) :
    (cellTargets { parity := true, residue := cell }).Cutoff
      9999999 (tailEnvelope0138CountsThree cell) := by
  fin_cases cell <;> decide

def tailEnvelope0138FailureCutoffTreeThree0 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0138FailureCutoffTreeThree0Check :
    tailEnvelope0138FailureCutoffTreeThree0.check
      (fibreTargets { parity := true, residue := 0 })
      (tailEnvelope0138FailureFibreExactThree 0) 9999999 0 = true := by decide

theorem tailEnvelope0138FailureFibreCutoffThree0 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 0 } residue).Cutoff
      9999999 (tailEnvelope0138FailureFibreExactThree 0 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0138FailureCutoffTreeThree0, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0138FailureCutoffTreeThree0Check

def tailEnvelope0138FailureCutoffTreeThree1 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0138FailureCutoffTreeThree1Check :
    tailEnvelope0138FailureCutoffTreeThree1.check
      (fibreTargets { parity := true, residue := 1 })
      (tailEnvelope0138FailureFibreExactThree 1) 9999999 0 = true := by decide

theorem tailEnvelope0138FailureFibreCutoffThree1 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 1 } residue).Cutoff
      9999999 (tailEnvelope0138FailureFibreExactThree 1 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0138FailureCutoffTreeThree1, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0138FailureCutoffTreeThree1Check

def tailEnvelope0138FailureCutoffTreeThree2 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0138FailureCutoffTreeThree2Check :
    tailEnvelope0138FailureCutoffTreeThree2.check
      (fibreTargets { parity := true, residue := 2 })
      (tailEnvelope0138FailureFibreExactThree 2) 9999999 0 = true := by decide

theorem tailEnvelope0138FailureFibreCutoffThree2 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 2 } residue).Cutoff
      9999999 (tailEnvelope0138FailureFibreExactThree 2 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0138FailureCutoffTreeThree2, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0138FailureCutoffTreeThree2Check

def tailEnvelope0138FailureCutoffTreeThree3 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0138FailureCutoffTreeThree3Check :
    tailEnvelope0138FailureCutoffTreeThree3.check
      (fibreTargets { parity := true, residue := 3 })
      (tailEnvelope0138FailureFibreExactThree 3) 9999999 0 = true := by decide

theorem tailEnvelope0138FailureFibreCutoffThree3 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 3 } residue).Cutoff
      9999999 (tailEnvelope0138FailureFibreExactThree 3 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0138FailureCutoffTreeThree3, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0138FailureCutoffTreeThree3Check

def tailEnvelope0138FailureCutoffTreeThree4 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0138FailureCutoffTreeThree4Check :
    tailEnvelope0138FailureCutoffTreeThree4.check
      (fibreTargets { parity := true, residue := 4 })
      (tailEnvelope0138FailureFibreExactThree 4) 9999999 0 = true := by decide

theorem tailEnvelope0138FailureFibreCutoffThree4 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 4 } residue).Cutoff
      9999999 (tailEnvelope0138FailureFibreExactThree 4 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0138FailureCutoffTreeThree4, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0138FailureCutoffTreeThree4Check

def tailEnvelope0138FailureCutoffTreeThree5 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0138FailureCutoffTreeThree5Check :
    tailEnvelope0138FailureCutoffTreeThree5.check
      (fibreTargets { parity := true, residue := 5 })
      (tailEnvelope0138FailureFibreExactThree 5) 9999999 0 = true := by decide

theorem tailEnvelope0138FailureFibreCutoffThree5 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 5 } residue).Cutoff
      9999999 (tailEnvelope0138FailureFibreExactThree 5 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0138FailureCutoffTreeThree5, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0138FailureCutoffTreeThree5Check

def tailEnvelope0138FailureCutoffTreeThree6 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0138FailureCutoffTreeThree6Check :
    tailEnvelope0138FailureCutoffTreeThree6.check
      (fibreTargets { parity := true, residue := 6 })
      (tailEnvelope0138FailureFibreExactThree 6) 9999999 0 = true := by decide

theorem tailEnvelope0138FailureFibreCutoffThree6 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 6 } residue).Cutoff
      9999999 (tailEnvelope0138FailureFibreExactThree 6 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0138FailureCutoffTreeThree6, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0138FailureCutoffTreeThree6Check

def tailEnvelope0138FailureCutoffTreeThree7 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0138FailureCutoffTreeThree7Check :
    tailEnvelope0138FailureCutoffTreeThree7.check
      (fibreTargets { parity := true, residue := 7 })
      (tailEnvelope0138FailureFibreExactThree 7) 9999999 0 = true := by decide

theorem tailEnvelope0138FailureFibreCutoffThree7 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 7 } residue).Cutoff
      9999999 (tailEnvelope0138FailureFibreExactThree 7 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0138FailureCutoffTreeThree7, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0138FailureCutoffTreeThree7Check

def tailEnvelope0138FailureCutoffTreeThree8 : IndexedMarkerData.FortyNineCutoffTree :=
  (.node (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))))) (.node (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf)))) (.node (.node (.node .leaf (.node .leaf .leaf)) (.node .leaf (.node .leaf .leaf))) (.node (.node .leaf (.node .leaf .leaf)) (.node (.node .leaf .leaf) (.node .leaf .leaf))))))

theorem tailEnvelope0138FailureCutoffTreeThree8Check :
    tailEnvelope0138FailureCutoffTreeThree8.check
      (fibreTargets { parity := true, residue := 8 })
      (tailEnvelope0138FailureFibreExactThree 8) 9999999 0 = true := by decide

theorem tailEnvelope0138FailureFibreCutoffThree8 (residue : Fin 49) :
    (fibreTargets { parity := true, residue := 8 } residue).Cutoff
      9999999 (tailEnvelope0138FailureFibreExactThree 8 residue) := by
  apply IndexedMarkerData.FortyNineCutoffTree.cutoff_of_range
  simpa [tailEnvelope0138FailureCutoffTreeThree8, IndexedMarkerData.FortyNineCutoffTree.size] using
    IndexedMarkerData.FortyNineCutoffTree.range tailEnvelope0138FailureCutoffTreeThree8Check

theorem tailEnvelope0138FailureFibreCutoffThree
    (cell : Fin 9) (residue : Fin 49) :
    (fibreTargets { parity := true, residue := cell } residue).Cutoff
      9999999 (tailEnvelope0138FailureFibreExactThree cell residue) := by
  fin_cases cell
  · exact tailEnvelope0138FailureFibreCutoffThree0 residue
  · exact tailEnvelope0138FailureFibreCutoffThree1 residue
  · exact tailEnvelope0138FailureFibreCutoffThree2 residue
  · exact tailEnvelope0138FailureFibreCutoffThree3 residue
  · exact tailEnvelope0138FailureFibreCutoffThree4 residue
  · exact tailEnvelope0138FailureFibreCutoffThree5 residue
  · exact tailEnvelope0138FailureFibreCutoffThree6 residue
  · exact tailEnvelope0138FailureFibreCutoffThree7 residue
  · exact tailEnvelope0138FailureFibreCutoffThree8 residue

theorem tailEnvelope0138FailureFibreBoundThree :
    ∀ cell : Fin 9, ∀ residue : Fin 49,
      tailEnvelope0138FailureFibreExactThree cell residue ≤ tailEnvelope0138FailureFibreMaxThree cell := by decide

theorem tailEnvelope0138FailureEightScalarThree :
    eightCellCapacityFailureBoundPasses tailEnvelope0138CountsThree tailEnvelope0138FailureFibreMaxThree 35436 = true := by decide

theorem tailEnvelope0138FailureNineScalarThree :
    nineCellCapacityFailureBoundPasses tailEnvelope0138CountsThree tailEnvelope0138FailureFibreMaxThree 35585 = true := by decide

theorem tailEnvelope0138FailureEight :
    TailDiagonalCapacityFailureRatioRange 8 1 9951342 10000000
      (3570000000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9999999 := by omega
  cases parity
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0138CountsOne) (fibre := tailEnvelope0138FailureFibreMaxOne) (bound := 35431) tailEnvelope0138FailureEightScalarOne
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0138CountsOne tailEnvelope0138FailureFibreMaxOne tailEnvelope0138FailureFibreExactOne
      (lower := 9951342) (upper := 9999999) (N := N) (bound := 35431)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0138FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0138FailureFibreCutoffOne
      tailEnvelope0138FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := eightCellCapacityFailureBoundPasses_sound (full := tailEnvelope0138CountsThree) (fibre := tailEnvelope0138FailureFibreMaxThree) (bound := 35436) tailEnvelope0138FailureEightScalarThree
      cells restricted residues.card hsubset hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0138CountsThree tailEnvelope0138FailureFibreMaxThree tailEnvelope0138FailureFibreExactThree
      (lower := 9951342) (upper := 9999999) (N := N) (bound := 35436)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0138FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0138FailureFibreCutoffThree
      tailEnvelope0138FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
theorem tailEnvelope0138FailureNine :
    TailDiagonalCapacityFailureRatioRange 9 2 9951342 10000000
      (3585200000000000 / 1000000000000000000) := by
  intro N hLower hStop parity cells restricted residues hsubset
    hpositive hsmall hcells hdefect
  have hNUpper : N ≤ 9999999 := by omega
  cases parity
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0138CountsOne) (fibre := tailEnvelope0138FailureFibreMaxOne) (bound := 35580) tailEnvelope0138FailureNineScalarOne
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine false tailEnvelope0138CountsOne tailEnvelope0138FailureFibreMaxOne tailEnvelope0138FailureFibreExactOne
      (lower := 9951342) (upper := 9999999) (N := N) (bound := 35580)
      (fun cell => cellTargetsOrdered
        { parity := false, residue := cell })
      tailEnvelope0138FailureCellCutoffOne
      (fun cell residue => fibreTargetsOrdered
        { parity := false, residue := cell } residue)
      tailEnvelope0138FailureFibreCutoffOne
      tailEnvelope0138FailureFibreBoundOne
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
  · have hscalar := nineCellCapacityFailureBoundPasses_sound (full := tailEnvelope0138CountsThree) (fibre := tailEnvelope0138FailureFibreMaxThree) (bound := 35585) tailEnvelope0138FailureNineScalarThree
      cells restricted residues.card hpositive hsmall hcells hdefect
    have hratio := tailDiagonalCapacityFailure_ratio_le_of_scalar
      certificate cellTargets projectsOddCells fibreTargets
      projectsModFortyNine true tailEnvelope0138CountsThree tailEnvelope0138FailureFibreMaxThree tailEnvelope0138FailureFibreExactThree
      (lower := 9951342) (upper := 9999999) (N := N) (bound := 35585)
      (fun cell => cellTargetsOrdered
        { parity := true, residue := cell })
      tailEnvelope0138FailureCellCutoffThree
      (fun cell residue => fibreTargetsOrdered
        { parity := true, residue := cell } residue)
      tailEnvelope0138FailureFibreCutoffThree
      tailEnvelope0138FailureFibreBoundThree
      (by decide) (by decide) hLower hNUpper
      cells restricted residues hscalar
    exact hratio.trans (by norm_num)
end Erdos848.GeneratedTailDiagonalCoverage
