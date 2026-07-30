import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0100
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0101
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0102
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0103

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0025 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0100 ++ rowsBlock0101) ++ (rowsBlock0102 ++ rowsBlock0103))

theorem rowsAggregateLevel00Block0025Cover :
    paperDiagonalGridCoversFrom 33081730 34705896 rowsAggregateLevel00Block0025 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0100Cover) (rowsBlock0101Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0102Cover) (rowsBlock0103Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
