import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0052
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0053
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0054
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0055

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel01Block0013 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsAggregateLevel00Block0052 ++ rowsAggregateLevel00Block0053) ++ (rowsAggregateLevel00Block0054 ++ rowsAggregateLevel00Block0055))

theorem rowsAggregateLevel01Block0013Cover :
    paperDiagonalGridCoversFrom 119689510 144982608 rowsAggregateLevel01Block0013 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0052Cover) (rowsAggregateLevel00Block0053Cover))) ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0054Cover) (rowsAggregateLevel00Block0055Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
