import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0108
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0109
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0110
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0111

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0027 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0108 ++ rowsBlock0109) ++ (rowsBlock0110 ++ rowsBlock0111))

theorem rowsAggregateLevel00Block0027Cover :
    paperDiagonalGridCoversFrom 36409797 38197354 rowsAggregateLevel00Block0027 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0108Cover) (rowsBlock0109Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0110Cover) (rowsBlock0111Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
