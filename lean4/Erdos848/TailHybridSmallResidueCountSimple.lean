import Erdos848.TailHybridSmallResidueCRTData

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem smallSelectionResiduesCardUnrestricted :
    PaperDiagonalSelection.unrestricted.selectionResidues.card = 1 := by
  decide

theorem smallSelectionResiduesCardLowTwoAdic :
    PaperDiagonalSelection.lowTwoAdic.selectionResidues.card = 5 := by
  decide

theorem smallSelectionResiduesCardOddUnion :
    PaperDiagonalSelection.oddUnion.selectionResidues.card = 2 := by
  decide

theorem smallSelectionResiduesCardOneOdd :
    ∀ parity : Bool,
      (PaperDiagonalSelection.oneOdd parity).selectionResidues.card = 1 := by
  decide

end Erdos848
