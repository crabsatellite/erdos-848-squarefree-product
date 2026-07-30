import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0240
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0241
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0242
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0243

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0060 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0240 ++ rowsBlock0241) ++ (rowsBlock0242 ++ rowsBlock0243))

theorem rowsAggregateLevel00Block0060Cover :
    paperDiagonalGridCoversFrom 175283022 183888596 rowsAggregateLevel00Block0060 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0240Cover) (rowsBlock0241Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0242Cover) (rowsBlock0243Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
