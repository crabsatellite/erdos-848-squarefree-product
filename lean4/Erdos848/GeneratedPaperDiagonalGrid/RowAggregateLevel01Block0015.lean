import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0060
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0061
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0062

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel01Block0015 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  (rowsAggregateLevel00Block0060 ++ (rowsAggregateLevel00Block0061 ++ rowsAggregateLevel00Block0062))

theorem rowsAggregateLevel01Block0015Cover :
    paperDiagonalGridCoversFrom 175283022 200000000 rowsAggregateLevel01Block0015 = true := by
  exact (paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0060Cover) ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0061Cover) (rowsAggregateLevel00Block0062Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
