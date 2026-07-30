import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0044
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0045
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0046
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0047

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel01Block0011 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsAggregateLevel00Block0044 ++ rowsAggregateLevel00Block0045) ++ (rowsAggregateLevel00Block0046 ++ rowsAggregateLevel00Block0047))

theorem rowsAggregateLevel01Block0011Cover :
    paperDiagonalGridCoversFrom 81695200 98959250 rowsAggregateLevel01Block0011 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0044Cover) (rowsAggregateLevel00Block0045Cover))) ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0046Cover) (rowsAggregateLevel00Block0047Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
