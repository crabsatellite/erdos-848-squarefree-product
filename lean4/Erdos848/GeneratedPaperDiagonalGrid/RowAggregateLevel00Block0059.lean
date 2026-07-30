import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0236
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0237
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0238
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0239

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0059 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0236 ++ rowsBlock0237) ++ (rowsBlock0238 ++ rowsBlock0239))

theorem rowsAggregateLevel00Block0059Cover :
    paperDiagonalGridCoversFrom 167080168 175283022 rowsAggregateLevel00Block0059 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0236Cover) (rowsBlock0237Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0238Cover) (rowsBlock0239Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
