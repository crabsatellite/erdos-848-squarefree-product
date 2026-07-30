import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0056
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0057
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0058
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0059

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel01Block0014 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsAggregateLevel00Block0056 ++ rowsAggregateLevel00Block0057) ++ (rowsAggregateLevel00Block0058 ++ rowsAggregateLevel00Block0059))

theorem rowsAggregateLevel01Block0014Cover :
    paperDiagonalGridCoversFrom 144982608 175283022 rowsAggregateLevel01Block0014 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0056Cover) (rowsAggregateLevel00Block0057Cover))) ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0058Cover) (rowsAggregateLevel00Block0059Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
