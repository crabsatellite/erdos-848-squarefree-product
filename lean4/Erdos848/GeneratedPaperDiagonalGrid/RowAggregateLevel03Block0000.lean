import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel02Block0000
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel02Block0001
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel02Block0002
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel02Block0003

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel03Block0000 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsAggregateLevel02Block0000 ++ rowsAggregateLevel02Block0001) ++ (rowsAggregateLevel02Block0002 ++ rowsAggregateLevel02Block0003))

theorem rowsAggregateLevel03Block0000Cover :
    paperDiagonalGridCoversFrom 10000000 200000000 rowsAggregateLevel03Block0000 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel02Block0000Cover) (rowsAggregateLevel02Block0001Cover))) ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel02Block0002Cover) (rowsAggregateLevel02Block0003Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
