import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0188
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0189
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0190
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0191

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0047 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0188 ++ rowsBlock0189) ++ (rowsBlock0190 ++ rowsBlock0191))

theorem rowsAggregateLevel00Block0047Cover :
    paperDiagonalGridCoversFrom 94328177 98959250 rowsAggregateLevel00Block0047 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0188Cover) (rowsBlock0189Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0190Cover) (rowsBlock0191Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
