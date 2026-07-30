import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0212
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0213
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0214
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0215

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0053 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0212 ++ rowsBlock0213) ++ (rowsBlock0214 ++ rowsBlock0215))

theorem rowsAggregateLevel00Block0053Cover :
    paperDiagonalGridCoversFrom 125565708 131730398 rowsAggregateLevel00Block0053 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0212Cover) (rowsBlock0213Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0214Cover) (rowsBlock0215Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
