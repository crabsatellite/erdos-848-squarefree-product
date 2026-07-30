import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0096
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0097
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0098
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0099

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0024 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0096 ++ rowsBlock0097) ++ (rowsBlock0098 ++ rowsBlock0099))

theorem rowsAggregateLevel00Block0024Cover :
    paperDiagonalGridCoversFrom 31533571 33081730 rowsAggregateLevel00Block0024 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0096Cover) (rowsBlock0097Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0098Cover) (rowsBlock0099Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
