import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0112
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0113
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0114
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0115

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0028 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0112 ++ rowsBlock0113) ++ (rowsBlock0114 ++ rowsBlock0115))

theorem rowsAggregateLevel00Block0028Cover :
    paperDiagonalGridCoversFrom 38197354 40000000 rowsAggregateLevel00Block0028 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0112Cover) (rowsBlock0113Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0114Cover) (rowsBlock0115Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
