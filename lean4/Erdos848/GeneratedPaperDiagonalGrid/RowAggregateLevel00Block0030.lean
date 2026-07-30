import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0120
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0121
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0122
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0123

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0030 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0120 ++ rowsBlock0121) ++ (rowsBlock0122 ++ rowsBlock0123))

theorem rowsAggregateLevel00Block0030Cover :
    paperDiagonalGridCoversFrom 41963821 44024054 rowsAggregateLevel00Block0030 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0120Cover) (rowsBlock0121Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0122Cover) (rowsBlock0123Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
