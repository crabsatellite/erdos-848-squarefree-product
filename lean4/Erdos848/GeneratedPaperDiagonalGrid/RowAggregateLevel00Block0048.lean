import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0192
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0193
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0194
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0195

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0048 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0192 ++ rowsBlock0193) ++ (rowsBlock0194 ++ rowsBlock0195))

theorem rowsAggregateLevel00Block0048Cover :
    paperDiagonalGridCoversFrom 98959250 103660006 rowsAggregateLevel00Block0048 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0192Cover) (rowsBlock0193Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0194Cover) (rowsBlock0195Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
