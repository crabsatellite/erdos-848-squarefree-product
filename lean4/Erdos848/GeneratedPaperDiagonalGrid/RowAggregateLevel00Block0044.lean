import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0176
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0177
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0178
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0179

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0044 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0176 ++ rowsBlock0177) ++ (rowsBlock0178 ++ rowsBlock0179))

theorem rowsAggregateLevel00Block0044Cover :
    paperDiagonalGridCoversFrom 81695200 85706054 rowsAggregateLevel00Block0044 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0176Cover) (rowsBlock0177Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0178Cover) (rowsBlock0179Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
