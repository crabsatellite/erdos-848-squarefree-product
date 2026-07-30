import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0040
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0041
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0042
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0043

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel01Block0010 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsAggregateLevel00Block0040 ++ rowsAggregateLevel00Block0041) ++ (rowsAggregateLevel00Block0042 ++ rowsAggregateLevel00Block0043))

theorem rowsAggregateLevel01Block0010Cover :
    paperDiagonalGridCoversFrom 67665085 81695200 rowsAggregateLevel01Block0010 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0040Cover) (rowsAggregateLevel00Block0041Cover))) ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0042Cover) (rowsAggregateLevel00Block0043Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
