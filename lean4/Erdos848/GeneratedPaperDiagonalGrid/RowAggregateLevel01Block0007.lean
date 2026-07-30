import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0028
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0029
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0030
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0031

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel01Block0007 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsAggregateLevel00Block0028 ++ rowsAggregateLevel00Block0029) ++ (rowsAggregateLevel00Block0030 ++ rowsAggregateLevel00Block0031))

theorem rowsAggregateLevel01Block0007Cover :
    paperDiagonalGridCoversFrom 38197354 46185436 rowsAggregateLevel01Block0007 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0028Cover) (rowsAggregateLevel00Block0029Cover))) ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0030Cover) (rowsAggregateLevel00Block0031Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
