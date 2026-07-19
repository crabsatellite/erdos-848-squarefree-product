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

def paperModNineCell (x : Nat) : Fin 9 :=
  (truncatedDiagonalAtomOf x).modNineCell

@[simp] theorem paperModNineCell_val (x : Nat) :
    (paperModNineCell x : Nat) = x % 9 := by
  rw [paperModNineCell, truncatedDiagonalAtomOf_modNineCell]

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

/-- If every nonchosen mod-nine fibre in one mod-four class has at most
`gap` points, the concentrated selection charges at most `8 * gap`.
Points in the other three mod-four classes are accepted for free. -/
theorem paperSelectionCharge_concentrated_card_le
    (residual : Finset Nat) (residueClass : Fin 4)
    (chosen : Fin 9) (gap : Nat)
    (hsparse :
      ∀ cell : Fin 9, cell ≠ chosen →
        ((residual.filter fun x =>
          x % 4 = (residueClass : Nat) ∧
            paperModNineCell x = cell).card ≤ gap)) :
    (paperSelectionCharge residual
      (.concentrated residueClass chosen)).card ≤ 8 * gap := by
  let charged :=
    paperSelectionCharge residual
      (.concentrated residueClass chosen)
  have houtside :
      ∀ x ∈ charged, paperModNineCell x ≠ chosen := by
    intro x hx
    have hxParts :=
      mem_paperSelectionCharge_concentrated_iff.mp hx
    intro hcell
    apply hxParts.2.2
    simpa using congrArg Fin.val hcell
  have hfibres :
      ∀ cell : Fin 9, cell ≠ chosen →
        (cellFibre charged paperModNineCell cell).card ≤ gap := by
    intro cell hcell
    have hsubset :
        cellFibre charged paperModNineCell cell ⊆
          residual.filter fun x =>
            x % 4 = (residueClass : Nat) ∧
              paperModNineCell x = cell := by
      intro x hx
      have hxFibre := Finset.mem_filter.mp hx
      have hxCharge :=
        mem_paperSelectionCharge_concentrated_iff.mp hxFibre.1
      exact Finset.mem_filter.mpr
        ⟨hxCharge.1, hxCharge.2.1, hxFibre.2⟩
    exact (Finset.card_le_card hsubset).trans (hsparse cell hcell)
  have hbound :=
    card_le_erasedCellCount_mul_of_fibres_le
      charged paperModNineCell chosen gap houtside hfibres
  simpa [charged] using hbound

/-- In a residual already confined to one odd mod-four class, a chosen
mod-nine cell leaves at most the other eight sparse fibres to charge. -/
theorem paperSelectionCharge_oneOddCell_card_le
    (residual : Finset Nat) (parity : Bool)
    (chosen : Fin 9) (gap : Nat)
    (hclass :
      ∀ x ∈ residual, x % 4 = oddModFourClass parity)
    (hsparse :
      ∀ cell : Fin 9, cell ≠ chosen →
        (cellFibre residual paperModNineCell cell).card ≤ gap) :
    (paperSelectionCharge residual
      (.oneOddCell parity chosen)).card ≤ 8 * gap := by
  let charged :=
    paperSelectionCharge residual (.oneOddCell parity chosen)
  have houtside :
      ∀ x ∈ charged, paperModNineCell x ≠ chosen := by
    intro x hx
    have hxParts := mem_paperSelectionCharge_oneOddCell_iff.mp hx
    have hxClass := hclass x hxParts.1
    rcases hxParts.2 with hwrongClass | hwrongCell
    · exact False.elim (hwrongClass hxClass)
    · intro hcell
      apply hwrongCell
      simpa using congrArg Fin.val hcell
  have hfibres :
      ∀ cell : Fin 9, cell ≠ chosen →
        (cellFibre charged paperModNineCell cell).card ≤ gap := by
    intro cell hcell
    have hsubset :
        cellFibre charged paperModNineCell cell ⊆
          cellFibre residual paperModNineCell cell := by
      intro x hx
      have hxParts := Finset.mem_filter.mp hx
      exact Finset.mem_filter.mpr
        ⟨paperSelectionCharge_subset residual
          (.oneOddCell parity chosen) hxParts.1, hxParts.2⟩
    exact (Finset.card_le_card hsubset).trans (hsparse cell hcell)
  have hbound :=
    card_le_erasedCellCount_mul_of_fibres_le
      charged paperModNineCell chosen gap houtside hfibres
  simpa [charged] using hbound

#print axioms paperSelectionCharge_unrestricted_eq_empty
#print axioms mem_paperSelectionCharge_concentrated_iff
#print axioms mem_paperSelectionCharge_lowTwoAdic_iff
#print axioms mem_paperSelectionCharge_evenTwoCell_iff
#print axioms mem_paperSelectionCharge_oddUnion_iff
#print axioms mem_paperSelectionCharge_oneOdd_iff
#print axioms mem_paperSelectionCharge_oneOddCell_iff
#print axioms mem_paperSelectionCharge_oddPlusCell_iff
#print axioms paperSelectionCharge_concentrated_card_le
#print axioms paperSelectionCharge_oneOddCell_card_le

end Erdos848
