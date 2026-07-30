import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0044
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0045
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0046
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0047

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0011 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0044 ++ rowsBlock0045) ++ (rowsBlock0046 ++ rowsBlock0047))

theorem rowsAggregateLevel00Block0011Cover :
    paperDiagonalGridCoversFrom 16942094 17773880 rowsAggregateLevel00Block0011 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0044Cover) (rowsBlock0045Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0046Cover) (rowsBlock0047Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
