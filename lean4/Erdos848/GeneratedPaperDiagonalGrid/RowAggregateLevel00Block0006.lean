import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0024
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0025
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0026
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0027

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0006 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0024 ++ rowsBlock0025) ++ (rowsBlock0026 ++ rowsBlock0027))

theorem rowsAggregateLevel00Block0006Cover :
    paperDiagonalGridCoversFrom 13331880 13986418 rowsAggregateLevel00Block0006 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0024Cover) (rowsBlock0025Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0026Cover) (rowsBlock0027Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
