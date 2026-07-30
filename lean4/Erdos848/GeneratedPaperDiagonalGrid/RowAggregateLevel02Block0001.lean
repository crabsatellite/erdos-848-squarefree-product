import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel01Block0004
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel01Block0005
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel01Block0006
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel01Block0007

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel02Block0001 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsAggregateLevel01Block0004 ++ rowsAggregateLevel01Block0005) ++ (rowsAggregateLevel01Block0006 ++ rowsAggregateLevel01Block0007))

theorem rowsAggregateLevel02Block0001Cover :
    paperDiagonalGridCoversFrom 21490803 46185436 rowsAggregateLevel02Block0001 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel01Block0004Cover) (rowsAggregateLevel01Block0005Cover))) ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel01Block0006Cover) (rowsAggregateLevel01Block0007Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
