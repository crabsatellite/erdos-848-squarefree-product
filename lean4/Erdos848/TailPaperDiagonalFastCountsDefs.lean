import Erdos848.TailPaperDiagonalGridChecker

namespace Erdos848

/-!
# Closed-form data for paper diagonal atom-count sums
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def TruncatedDiagonalAtomCounts.sum9 (values : Fin 9 → Nat) : Nat :=
  ∑ index, values index

def TruncatedDiagonalAtomCounts.sum49 (values : Fin 49 → Nat) : Nat :=
  ∑ index, values index

def TruncatedDiagonalAtomCounts.evenOneTotal
    (counts : TruncatedDiagonalAtomCounts) : Nat :=
  ∑ cell, sum49 (counts.evenOne cell)

abbrev TruncatedDiagonalAtomCode :=
  Fin 9 ⊕ (Fin 9 ⊕ ((Fin 9 × Fin 49) ⊕ (Bool × Fin 9)))

def truncatedDiagonalAtomEquiv :
    TruncatedDiagonalAtom ≃ TruncatedDiagonalAtomCode where
  toFun
    | .divisibleByEightCell cell => Sum.inl cell
    | .evenTwoCell cell => Sum.inr (Sum.inl cell)
    | .evenOneFibre cell residue =>
        Sum.inr (Sum.inr (Sum.inl (cell, residue)))
    | .oddCell parity cell =>
        Sum.inr (Sum.inr (Sum.inr (parity, cell)))
  invFun
    | Sum.inl cell => .divisibleByEightCell cell
    | Sum.inr (Sum.inl cell) => .evenTwoCell cell
    | Sum.inr (Sum.inr (Sum.inl (cell, residue))) =>
        .evenOneFibre cell residue
    | Sum.inr (Sum.inr (Sum.inr (parity, cell))) =>
        .oddCell parity cell
  left_inv atom := by cases atom <;> rfl
  right_inv code := by
    rcases code with cell | cell | ⟨cell, residue⟩ | ⟨parity, cell⟩ <;>
      rfl

def TruncatedDiagonalAtomCounts.fastSum
    (counts : TruncatedDiagonalAtomCounts) :
    PaperDiagonalSelection → Nat
  | .unrestricted =>
      sum9 counts.divisibleByEight +
      sum9 counts.evenTwo +
      counts.evenOneTotal +
      sum9 counts.oddFalse +
      sum9 counts.oddTrue
  | .concentrated residueClass cell =>
      (if residueClass = ⟨0, by decide⟩
        then counts.divisibleByEight cell
        else sum9 counts.divisibleByEight) +
      (if residueClass = ⟨0, by decide⟩
        then counts.evenTwo cell
        else sum9 counts.evenTwo) +
      (if residueClass = ⟨2, by decide⟩
        then sum49 (counts.evenOne cell)
        else counts.evenOneTotal) +
      (if residueClass = ⟨1, by decide⟩
        then counts.oddFalse cell
        else sum9 counts.oddFalse) +
      (if residueClass = ⟨3, by decide⟩
        then counts.oddTrue cell
        else sum9 counts.oddTrue)
  | .lowTwoAdic =>
      sum9 counts.divisibleByEight +
      sum9 counts.oddFalse +
      sum9 counts.oddTrue
  | .evenTwoCell cell =>
      sum9 counts.divisibleByEight +
      counts.evenTwo cell +
      sum9 counts.oddFalse +
      sum9 counts.oddTrue
  | .oddUnion =>
      sum9 counts.oddFalse +
      sum9 counts.oddTrue
  | .oddPlusCell false cell =>
      sum9 counts.oddFalse + counts.oddTrue cell
  | .oddPlusCell true cell =>
      sum9 counts.oddTrue + counts.oddFalse cell
  | .oneOdd false =>
      sum9 counts.oddFalse
  | .oneOdd true =>
      sum9 counts.oddTrue
  | .oneOddCell false cell =>
      counts.oddFalse cell
  | .oneOddCell true cell =>
      counts.oddTrue cell

end Erdos848
