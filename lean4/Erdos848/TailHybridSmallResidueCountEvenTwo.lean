import Erdos848.TailHybridSmallResidueCRTData

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem smallSelectionResiduesCardEvenTwo :
    ∀ cell : Fin 9,
      (PaperDiagonalSelection.evenTwoCell
        cell).selectionResidues.card = 46 := by
  decide

end Erdos848
