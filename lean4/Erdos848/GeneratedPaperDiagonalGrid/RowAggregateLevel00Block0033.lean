import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0132
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0133
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0134
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0135

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0033 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0132 ++ rowsBlock0133) ++ (rowsBlock0134 ++ rowsBlock0135))

theorem rowsAggregateLevel00Block0033Cover :
    paperDiagonalGridCoversFrom 48452931 50754518 rowsAggregateLevel00Block0033 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0132Cover) (rowsBlock0133Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0134Cover) (rowsBlock0135Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
