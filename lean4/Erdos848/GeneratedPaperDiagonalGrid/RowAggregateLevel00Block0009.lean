import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0036
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0037
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0038
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0039

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0009 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0036 ++ rowsBlock0037) ++ (rowsBlock0038 ++ rowsBlock0039))

theorem rowsAggregateLevel00Block0009Cover :
    paperDiagonalGridCoversFrom 15393481 16149236 rowsAggregateLevel00Block0009 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0036Cover) (rowsBlock0037Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0038Cover) (rowsBlock0039Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
