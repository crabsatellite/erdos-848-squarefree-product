import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0220
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0221
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0222
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0223

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0055 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0220 ++ rowsBlock0221) ++ (rowsBlock0222 ++ rowsBlock0223))

theorem rowsAggregateLevel00Block0055Cover :
    paperDiagonalGridCoversFrom 138197745 144982608 rowsAggregateLevel00Block0055 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0220Cover) (rowsBlock0221Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0222Cover) (rowsBlock0223Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
