import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0196
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0197
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0198
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0199

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0049 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0196 ++ rowsBlock0197) ++ (rowsBlock0198 ++ rowsBlock0199))

theorem rowsAggregateLevel00Block0049Cover :
    paperDiagonalGridCoversFrom 103660006 108749227 rowsAggregateLevel00Block0049 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0196Cover) (rowsBlock0197Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0198Cover) (rowsBlock0199Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
