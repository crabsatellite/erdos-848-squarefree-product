import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0004
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0005
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0006
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0007

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0001 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0004 ++ rowsBlock0005) ++ (rowsBlock0006 ++ rowsBlock0007))

theorem rowsAggregateLevel00Block0001Cover :
    paperDiagonalGridCoversFrom 10490962 11006025 rowsAggregateLevel00Block0001 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0004Cover) (rowsBlock0005Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0006Cover) (rowsBlock0007Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
