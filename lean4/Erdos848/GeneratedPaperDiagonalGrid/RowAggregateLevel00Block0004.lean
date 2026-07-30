import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0016
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0017
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0018
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0019

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0004 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0016 ++ rowsBlock0017) ++ (rowsBlock0018 ++ rowsBlock0019))

theorem rowsAggregateLevel00Block0004Cover :
    paperDiagonalGridCoversFrom 12113260 12707970 rowsAggregateLevel00Block0004 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0016Cover) (rowsBlock0017Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0018Cover) (rowsBlock0019Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
