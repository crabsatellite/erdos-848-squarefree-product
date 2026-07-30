import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0168
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0169
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0170
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0171

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0042 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0168 ++ rowsBlock0169) ++ (rowsBlock0170 ++ rowsBlock0171))

theorem rowsAggregateLevel00Block0042Cover :
    paperDiagonalGridCoversFrom 74321893 77970755 rowsAggregateLevel00Block0042 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0168Cover) (rowsBlock0169Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0170Cover) (rowsBlock0171Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
