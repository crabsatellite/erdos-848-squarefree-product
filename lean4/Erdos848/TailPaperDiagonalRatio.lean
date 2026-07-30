import Erdos848.TailPaperDiagonalGridChecker

namespace Erdos848

/-! The literal normalized cardinality attached to a paper diagonal selection. -/

def paperDiagonalRatio
    (N : Nat) (selection : PaperDiagonalSelection) : Rat :=
  (((tailDiagonalBad N).filter
    (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card : Rat) / N

end Erdos848
