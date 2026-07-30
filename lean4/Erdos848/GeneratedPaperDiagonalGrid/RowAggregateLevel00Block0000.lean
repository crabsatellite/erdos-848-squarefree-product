import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0000
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0001
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0002
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0003

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0000 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0000 ++ rowsBlock0001) ++ (rowsBlock0002 ++ rowsBlock0003))

theorem rowsAggregateLevel00Block0000Cover :
    paperDiagonalGridCoversFrom 10000000 10490962 rowsAggregateLevel00Block0000 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0000Cover) (rowsBlock0001Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0002Cover) (rowsBlock0003Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
