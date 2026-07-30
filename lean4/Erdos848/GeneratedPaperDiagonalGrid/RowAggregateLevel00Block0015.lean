import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0060
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0061
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0062
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0063

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0015 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0060 ++ rowsBlock0061) ++ (rowsBlock0062 ++ rowsBlock0063))

theorem rowsAggregateLevel00Block0015Cover :
    paperDiagonalGridCoversFrom 20485076 21490803 rowsAggregateLevel00Block0015 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0060Cover) (rowsBlock0061Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0062Cover) (rowsBlock0063Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
