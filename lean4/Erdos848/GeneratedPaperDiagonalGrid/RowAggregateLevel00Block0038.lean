import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0152
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0153
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0154
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0155

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0038 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0152 ++ rowsBlock0153) ++ (rowsBlock0154 ++ rowsBlock0155))

theorem rowsAggregateLevel00Block0038Cover :
    paperDiagonalGridCoversFrom 61480114 64498504 rowsAggregateLevel00Block0038 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0152Cover) (rowsBlock0153Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0154Cover) (rowsBlock0155Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
