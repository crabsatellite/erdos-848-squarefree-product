import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0200
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0201
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0202
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0203

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0050 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0200 ++ rowsBlock0201) ++ (rowsBlock0202 ++ rowsBlock0203))

theorem rowsAggregateLevel00Block0050Cover :
    paperDiagonalGridCoversFrom 108749227 114088307 rowsAggregateLevel00Block0050 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0200Cover) (rowsBlock0201Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0202Cover) (rowsBlock0203Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
