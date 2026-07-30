import Erdos848.GeneratedHybridPaperDiagonalGrid.AllCutoffs

namespace Erdos848.GeneratedHybridPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def certifiedGridRow (i : Fin 463) :
    CertifiedHybridPaperDiagonalGridRow Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.atomTargets 9999999 :=
  ⟨gridRows i, by
    apply Bool.and_eq_true_iff.mpr
    constructor
    · exact decide_eq_true_eq.mpr (gridRowsCutoff i)
    · apply Bool.and_eq_true_iff.mpr
      exact ⟨decide_eq_true_eq.mpr (gridRowsArithmetic i).1,
        decide_eq_true_eq.mpr (gridRowsArithmetic i).2⟩⟩

def rows : List (CertifiedHybridPaperDiagonalGridRow Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.atomTargets 9999999) :=
  List.ofFn certifiedGridRow

theorem rowsCover :
    hybridPaperDiagonalGridCoversFrom 200000000 2000000000 rows = true := by
  decide

#print axioms rowsCover

end Erdos848.GeneratedHybridPaperDiagonalGrid
