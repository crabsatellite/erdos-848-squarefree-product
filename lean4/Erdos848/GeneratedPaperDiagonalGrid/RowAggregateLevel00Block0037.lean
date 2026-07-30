import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0148
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0149
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0150
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0151

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0037 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0148 ++ rowsBlock0149) ++ (rowsBlock0150 ++ rowsBlock0151))

theorem rowsAggregateLevel00Block0037Cover :
    paperDiagonalGridCoversFrom 58602978 61480114 rowsAggregateLevel00Block0037 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0148Cover) (rowsBlock0149Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0150Cover) (rowsBlock0151Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
