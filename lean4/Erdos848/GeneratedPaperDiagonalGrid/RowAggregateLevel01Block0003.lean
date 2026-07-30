import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0012
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0013
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0014
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0015

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel01Block0003 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsAggregateLevel00Block0012 ++ rowsAggregateLevel00Block0013) ++ (rowsAggregateLevel00Block0014 ++ rowsAggregateLevel00Block0015))

theorem rowsAggregateLevel01Block0003Cover :
    paperDiagonalGridCoversFrom 17773880 21490803 rowsAggregateLevel01Block0003 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0012Cover) (rowsAggregateLevel00Block0013Cover))) ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0014Cover) (rowsAggregateLevel00Block0015Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
