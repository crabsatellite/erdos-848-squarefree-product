import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0244
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0245
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0246
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0247

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0061 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0244 ++ rowsBlock0245) ++ (rowsBlock0246 ++ rowsBlock0247))

theorem rowsAggregateLevel00Block0061Cover :
    paperDiagonalGridCoversFrom 183888596 192916662 rowsAggregateLevel00Block0061 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0244Cover) (rowsBlock0245Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0246Cover) (rowsBlock0247Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
