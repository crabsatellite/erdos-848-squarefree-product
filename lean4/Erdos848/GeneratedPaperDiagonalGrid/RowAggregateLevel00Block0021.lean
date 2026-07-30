import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0084
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0085
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0086
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0087

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0021 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0084 ++ rowsBlock0085) ++ (rowsBlock0086 ++ rowsBlock0087))

theorem rowsAggregateLevel00Block0021Cover :
    paperDiagonalGridCoversFrom 27310399 28651218 rowsAggregateLevel00Block0021 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0084Cover) (rowsBlock0085Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0086Cover) (rowsBlock0087Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
