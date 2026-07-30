import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0048
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0049
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0050
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0051

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel01Block0012 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsAggregateLevel00Block0048 ++ rowsAggregateLevel00Block0049) ++ (rowsAggregateLevel00Block0050 ++ rowsAggregateLevel00Block0051))

theorem rowsAggregateLevel01Block0012Cover :
    paperDiagonalGridCoversFrom 98959250 119689510 rowsAggregateLevel01Block0012 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0048Cover) (rowsAggregateLevel00Block0049Cover))) ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0050Cover) (rowsAggregateLevel00Block0051Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
