import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0008
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0009
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0010
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel00Block0011

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel01Block0002 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsAggregateLevel00Block0008 ++ rowsAggregateLevel00Block0009) ++ (rowsAggregateLevel00Block0010 ++ rowsAggregateLevel00Block0011))

theorem rowsAggregateLevel01Block0002Cover :
    paperDiagonalGridCoversFrom 14673094 17773880 rowsAggregateLevel01Block0002 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0008Cover) (rowsAggregateLevel00Block0009Cover))) ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel00Block0010Cover) (rowsAggregateLevel00Block0011Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
