import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0248
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0249
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0250
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0251

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0062 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0248 ++ rowsBlock0249) ++ (rowsBlock0250 ++ rowsBlock0251))

theorem rowsAggregateLevel00Block0062Cover :
    paperDiagonalGridCoversFrom 192916662 200000000 rowsAggregateLevel00Block0062 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0248Cover) (rowsBlock0249Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0250Cover) (rowsBlock0251Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
