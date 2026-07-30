import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0056
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0057
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0058
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0059

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0014 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0056 ++ rowsBlock0057) ++ (rowsBlock0058 ++ rowsBlock0059))

theorem rowsAggregateLevel00Block0014Cover :
    paperDiagonalGridCoversFrom 19561965 20485076 rowsAggregateLevel00Block0014 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0056Cover) (rowsBlock0057Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0058Cover) (rowsBlock0059Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
