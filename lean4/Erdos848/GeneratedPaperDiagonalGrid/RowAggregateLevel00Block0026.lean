import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0104
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0105
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0106
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0107

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0026 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0104 ++ rowsBlock0105) ++ (rowsBlock0106 ++ rowsBlock0107))

theorem rowsAggregateLevel00Block0026Cover :
    paperDiagonalGridCoversFrom 34705896 36409797 rowsAggregateLevel00Block0026 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0104Cover) (rowsBlock0105Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0106Cover) (rowsBlock0107Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
