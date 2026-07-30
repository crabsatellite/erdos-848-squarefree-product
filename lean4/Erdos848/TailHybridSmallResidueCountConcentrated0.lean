import Erdos848.TailHybridSmallResidueCRTData

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem smallSelectionResiduesCardConcentrated0 :
    ∀ cell : Fin 9,
      (PaperDiagonalSelection.concentrated
        ⟨0, by decide⟩ cell).selectionResidues.card = 28 := by
  decide

end Erdos848
