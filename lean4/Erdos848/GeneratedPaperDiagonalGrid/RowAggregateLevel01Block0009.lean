import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0036
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0037
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0038
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0039

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel01Block0009 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsAggregateLevel00Block0036 ++ rowsAggregateLevel00Block0037) ++ (rowsAggregateLevel00Block0038 ++ rowsAggregateLevel00Block0039))

theorem rowsAggregateLevel01Block0009Cover :
    paperDiagonalGridCoversFrom 55860484 67665085 rowsAggregateLevel01Block0009 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0036Cover) (rowsAggregateLevel00Block0037Cover))) ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0038Cover) (rowsAggregateLevel00Block0039Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
