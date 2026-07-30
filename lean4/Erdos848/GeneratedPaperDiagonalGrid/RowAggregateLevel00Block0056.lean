import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0224
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0225
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0226
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0227

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0056 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0224 ++ rowsBlock0225) ++ (rowsBlock0226 ++ rowsBlock0227))

theorem rowsAggregateLevel00Block0056Cover :
    paperDiagonalGridCoversFrom 144982608 151808120 rowsAggregateLevel00Block0056 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0224Cover) (rowsBlock0225Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0226Cover) (rowsBlock0227Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
