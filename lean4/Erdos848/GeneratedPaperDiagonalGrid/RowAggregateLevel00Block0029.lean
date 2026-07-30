import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0116
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0117
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0118
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0119

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0029 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0116 ++ rowsBlock0117) ++ (rowsBlock0118 ++ rowsBlock0119))

theorem rowsAggregateLevel00Block0029Cover :
    paperDiagonalGridCoversFrom 40000000 41963821 rowsAggregateLevel00Block0029 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0116Cover) (rowsBlock0117Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0118Cover) (rowsBlock0119Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
