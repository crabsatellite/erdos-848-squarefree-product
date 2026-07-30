import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0180
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0181
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0182
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0183

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0045 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0180 ++ rowsBlock0181) ++ (rowsBlock0182 ++ rowsBlock0183))

theorem rowsAggregateLevel00Block0045Cover :
    paperDiagonalGridCoversFrom 85706054 89913826 rowsAggregateLevel00Block0045 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0180Cover) (rowsBlock0181Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0182Cover) (rowsBlock0183Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
