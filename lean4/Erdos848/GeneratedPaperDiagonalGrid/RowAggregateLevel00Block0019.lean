import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0076
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0077
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0078
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0079

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0019 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0076 ++ rowsBlock0077) ++ (rowsBlock0078 ++ rowsBlock0079))

theorem rowsAggregateLevel00Block0019Cover :
    paperDiagonalGridCoversFrom 24814065 26032326 rowsAggregateLevel00Block0019 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0076Cover) (rowsBlock0077Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0078Cover) (rowsBlock0079Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
