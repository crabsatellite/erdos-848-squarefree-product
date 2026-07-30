import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0080
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0081
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0082
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0083

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0020 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0080 ++ rowsBlock0081) ++ (rowsBlock0082 ++ rowsBlock0083))

theorem rowsAggregateLevel00Block0020Cover :
    paperDiagonalGridCoversFrom 26032326 27310399 rowsAggregateLevel00Block0020 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0080Cover) (rowsBlock0081Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0082Cover) (rowsBlock0083Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
