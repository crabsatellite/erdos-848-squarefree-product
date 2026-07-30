import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0052
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0053
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0054
import Erdos848.GeneratedPaperDiagonalGrid.RowBlock0055

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rowsAggregateLevel00Block0013 : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  ((rowsBlock0052 ++ rowsBlock0053) ++ (rowsBlock0054 ++ rowsBlock0055))

theorem rowsAggregateLevel00Block0013Cover :
    paperDiagonalGridCoversFrom 18646502 19561965 rowsAggregateLevel00Block0013 = true := by
  exact (paperDiagonalGridCoversFrom_append ((paperDiagonalGridCoversFrom_append (rowsBlock0052Cover) (rowsBlock0053Cover))) ((paperDiagonalGridCoversFrom_append (rowsBlock0054Cover) (rowsBlock0055Cover))))

end Erdos848.GeneratedPaperDiagonalGrid
