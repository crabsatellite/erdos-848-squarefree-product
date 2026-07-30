import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0008
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0009
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0010
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0011

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0002 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0008 ++ rowsBlock0009) ++ (rowsBlock0010 ++ rowsBlock0011))

theorem rowsAggregateLevel00Block0002Cover :
    paperDiagonalGridCoversFrom 11006025 11546379 rowsAggregateLevel00Block0002 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0008Cover) (rowsBlock0009Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0010Cover) (rowsBlock0011Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
