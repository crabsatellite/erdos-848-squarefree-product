import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0028
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0029
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0030
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0031

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0007 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0028 ++ rowsBlock0029) ++ (rowsBlock0030 ++ rowsBlock0031))

theorem rowsAggregateLevel00Block0007Cover :
    paperDiagonalGridCoversFrom 13986418 14673094 rowsAggregateLevel00Block0007 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0028Cover) (rowsBlock0029Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0030Cover) (rowsBlock0031Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
