import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0136
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0137
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0138
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0139

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0034 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0136 ++ rowsBlock0137) ++ (rowsBlock0138 ++ rowsBlock0139))

theorem rowsAggregateLevel00Block0034Cover :
    paperDiagonalGridCoversFrom 50754518 53246333 rowsAggregateLevel00Block0034 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0136Cover) (rowsBlock0137Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0138Cover) (rowsBlock0139Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
