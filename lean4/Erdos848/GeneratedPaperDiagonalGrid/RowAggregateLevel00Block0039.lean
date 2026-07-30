import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0156
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0157
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0158
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0159

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0039 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0156 ++ rowsBlock0157) ++ (rowsBlock0158 ++ rowsBlock0159))

theorem rowsAggregateLevel00Block0039Cover :
    paperDiagonalGridCoversFrom 64498504 67665085 rowsAggregateLevel00Block0039 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0156Cover) (rowsBlock0157Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0158Cover) (rowsBlock0159Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
