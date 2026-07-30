import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0048
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0049
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0050
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0051

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0012 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0048 ++ rowsBlock0049) ++ (rowsBlock0050 ++ rowsBlock0051))

theorem rowsAggregateLevel00Block0012Cover :
    paperDiagonalGridCoversFrom 17773880 18646502 rowsAggregateLevel00Block0012 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0048Cover) (rowsBlock0049Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0050Cover) (rowsBlock0051Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
