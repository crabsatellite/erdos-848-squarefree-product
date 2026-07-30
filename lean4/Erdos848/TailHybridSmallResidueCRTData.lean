import Erdos848.TailHybridSmallPrimeDiagonalData

namespace Erdos848

def PaperDiagonalSelection.selectionPeriod :
    PaperDiagonalSelection → Nat
  | .unrestricted => 1
  | .concentrated _ _ => 36
  | .lowTwoAdic => 8
  | .evenTwoCell _ => 72
  | .oddUnion => 4
  | .oddPlusCell _ _ => 36
  | .oneOdd _ => 4
  | .oneOddCell _ _ => 36

def PaperDiagonalSelection.selectionResidues
    (selection : PaperDiagonalSelection) : Finset Nat :=
  (Finset.range selection.selectionPeriod).filter fun residue =>
    truncatedDiagonalAtomOf residue ∈ selection.atoms

def PaperDiagonalSelection.selectionResidueCount :
    PaperDiagonalSelection → Nat
  | .unrestricted => 1
  | .concentrated _ _ => 28
  | .lowTwoAdic => 5
  | .evenTwoCell _ => 46
  | .oddUnion => 2
  | .oddPlusCell _ _ => 10
  | .oneOdd _ => 1
  | .oneOddCell _ _ => 1

theorem PaperDiagonalSelection.smallPeriod_eq :
    ∀ selection : PaperDiagonalSelection,
      selection.smallPeriod = 25 * selection.selectionPeriod := by
  intro selection
  cases selection <;>
    rfl

theorem PaperDiagonalSelection.selectionPeriod_pos
    (selection : PaperDiagonalSelection) :
    0 < selection.selectionPeriod := by
  cases selection <;>
    norm_num [PaperDiagonalSelection.selectionPeriod]

theorem PaperDiagonalSelection.coprime_twentyFive_selectionPeriod
    (selection : PaperDiagonalSelection) :
    Nat.Coprime 25 selection.selectionPeriod := by
  cases selection <;>
    norm_num [PaperDiagonalSelection.selectionPeriod]

end Erdos848
