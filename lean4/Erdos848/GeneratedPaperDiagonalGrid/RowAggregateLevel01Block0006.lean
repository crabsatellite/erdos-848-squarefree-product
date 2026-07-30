import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0024
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0025
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0026
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0027

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel01Block0006 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsAggregateLevel00Block0024 ++ rowsAggregateLevel00Block0025) ++ (rowsAggregateLevel00Block0026 ++ rowsAggregateLevel00Block0027))

theorem rowsAggregateLevel01Block0006Cover :
    paperDiagonalGridCoversFrom 31533571 38197354 rowsAggregateLevel01Block0006 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0024Cover) (rowsAggregateLevel00Block0025Cover))) ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0026Cover) (rowsAggregateLevel00Block0027Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
