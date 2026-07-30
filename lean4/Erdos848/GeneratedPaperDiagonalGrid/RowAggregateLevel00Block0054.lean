import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0216
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0217
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0218
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0219

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0054 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0216 ++ rowsBlock0217) ++ (rowsBlock0218 ++ rowsBlock0219))

theorem rowsAggregateLevel00Block0054Cover :
    paperDiagonalGridCoversFrom 131730398 138197745 rowsAggregateLevel00Block0054 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0216Cover) (rowsBlock0217Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0218Cover) (rowsBlock0219Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
