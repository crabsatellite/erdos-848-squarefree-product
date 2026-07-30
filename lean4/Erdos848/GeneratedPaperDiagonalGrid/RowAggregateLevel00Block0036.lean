import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0144
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0145
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0146
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0147

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0036 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0144 ++ rowsBlock0145) ++ (rowsBlock0146 ++ rowsBlock0147))

theorem rowsAggregateLevel00Block0036Cover :
    paperDiagonalGridCoversFrom 55860484 58602978 rowsAggregateLevel00Block0036 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0144Cover) (rowsBlock0145Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0146Cover) (rowsBlock0147Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
