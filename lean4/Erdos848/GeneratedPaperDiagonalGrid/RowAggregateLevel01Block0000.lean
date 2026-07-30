import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0000
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0001
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0002
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0003

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel01Block0000 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsAggregateLevel00Block0000 ++ rowsAggregateLevel00Block0001) ++ (rowsAggregateLevel00Block0002 ++ rowsAggregateLevel00Block0003))

theorem rowsAggregateLevel01Block0000Cover :
    paperDiagonalGridCoversFrom 10000000 12113260 rowsAggregateLevel01Block0000 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0000Cover) (rowsAggregateLevel00Block0001Cover))) ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0002Cover) (rowsAggregateLevel00Block0003Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
