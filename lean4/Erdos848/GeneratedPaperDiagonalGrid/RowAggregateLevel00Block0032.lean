import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0128
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0129
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0130
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0131

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0032 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0128 ++ rowsBlock0129) ++ (rowsBlock0130 ++ rowsBlock0131))

theorem rowsAggregateLevel00Block0032Cover :
    paperDiagonalGridCoversFrom 46185436 48452931 rowsAggregateLevel00Block0032 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0128Cover) (rowsBlock0129Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0130Cover) (rowsBlock0131Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
