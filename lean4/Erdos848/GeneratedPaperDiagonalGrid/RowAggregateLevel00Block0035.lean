import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0140
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0141
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0142
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0143

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0035 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0140 ++ rowsBlock0141) ++ (rowsBlock0142 ++ rowsBlock0143))

theorem rowsAggregateLevel00Block0035Cover :
    paperDiagonalGridCoversFrom 53246333 55860484 rowsAggregateLevel00Block0035 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0140Cover) (rowsBlock0141Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0142Cover) (rowsBlock0143Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
