import Erdos848.GeneratedPaperDiagonalGridTwentyMillion.AllCutoffs

namespace Erdos848.GeneratedPaperDiagonalGridTwentyMillion

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def certifiedGridRow (i : Fin 232) :
    CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargets 9999999 :=
  ⟨gridRows i, by
    apply Bool.and_eq_true_iff.mpr
    constructor
    · exact decide_eq_true_eq.mpr (gridRowsCutoff i)
    · apply Bool.and_eq_true_iff.mpr
      exact ⟨decide_eq_true_eq.mpr (gridRowsArithmetic i).1,
        decide_eq_true_eq.mpr (gridRowsArithmetic i).2⟩⟩

def rows : List (CertifiedPaperDiagonalGridRow Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargets 9999999) :=
  List.ofFn certifiedGridRow

theorem rowsCover :
    paperDiagonalGridCoversFrom 10000000 20000000 rows = true := by
  decide

#print axioms rowsCover

end Erdos848.GeneratedPaperDiagonalGridTwentyMillion
