import Erdos848.TailHybridSmallResidueCRTData

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem smallSelectionResiduesCardOddPlus :
    ∀ parity : Bool, ∀ cell : Fin 9,
      (PaperDiagonalSelection.oddPlusCell
        parity cell).selectionResidues.card = 10 := by
  decide

end Erdos848
