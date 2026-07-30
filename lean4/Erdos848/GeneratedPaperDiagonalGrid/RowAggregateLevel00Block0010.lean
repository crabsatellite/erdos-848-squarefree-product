import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0040
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0041
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0042
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0043

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0010 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0040 ++ rowsBlock0041) ++ (rowsBlock0042 ++ rowsBlock0043))

theorem rowsAggregateLevel00Block0010Cover :
    paperDiagonalGridCoversFrom 16149236 16942094 rowsAggregateLevel00Block0010 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0040Cover) (rowsBlock0041Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0042Cover) (rowsBlock0043Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
