import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0020
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0021
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0022
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0023

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel01Block0005 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsAggregateLevel00Block0020 ++ rowsAggregateLevel00Block0021) ++ (rowsAggregateLevel00Block0022 ++ rowsAggregateLevel00Block0023))

theorem rowsAggregateLevel01Block0005Cover :
    paperDiagonalGridCoversFrom 26032326 31533571 rowsAggregateLevel01Block0005 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0020Cover) (rowsAggregateLevel00Block0021Cover))) ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0022Cover) (rowsAggregateLevel00Block0023Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
