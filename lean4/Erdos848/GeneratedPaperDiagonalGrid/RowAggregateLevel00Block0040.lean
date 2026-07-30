import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0160
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0161
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0162
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0163

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0040 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0160 ++ rowsBlock0161) ++ (rowsBlock0162 ++ rowsBlock0163))

theorem rowsAggregateLevel00Block0040Cover :
    paperDiagonalGridCoversFrom 67665085 70843790 rowsAggregateLevel00Block0040 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0160Cover) (rowsBlock0161Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0162Cover) (rowsBlock0163Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
