import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel01Block0000
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel01Block0001
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel01Block0002
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel01Block0003

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel02Block0000 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsAggregateLevel01Block0000 ++ rowsAggregateLevel01Block0001) ++ (rowsAggregateLevel01Block0002 ++ rowsAggregateLevel01Block0003))

theorem rowsAggregateLevel02Block0000Cover :
    paperDiagonalGridCoversFrom 10000000 21490803 rowsAggregateLevel02Block0000 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel01Block0000Cover) (rowsAggregateLevel01Block0001Cover))) ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel01Block0002Cover) (rowsAggregateLevel01Block0003Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
