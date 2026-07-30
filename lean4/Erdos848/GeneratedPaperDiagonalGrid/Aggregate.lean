import Erdos848.GeneratedPaperDiagonalGrid.RowAggregateLevel03Block0000

namespace Erdos848.GeneratedPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rows : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargets 9999999) :=
  rowsAggregateLevel03Block0000

theorem rowsCover :
    paperDiagonalGridCoversFrom 10000000 200000000 rows = true :=
  rowsAggregateLevel03Block0000Cover

#print axioms rowsCover

end Erdos848.GeneratedPaperDiagonalGrid
