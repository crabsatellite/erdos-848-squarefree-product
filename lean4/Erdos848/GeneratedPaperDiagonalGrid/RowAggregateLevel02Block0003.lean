import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel01Block0012
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel01Block0013
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel01Block0014
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel01Block0015

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel02Block0003 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsAggregateLevel01Block0012 ++ rowsAggregateLevel01Block0013) ++ (rowsAggregateLevel01Block0014 ++ rowsAggregateLevel01Block0015))

theorem rowsAggregateLevel02Block0003Cover :
    paperDiagonalGridCoversFrom 98959250 200000000 rowsAggregateLevel02Block0003 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel01Block0012Cover) (rowsAggregateLevel01Block0013Cover))) ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel01Block0014Cover) (rowsAggregateLevel01Block0015Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
