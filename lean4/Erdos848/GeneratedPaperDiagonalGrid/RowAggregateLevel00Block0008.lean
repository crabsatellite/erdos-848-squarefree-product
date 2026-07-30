import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0032
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0033
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0034
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0035

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0008 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0032 ++ rowsBlock0033) ++ (rowsBlock0034 ++ rowsBlock0035))

theorem rowsAggregateLevel00Block0008Cover :
    paperDiagonalGridCoversFrom 14673094 15393481 rowsAggregateLevel00Block0008 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0032Cover) (rowsBlock0033Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0034Cover) (rowsBlock0035Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
