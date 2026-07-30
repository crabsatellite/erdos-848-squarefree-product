import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0184
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0185
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0186
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0187

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0046 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0184 ++ rowsBlock0185) ++ (rowsBlock0186 ++ rowsBlock0187))

theorem rowsAggregateLevel00Block0046Cover :
    paperDiagonalGridCoversFrom 89913826 94328177 rowsAggregateLevel00Block0046 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0184Cover) (rowsBlock0185Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0186Cover) (rowsBlock0187Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
