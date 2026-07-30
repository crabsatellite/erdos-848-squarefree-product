import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0016
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0017
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0018
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0019

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel01Block0004 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsAggregateLevel00Block0016 ++ rowsAggregateLevel00Block0017) ++ (rowsAggregateLevel00Block0018 ++ rowsAggregateLevel00Block0019))

theorem rowsAggregateLevel01Block0004Cover :
    paperDiagonalGridCoversFrom 21490803 26032326 rowsAggregateLevel01Block0004 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0016Cover) (rowsAggregateLevel00Block0017Cover))) ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0018Cover) (rowsAggregateLevel00Block0019Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
