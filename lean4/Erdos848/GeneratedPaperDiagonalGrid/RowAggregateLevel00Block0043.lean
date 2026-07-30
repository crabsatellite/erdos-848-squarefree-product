import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0172
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0173
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0174
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0175

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0043 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0172 ++ rowsBlock0173) ++ (rowsBlock0174 ++ rowsBlock0175))

theorem rowsAggregateLevel00Block0043Cover :
    paperDiagonalGridCoversFrom 77970755 81695200 rowsAggregateLevel00Block0043 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0172Cover) (rowsBlock0173Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0174Cover) (rowsBlock0175Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
