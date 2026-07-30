import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0088
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0089
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0090
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0091

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0022 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0088 ++ rowsBlock0089) ++ (rowsBlock0090 ++ rowsBlock0091))

theorem rowsAggregateLevel00Block0022Cover :
    paperDiagonalGridCoversFrom 28651218 30057865 rowsAggregateLevel00Block0022 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0088Cover) (rowsBlock0089Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0090Cover) (rowsBlock0091Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
