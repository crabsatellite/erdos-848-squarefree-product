import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0068
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0069
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0070
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0071

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0017 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0068 ++ rowsBlock0069) ++ (rowsBlock0070 ++ rowsBlock0071))

theorem rowsAggregateLevel00Block0017Cover :
    paperDiagonalGridCoversFrom 22545908 23652815 rowsAggregateLevel00Block0017 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0068Cover) (rowsBlock0069Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0070Cover) (rowsBlock0071Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
