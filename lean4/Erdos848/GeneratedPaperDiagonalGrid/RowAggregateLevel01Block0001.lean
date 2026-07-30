import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0004
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0005
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0006
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0007

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel01Block0001 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsAggregateLevel00Block0004 ++ rowsAggregateLevel00Block0005) ++ (rowsAggregateLevel00Block0006 ++ rowsAggregateLevel00Block0007))

theorem rowsAggregateLevel01Block0001Cover :
    paperDiagonalGridCoversFrom 12113260 14673094 rowsAggregateLevel01Block0001 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0004Cover) (rowsAggregateLevel00Block0005Cover))) ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0006Cover) (rowsAggregateLevel00Block0007Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
