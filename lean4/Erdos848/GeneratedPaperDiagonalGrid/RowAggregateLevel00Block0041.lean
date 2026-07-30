import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0164
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0165
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0166
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0167

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0041 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0164 ++ rowsBlock0165) ++ (rowsBlock0166 ++ rowsBlock0167))

theorem rowsAggregateLevel00Block0041Cover :
    paperDiagonalGridCoversFrom 70843790 74321893 rowsAggregateLevel00Block0041 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0164Cover) (rowsBlock0165Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0166Cover) (rowsBlock0167Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
