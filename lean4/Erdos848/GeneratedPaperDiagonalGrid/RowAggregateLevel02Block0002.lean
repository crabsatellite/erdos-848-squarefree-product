import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel01Block0008
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel01Block0009
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel01Block0010
import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel01Block0011

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel02Block0002 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsAggregateLevel01Block0008 ++ rowsAggregateLevel01Block0009) ++ (rowsAggregateLevel01Block0010 ++ rowsAggregateLevel01Block0011))

theorem rowsAggregateLevel02Block0002Cover :
    paperDiagonalGridCoversFrom 46185436 98959250 rowsAggregateLevel02Block0002 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel01Block0008Cover) (rowsAggregateLevel01Block0009Cover))) ((paperDiagonalGridCoversFrom_append (rowsAggregateLevel01Block0010Cover) (rowsAggregateLevel01Block0011Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
