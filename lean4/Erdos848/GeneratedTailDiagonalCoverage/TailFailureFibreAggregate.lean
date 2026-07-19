import Erdos848.GeneratedTailDiagonalCoverage.TailFailureFibreCellOne0
import Erdos848.GeneratedTailDiagonalCoverage.TailFailureFibreCellOne1
import Erdos848.GeneratedTailDiagonalCoverage.TailFailureFibreCellOne2
import Erdos848.GeneratedTailDiagonalCoverage.TailFailureFibreCellOne3
import Erdos848.GeneratedTailDiagonalCoverage.TailFailureFibreCellOne4
import Erdos848.GeneratedTailDiagonalCoverage.TailFailureFibreCellOne5
import Erdos848.GeneratedTailDiagonalCoverage.TailFailureFibreCellOne6
import Erdos848.GeneratedTailDiagonalCoverage.TailFailureFibreCellOne7
import Erdos848.GeneratedTailDiagonalCoverage.TailFailureFibreCellOne8
import Erdos848.GeneratedTailDiagonalCoverage.TailFailureFibreCellThree0
import Erdos848.GeneratedTailDiagonalCoverage.TailFailureFibreCellThree1
import Erdos848.GeneratedTailDiagonalCoverage.TailFailureFibreCellThree2
import Erdos848.GeneratedTailDiagonalCoverage.TailFailureFibreCellThree3
import Erdos848.GeneratedTailDiagonalCoverage.TailFailureFibreCellThree4
import Erdos848.GeneratedTailDiagonalCoverage.TailFailureFibreCellThree5
import Erdos848.GeneratedTailDiagonalCoverage.TailFailureFibreCellThree6
import Erdos848.GeneratedTailDiagonalCoverage.TailFailureFibreCellThree7
import Erdos848.GeneratedTailDiagonalCoverage.TailFailureFibreCellThree8

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def modOneFibreTargets : Fin 9 → Fin 49 → IndexedMarkerData :=
  ![fibreMarkersOne0, fibreMarkersOne1, fibreMarkersOne2, fibreMarkersOne3, fibreMarkersOne4, fibreMarkersOne5, fibreMarkersOne6, fibreMarkersOne7, fibreMarkersOne8]

def modThreeFibreTargets : Fin 9 → Fin 49 → IndexedMarkerData :=
  ![fibreMarkersThree0, fibreMarkersThree1, fibreMarkersThree2, fibreMarkersThree3, fibreMarkersThree4, fibreMarkersThree5, fibreMarkersThree6, fibreMarkersThree7, fibreMarkersThree8]

def fibreTargets (cell : OddModNineCell) : Fin 49 → IndexedMarkerData :=
  if cell.parity then modThreeFibreTargets cell.residue
  else modOneFibreTargets cell.residue

theorem projectsModFortyNine (cell : OddModNineCell) :
    (cellTargets cell).ProjectsModFortyNine (fibreTargets cell) := by
  rcases cell with ⟨parity, residue⟩
  cases parity <;> fin_cases residue
  · simpa [cellTargets, fibreTargets, modOneCellMarkers,
      modThreeCellMarkers, modOneFibreTargets,
      modThreeFibreTargets] using projectsFibreOne0
  · simpa [cellTargets, fibreTargets, modOneCellMarkers,
      modThreeCellMarkers, modOneFibreTargets,
      modThreeFibreTargets] using projectsFibreOne1
  · simpa [cellTargets, fibreTargets, modOneCellMarkers,
      modThreeCellMarkers, modOneFibreTargets,
      modThreeFibreTargets] using projectsFibreOne2
  · simpa [cellTargets, fibreTargets, modOneCellMarkers,
      modThreeCellMarkers, modOneFibreTargets,
      modThreeFibreTargets] using projectsFibreOne3
  · simpa [cellTargets, fibreTargets, modOneCellMarkers,
      modThreeCellMarkers, modOneFibreTargets,
      modThreeFibreTargets] using projectsFibreOne4
  · simpa [cellTargets, fibreTargets, modOneCellMarkers,
      modThreeCellMarkers, modOneFibreTargets,
      modThreeFibreTargets] using projectsFibreOne5
  · simpa [cellTargets, fibreTargets, modOneCellMarkers,
      modThreeCellMarkers, modOneFibreTargets,
      modThreeFibreTargets] using projectsFibreOne6
  · simpa [cellTargets, fibreTargets, modOneCellMarkers,
      modThreeCellMarkers, modOneFibreTargets,
      modThreeFibreTargets] using projectsFibreOne7
  · simpa [cellTargets, fibreTargets, modOneCellMarkers,
      modThreeCellMarkers, modOneFibreTargets,
      modThreeFibreTargets] using projectsFibreOne8
  · simpa [cellTargets, fibreTargets, modOneCellMarkers,
      modThreeCellMarkers, modOneFibreTargets,
      modThreeFibreTargets] using projectsFibreThree0
  · simpa [cellTargets, fibreTargets, modOneCellMarkers,
      modThreeCellMarkers, modOneFibreTargets,
      modThreeFibreTargets] using projectsFibreThree1
  · simpa [cellTargets, fibreTargets, modOneCellMarkers,
      modThreeCellMarkers, modOneFibreTargets,
      modThreeFibreTargets] using projectsFibreThree2
  · simpa [cellTargets, fibreTargets, modOneCellMarkers,
      modThreeCellMarkers, modOneFibreTargets,
      modThreeFibreTargets] using projectsFibreThree3
  · simpa [cellTargets, fibreTargets, modOneCellMarkers,
      modThreeCellMarkers, modOneFibreTargets,
      modThreeFibreTargets] using projectsFibreThree4
  · simpa [cellTargets, fibreTargets, modOneCellMarkers,
      modThreeCellMarkers, modOneFibreTargets,
      modThreeFibreTargets] using projectsFibreThree5
  · simpa [cellTargets, fibreTargets, modOneCellMarkers,
      modThreeCellMarkers, modOneFibreTargets,
      modThreeFibreTargets] using projectsFibreThree6
  · simpa [cellTargets, fibreTargets, modOneCellMarkers,
      modThreeCellMarkers, modOneFibreTargets,
      modThreeFibreTargets] using projectsFibreThree7
  · simpa [cellTargets, fibreTargets, modOneCellMarkers,
      modThreeCellMarkers, modOneFibreTargets,
      modThreeFibreTargets] using projectsFibreThree8

theorem fibreTargetsOrdered (cell : OddModNineCell) (residue : Fin 49) :
    (fibreTargets cell residue).AdjacentOrdered := by
  rcases cell with ⟨parity, cell⟩
  cases parity <;> fin_cases cell
  · simpa [fibreTargets, modOneFibreTargets,
      modThreeFibreTargets] using fibreMarkersOne0Ordered residue
  · simpa [fibreTargets, modOneFibreTargets,
      modThreeFibreTargets] using fibreMarkersOne1Ordered residue
  · simpa [fibreTargets, modOneFibreTargets,
      modThreeFibreTargets] using fibreMarkersOne2Ordered residue
  · simpa [fibreTargets, modOneFibreTargets,
      modThreeFibreTargets] using fibreMarkersOne3Ordered residue
  · simpa [fibreTargets, modOneFibreTargets,
      modThreeFibreTargets] using fibreMarkersOne4Ordered residue
  · simpa [fibreTargets, modOneFibreTargets,
      modThreeFibreTargets] using fibreMarkersOne5Ordered residue
  · simpa [fibreTargets, modOneFibreTargets,
      modThreeFibreTargets] using fibreMarkersOne6Ordered residue
  · simpa [fibreTargets, modOneFibreTargets,
      modThreeFibreTargets] using fibreMarkersOne7Ordered residue
  · simpa [fibreTargets, modOneFibreTargets,
      modThreeFibreTargets] using fibreMarkersOne8Ordered residue
  · simpa [fibreTargets, modOneFibreTargets,
      modThreeFibreTargets] using fibreMarkersThree0Ordered residue
  · simpa [fibreTargets, modOneFibreTargets,
      modThreeFibreTargets] using fibreMarkersThree1Ordered residue
  · simpa [fibreTargets, modOneFibreTargets,
      modThreeFibreTargets] using fibreMarkersThree2Ordered residue
  · simpa [fibreTargets, modOneFibreTargets,
      modThreeFibreTargets] using fibreMarkersThree3Ordered residue
  · simpa [fibreTargets, modOneFibreTargets,
      modThreeFibreTargets] using fibreMarkersThree4Ordered residue
  · simpa [fibreTargets, modOneFibreTargets,
      modThreeFibreTargets] using fibreMarkersThree5Ordered residue
  · simpa [fibreTargets, modOneFibreTargets,
      modThreeFibreTargets] using fibreMarkersThree6Ordered residue
  · simpa [fibreTargets, modOneFibreTargets,
      modThreeFibreTargets] using fibreMarkersThree7Ordered residue
  · simpa [fibreTargets, modOneFibreTargets,
      modThreeFibreTargets] using fibreMarkersThree8Ordered residue

end Erdos848.GeneratedTailDiagonalCoverage
