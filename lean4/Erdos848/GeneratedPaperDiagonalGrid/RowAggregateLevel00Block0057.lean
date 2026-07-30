import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0228
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0229
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0230
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0231

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0057 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0228 ++ rowsBlock0229) ++ (rowsBlock0230 ++ rowsBlock0231))

theorem rowsAggregateLevel00Block0057Cover :
    paperDiagonalGridCoversFrom 151808120 159261189 rowsAggregateLevel00Block0057 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0228Cover) (rowsBlock0229Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0230Cover) (rowsBlock0231Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
