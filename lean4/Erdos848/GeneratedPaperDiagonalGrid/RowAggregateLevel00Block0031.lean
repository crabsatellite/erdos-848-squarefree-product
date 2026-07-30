import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0124
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0125
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0126
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0127

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0031 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0124 ++ rowsBlock0125) ++ (rowsBlock0126 ++ rowsBlock0127))

theorem rowsAggregateLevel00Block0031Cover :
    paperDiagonalGridCoversFrom 44024054 46185436 rowsAggregateLevel00Block0031 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0124Cover) (rowsBlock0125Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0126Cover) (rowsBlock0127Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
