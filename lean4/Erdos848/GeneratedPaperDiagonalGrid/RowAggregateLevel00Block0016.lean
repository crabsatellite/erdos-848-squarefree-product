import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0064
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0065
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0066
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0067

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0016 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0064 ++ rowsBlock0065) ++ (rowsBlock0066 ++ rowsBlock0067))

theorem rowsAggregateLevel00Block0016Cover :
    paperDiagonalGridCoversFrom 21490803 22545908 rowsAggregateLevel00Block0016 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0064Cover) (rowsBlock0065Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0066Cover) (rowsBlock0067Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
