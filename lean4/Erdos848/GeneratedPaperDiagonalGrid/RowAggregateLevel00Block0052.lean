import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0208
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0209
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0210
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0211

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0052 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0208 ++ rowsBlock0209) ++ (rowsBlock0210 ++ rowsBlock0211))

theorem rowsAggregateLevel00Block0052Cover :
    paperDiagonalGridCoversFrom 119689510 125565708 rowsAggregateLevel00Block0052 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0208Cover) (rowsBlock0209Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0210Cover) (rowsBlock0211Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
