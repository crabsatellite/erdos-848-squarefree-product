import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0204
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0205
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0206
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0207

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0051 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0204 ++ rowsBlock0205) ++ (rowsBlock0206 ++ rowsBlock0207))

theorem rowsAggregateLevel00Block0051Cover :
    paperDiagonalGridCoversFrom 114088307 119689510 rowsAggregateLevel00Block0051 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0204Cover) (rowsBlock0205Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0206Cover) (rowsBlock0207Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
