import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0032
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0033
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0034
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0035

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel01Block0008 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsAggregateLevel00Block0032 ++ rowsAggregateLevel00Block0033) ++ (rowsAggregateLevel00Block0034 ++ rowsAggregateLevel00Block0035))

theorem rowsAggregateLevel01Block0008Cover :
    paperDiagonalGridCoversFrom 46185436 55860484 rowsAggregateLevel01Block0008 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0032Cover) (rowsAggregateLevel00Block0033Cover))) ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0034Cover) (rowsAggregateLevel00Block0035Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
