import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0020
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0021
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0022
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0023

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0005 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0020 ++ rowsBlock0021) ++ (rowsBlock0022 ++ rowsBlock0023))

theorem rowsAggregateLevel00Block0005Cover :
    paperDiagonalGridCoversFrom 12707970 13331880 rowsAggregateLevel00Block0005 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0020Cover) (rowsBlock0021Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0022Cover) (rowsBlock0023Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
