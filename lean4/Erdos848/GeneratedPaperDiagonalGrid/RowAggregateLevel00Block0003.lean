import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0012
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0013
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0014
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0015

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0003 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0012 ++ rowsBlock0013) ++ (rowsBlock0014 ++ rowsBlock0015))

theorem rowsAggregateLevel00Block0003Cover :
    paperDiagonalGridCoversFrom 11546379 12113260 rowsAggregateLevel00Block0003 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0012Cover) (rowsBlock0013Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0014Cover) (rowsBlock0015Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
