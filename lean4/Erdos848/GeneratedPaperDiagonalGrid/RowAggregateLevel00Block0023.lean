import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0092
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0093
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0094
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0095

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0023 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0092 ++ rowsBlock0093) ++ (rowsBlock0094 ++ rowsBlock0095))

theorem rowsAggregateLevel00Block0023Cover :
    paperDiagonalGridCoversFrom 30057865 31533571 rowsAggregateLevel00Block0023 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0092Cover) (rowsBlock0093Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0094Cover) (rowsBlock0095Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
