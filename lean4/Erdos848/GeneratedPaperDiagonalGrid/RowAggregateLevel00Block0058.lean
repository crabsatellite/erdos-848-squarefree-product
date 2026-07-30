import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0232
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0233
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0234
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0235

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0058 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0232 ++ rowsBlock0233) ++ (rowsBlock0234 ++ rowsBlock0235))

theorem rowsAggregateLevel00Block0058Cover :
    paperDiagonalGridCoversFrom 159261189 167080168 rowsAggregateLevel00Block0058 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0232Cover) (rowsBlock0233Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0234Cover) (rowsBlock0235Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
