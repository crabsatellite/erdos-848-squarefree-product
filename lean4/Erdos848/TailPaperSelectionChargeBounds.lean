import Erdos848.TailPaperResidualCharge
import Erdos848.TailTenMillionCombinatorics

namespace Erdos848

/-!
# Pointwise descriptions of paper-selection charges

These lemmas turn the canonical rejected set into elementary congruence
conditions.  Interval branch proofs can therefore bound a literal finite
set of residue/cell exceptions and then invoke the common Hall charge
theorem.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem paperSelectionCharge_unrestricted_eq_empty
    (residual : Finset Nat) :
    paperSelectionCharge residual .unrestricted = ∅ := by
  ext x
  simp [paperSelectionCharge, mem_paperDiagonalUnrestrictedAtoms]

theorem mem_paperSelectionCharge_concentrated_iff
    {residual : Finset Nat} {residueClass : Fin 4}
    {cell : Fin 9} {x : Nat} :
    x ∈ paperSelectionCharge residual
        (.concentrated residueClass cell) ↔
      x ∈ residual ∧ x % 4 = residueClass ∧ x % 9 ≠ cell := by
  simp [paperSelectionCharge,
    mem_paperDiagonalConcentratedAtoms_iff]

theorem mem_paperSelectionCharge_lowTwoAdic_iff
    {residual : Finset Nat} {x : Nat} :
    x ∈ paperSelectionCharge residual .lowTwoAdic ↔
      x ∈ residual ∧ x % 8 ≠ 0 ∧ x % 8 ≠ 1 ∧
        x % 8 ≠ 3 ∧ x % 8 ≠ 5 ∧ x % 8 ≠ 7 := by
  simp [paperSelectionCharge,
    mem_paperDiagonalLowTwoAdicAtoms_iff]

theorem mem_paperSelectionCharge_evenTwoCell_iff
    {residual : Finset Nat} {cell : Fin 9} {x : Nat} :
    x ∈ paperSelectionCharge residual (.evenTwoCell cell) ↔
      x ∈ residual ∧ x % 8 ≠ 0 ∧ x % 8 ≠ 1 ∧
        x % 8 ≠ 3 ∧ x % 8 ≠ 5 ∧ x % 8 ≠ 7 ∧
          (x % 8 ≠ 4 ∨ x % 9 ≠ cell) := by
  simp [paperSelectionCharge,
    mem_paperDiagonalEvenTwoCellAtoms_iff] <;> tauto

theorem mem_paperSelectionCharge_oddUnion_iff
    {residual : Finset Nat} {x : Nat} :
    x ∈ paperSelectionCharge residual .oddUnion ↔
      x ∈ residual ∧ x % 4 ≠ 1 ∧ x % 4 ≠ 3 := by
  simp [paperSelectionCharge,
    mem_paperDiagonalOddUnionAtoms_iff]

theorem mem_paperSelectionCharge_oneOdd_iff
    {residual : Finset Nat} {parity : Bool} {x : Nat} :
    x ∈ paperSelectionCharge residual (.oneOdd parity) ↔
      x ∈ residual ∧ x % 4 ≠ oddModFourClass parity := by
  simp [paperSelectionCharge,
    mem_paperDiagonalOneOddAtoms_iff]

theorem mem_paperSelectionCharge_oneOddCell_iff
    {residual : Finset Nat} {parity : Bool}
    {cell : Fin 9} {x : Nat} :
    x ∈ paperSelectionCharge residual (.oneOddCell parity cell) ↔
      x ∈ residual ∧
        (x % 4 ≠ oddModFourClass parity ∨ x % 9 ≠ cell) := by
  simp [paperSelectionCharge,
    mem_paperDiagonalOneOddCellAtoms_iff] <;> tauto

theorem mem_paperSelectionCharge_oddPlusCell_iff
    {residual : Finset Nat} {parity : Bool}
    {cell : Fin 9} {x : Nat} :
    x ∈ paperSelectionCharge residual (.oddPlusCell parity cell) ↔
      x ∈ residual ∧
        x % 4 ≠ oddModFourClass parity ∧
          (x % 4 ≠ oddModFourClass (oppositeOddParity parity) ∨
            x % 9 ≠ cell) := by
  simp [paperSelectionCharge,
    mem_paperDiagonalOddPlusCellAtoms_iff] <;> tauto

#print axioms paperSelectionCharge_unrestricted_eq_empty
#print axioms mem_paperSelectionCharge_concentrated_iff
#print axioms mem_paperSelectionCharge_lowTwoAdic_iff
#print axioms mem_paperSelectionCharge_evenTwoCell_iff
#print axioms mem_paperSelectionCharge_oddUnion_iff
#print axioms mem_paperSelectionCharge_oneOdd_iff
#print axioms mem_paperSelectionCharge_oneOddCell_iff
#print axioms mem_paperSelectionCharge_oddPlusCell_iff

end Erdos848
