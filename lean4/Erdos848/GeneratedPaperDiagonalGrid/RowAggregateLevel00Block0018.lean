import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0072
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0073
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0074
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0075

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0018 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0072 ++ rowsBlock0073) ++ (rowsBlock0074 ++ rowsBlock0075))

theorem rowsAggregateLevel00Block0018Cover :
    paperDiagonalGridCoversFrom 23652815 24814065 rowsAggregateLevel00Block0018 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0072Cover) (rowsBlock0073Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0074Cover) (rowsBlock0075Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
