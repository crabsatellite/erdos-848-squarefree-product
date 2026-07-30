import Erdos848.TailHybridSmallResidueCRTData

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem smallSelectionResiduesCardOneOddCell :
    ∀ parity : Bool, ∀ cell : Fin 9,
      (PaperDiagonalSelection.oneOddCell
        parity cell).selectionResidues.card = 1 := by
  decide

end Erdos848
