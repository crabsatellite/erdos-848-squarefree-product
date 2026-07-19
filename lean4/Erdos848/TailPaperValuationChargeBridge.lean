import Erdos848.TailGlobalMixedValuationPartition
import Erdos848.TailPaperSelectionChargeBounds

namespace Erdos848

/-!
# Paper charges as literal valuation parts

The paper removes valuation classes sequentially.  This file identifies those
charges with the canonical rejected sets used by the compact diagonal
certificates.  These are finite-set equalities, so later cardinality charges
do not rely on an informal interpretation of a diagonal selection.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def paperLowTwoAdicValuationCharge
    (N : Nat) (B : Finset Nat) : Finset Nat :=
  fiveMillionValuationPart N B .evenOne ∪
    fiveMillionValuationPart N B .evenTwo

def paperEvenValuationCharge
    (N : Nat) (B : Finset Nat) : Finset Nat :=
  paperLowTwoAdicValuationCharge N B ∪
    fiveMillionValuationPart N B .evenThree

def paperOddValuationClass : Bool → FiveMillionValuationClass
  | false => .oddOne
  | true => .oddThree

def paperOneOddValuationCharge
    (N : Nat) (B : Finset Nat) (parity : Bool) : Finset Nat :=
  hallResidual N B \
    fiveMillionValuationPart N B (paperOddValuationClass parity)

def paperValuationOutsideCellCharge
    (N : Nat) (B : Finset Nat) (cls : FiveMillionValuationClass)
    (cell : Fin 9) : Finset Nat :=
  (fiveMillionValuationPart N B cls).filter fun x =>
    paperModNineCell x ≠ cell

@[simp] theorem paperModNineCell_ne_iff
    (x : Nat) (cell : Fin 9) :
    paperModNineCell x ≠ cell ↔ x % 9 ≠ (cell : Nat) := by
  simp only [ne_eq, Fin.ext_iff, paperModNineCell_val]

theorem paperSelectionCharge_lowTwoAdic_eq_valuationCharge
    (N : Nat) (B : Finset Nat) :
    paperSelectionCharge (hallResidual N B) .lowTwoAdic =
      paperLowTwoAdicValuationCharge N B := by
  ext x
  have hrange : x % 8 < 8 := Nat.mod_lt x (by norm_num)
  interval_cases hmod : x % 8 <;>
    simp [paperLowTwoAdicValuationCharge,
      mem_paperSelectionCharge_lowTwoAdic_iff,
      fiveMillionValuationPart, fiveMillionValuationClassOf,
      hmod] <;>
    omega

theorem paperSelectionCharge_oddUnion_eq_evenValuationCharge
    (N : Nat) (B : Finset Nat) :
    paperSelectionCharge (hallResidual N B) .oddUnion =
      paperEvenValuationCharge N B := by
  ext x
  have hrange : x % 8 < 8 := Nat.mod_lt x (by norm_num)
  interval_cases hmod : x % 8 <;>
    simp [paperEvenValuationCharge, paperLowTwoAdicValuationCharge,
      mem_paperSelectionCharge_oddUnion_iff,
      fiveMillionValuationPart, fiveMillionValuationClassOf,
      hmod] <;>
    omega

theorem paperSelectionCharge_oneOdd_eq_valuationCharge
    (N : Nat) (B : Finset Nat) (parity : Bool) :
    paperSelectionCharge (hallResidual N B) (.oneOdd parity) =
      paperOneOddValuationCharge N B parity := by
  cases parity <;>
    ext x <;>
    have hrange : x % 8 < 8 := Nat.mod_lt x (by norm_num) <;>
    interval_cases hmod : x % 8 <;>
      simp [paperOneOddValuationCharge, paperOddValuationClass,
        mem_paperSelectionCharge_oneOdd_iff,
        oddModFourClass, fiveMillionValuationPart,
        fiveMillionValuationClassOf, hmod] <;>
      omega

theorem paperSelectionCharge_concentrated_evenOne_eq
    (N : Nat) (B : Finset Nat) (cell : Fin 9) :
    paperSelectionCharge (hallResidual N B)
        (.concentrated ⟨2, by decide⟩ cell) =
      paperValuationOutsideCellCharge N B .evenOne cell := by
  ext x
  have hrange : x % 8 < 8 := Nat.mod_lt x (by norm_num)
  interval_cases hmod : x % 8 <;>
    simp [paperValuationOutsideCellCharge,
      mem_paperSelectionCharge_concentrated_iff,
      fiveMillionValuationPart, fiveMillionValuationClassOf,
      paperModNineCell_ne_iff, hmod] <;>
    omega

theorem paperSelectionCharge_evenTwoCell_eq
    (N : Nat) (B : Finset Nat) (cell : Fin 9) :
    paperSelectionCharge (hallResidual N B) (.evenTwoCell cell) =
      fiveMillionValuationPart N B .evenOne ∪
        paperValuationOutsideCellCharge N B .evenTwo cell := by
  ext x
  have hrange : x % 8 < 8 := Nat.mod_lt x (by norm_num)
  interval_cases hmod : x % 8 <;>
    simp [paperValuationOutsideCellCharge,
      mem_paperSelectionCharge_evenTwoCell_iff,
      fiveMillionValuationPart, fiveMillionValuationClassOf,
      paperModNineCell_ne_iff, hmod] <;>
    omega

theorem paperSelectionCharge_oneOddCell_eq
    (N : Nat) (B : Finset Nat) (parity : Bool) (cell : Fin 9) :
    paperSelectionCharge (hallResidual N B) (.oneOddCell parity cell) =
      paperOneOddValuationCharge N B parity ∪
        paperValuationOutsideCellCharge N B
          (paperOddValuationClass parity) cell := by
  cases parity <;>
    ext x <;>
    have hrange : x % 8 < 8 := Nat.mod_lt x (by norm_num) <;>
    interval_cases hmod : x % 8 <;>
      simp [paperOneOddValuationCharge,
        paperValuationOutsideCellCharge, paperOddValuationClass,
        mem_paperSelectionCharge_oneOddCell_iff,
        oddModFourClass, fiveMillionValuationPart,
        fiveMillionValuationClassOf, paperModNineCell_ne_iff, hmod] <;>
      omega

theorem paperSelectionCharge_oddPlusCell_eq
    (N : Nat) (B : Finset Nat) (parity : Bool) (cell : Fin 9) :
    paperSelectionCharge (hallResidual N B) (.oddPlusCell parity cell) =
      paperEvenValuationCharge N B ∪
        paperValuationOutsideCellCharge N B
          (paperOddValuationClass (oppositeOddParity parity)) cell := by
  cases parity <;>
    ext x <;>
    have hrange : x % 8 < 8 := Nat.mod_lt x (by norm_num) <;>
    interval_cases hmod : x % 8 <;>
      simp [paperEvenValuationCharge, paperLowTwoAdicValuationCharge,
        paperValuationOutsideCellCharge, paperOddValuationClass,
        mem_paperSelectionCharge_oddPlusCell_iff,
        oddModFourClass, oppositeOddParity, fiveMillionValuationPart,
        fiveMillionValuationClassOf, paperModNineCell_ne_iff, hmod] <;>
      omega

theorem paperSelectionCharge_lowTwoAdic_card
    (N : Nat) (B : Finset Nat) :
    (paperSelectionCharge (hallResidual N B) .lowTwoAdic).card =
      (fiveMillionValuationPart N B .evenOne).card +
        (fiveMillionValuationPart N B .evenTwo).card := by
  rw [paperSelectionCharge_lowTwoAdic_eq_valuationCharge,
    paperLowTwoAdicValuationCharge,
    Finset.card_union_of_disjoint
      (fiveMillionValuationPart_disjoint N B (by decide))]

theorem paperSelectionCharge_oddUnion_card
    (N : Nat) (B : Finset Nat) :
    (paperSelectionCharge (hallResidual N B) .oddUnion).card =
      (fiveMillionValuationPart N B .evenOne).card +
        (fiveMillionValuationPart N B .evenTwo).card +
          (fiveMillionValuationPart N B .evenThree).card := by
  have hLowThree :
      Disjoint (paperLowTwoAdicValuationCharge N B)
        (fiveMillionValuationPart N B .evenThree) := by
    rw [Finset.disjoint_left]
    intro x hxLow hxThree
    rcases Finset.mem_union.mp hxLow with hxOne | hxTwo
    · exact (Finset.disjoint_left.mp
        (fiveMillionValuationPart_disjoint N B (by decide)))
          hxOne hxThree
    · exact (Finset.disjoint_left.mp
        (fiveMillionValuationPart_disjoint N B (by decide)))
          hxTwo hxThree
  rw [paperSelectionCharge_oddUnion_eq_evenValuationCharge,
    paperEvenValuationCharge,
    Finset.card_union_of_disjoint hLowThree,
    paperLowTwoAdicValuationCharge,
    Finset.card_union_of_disjoint
      (fiveMillionValuationPart_disjoint N B (by decide))]

theorem paperSelectionCharge_oneOdd_card_add_selected
    (N : Nat) (B : Finset Nat) (parity : Bool) :
    (paperSelectionCharge (hallResidual N B) (.oneOdd parity)).card +
        (fiveMillionValuationPart N B
          (paperOddValuationClass parity)).card =
      (hallResidual N B).card := by
  rw [paperSelectionCharge_oneOdd_eq_valuationCharge,
    paperOneOddValuationCharge]
  exact Finset.card_sdiff_add_card_eq_card
    (fiveMillionValuationPart_subset_residual N B
      (paperOddValuationClass parity))

theorem paperValuationOutsideCellCharge_card_le
    (N : Nat) (B : Finset Nat) (cls : FiveMillionValuationClass)
    (chosen : Fin 9) (gap : Nat)
    (hsparse :
      ∀ cell : Fin 9, cell ≠ chosen →
        (cellFibre (fiveMillionValuationPart N B cls)
          paperModNineCell cell).card ≤ gap) :
    (paperValuationOutsideCellCharge N B cls chosen).card ≤
      8 * gap := by
  let charged := paperValuationOutsideCellCharge N B cls chosen
  have houtside :
      ∀ x ∈ charged, paperModNineCell x ≠ chosen := by
    intro x hx
    exact (Finset.mem_filter.mp hx).2
  have hfibres :
      ∀ cell : Fin 9, cell ≠ chosen →
        (cellFibre charged paperModNineCell cell).card ≤ gap := by
    intro cell hcell
    have hsubset :
        cellFibre charged paperModNineCell cell ⊆
          cellFibre (fiveMillionValuationPart N B cls)
            paperModNineCell cell := by
      intro x hx
      have hxParts := Finset.mem_filter.mp hx
      exact Finset.mem_filter.mpr
        ⟨Finset.filter_subset _ _ hxParts.1, hxParts.2⟩
    exact (Finset.card_le_card hsubset).trans (hsparse cell hcell)
  have hbound :=
    card_le_erasedCellCount_mul_of_fibres_le
      charged paperModNineCell chosen gap houtside hfibres
  simpa [charged] using hbound

theorem paperSelectionCharge_concentrated_evenOne_card_le
    (N : Nat) (B : Finset Nat) (chosen : Fin 9) (gap : Nat)
    (hsparse :
      ∀ cell : Fin 9, cell ≠ chosen →
        (cellFibre (fiveMillionValuationPart N B .evenOne)
          paperModNineCell cell).card ≤ gap) :
    (paperSelectionCharge (hallResidual N B)
      (.concentrated ⟨2, by decide⟩ chosen)).card ≤ 8 * gap := by
  rw [paperSelectionCharge_concentrated_evenOne_eq]
  exact paperValuationOutsideCellCharge_card_le
    N B .evenOne chosen gap hsparse

theorem paperSelectionCharge_evenTwoCell_card_le
    (N : Nat) (B : Finset Nat) (chosen : Fin 9) (gap : Nat)
    (hEvenOne :
      (fiveMillionValuationPart N B .evenOne).card ≤ gap)
    (hsparse :
      ∀ cell : Fin 9, cell ≠ chosen →
        (cellFibre (fiveMillionValuationPart N B .evenTwo)
          paperModNineCell cell).card ≤ gap) :
    (paperSelectionCharge (hallResidual N B)
      (.evenTwoCell chosen)).card ≤ 9 * gap := by
  rw [paperSelectionCharge_evenTwoCell_eq]
  calc
    _ ≤ (fiveMillionValuationPart N B .evenOne).card +
        (paperValuationOutsideCellCharge N B .evenTwo chosen).card :=
      Finset.card_union_le _ _
    _ ≤ gap + 8 * gap := by
      gcongr
      exact paperValuationOutsideCellCharge_card_le
        N B .evenTwo chosen gap hsparse
    _ = 9 * gap := by omega

theorem paperSelectionCharge_oneOddCell_card_le_of_charge
    (N : Nat) (B : Finset Nat) (parity : Bool)
    (chosen : Fin 9) (gap charge : Nat)
    (hcharge :
      (paperOneOddValuationCharge N B parity).card ≤ charge)
    (hsparse :
      ∀ cell : Fin 9, cell ≠ chosen →
        (cellFibre
          (fiveMillionValuationPart N B
            (paperOddValuationClass parity))
          paperModNineCell cell).card ≤ gap) :
    (paperSelectionCharge (hallResidual N B)
      (.oneOddCell parity chosen)).card ≤ charge + 8 * gap := by
  rw [paperSelectionCharge_oneOddCell_eq]
  calc
    _ ≤ (paperOneOddValuationCharge N B parity).card +
        (paperValuationOutsideCellCharge N B
          (paperOddValuationClass parity) chosen).card :=
      Finset.card_union_le _ _
    _ ≤ charge + 8 * gap := by
      gcongr
      exact paperValuationOutsideCellCharge_card_le
        N B (paperOddValuationClass parity) chosen gap hsparse

theorem paperSelectionCharge_oddPlusCell_card_le_of_evenCharge
    (N : Nat) (B : Finset Nat) (parity : Bool)
    (chosen : Fin 9) (gap charge : Nat)
    (hcharge : (paperEvenValuationCharge N B).card ≤ charge)
    (hsparse :
      ∀ cell : Fin 9, cell ≠ chosen →
        (cellFibre
          (fiveMillionValuationPart N B
            (paperOddValuationClass (oppositeOddParity parity)))
          paperModNineCell cell).card ≤ gap) :
    (paperSelectionCharge (hallResidual N B)
      (.oddPlusCell parity chosen)).card ≤ charge + 8 * gap := by
  rw [paperSelectionCharge_oddPlusCell_eq]
  calc
    _ ≤ (paperEvenValuationCharge N B).card +
        (paperValuationOutsideCellCharge N B
          (paperOddValuationClass (oppositeOddParity parity))
            chosen).card :=
      Finset.card_union_le _ _
    _ ≤ charge + 8 * gap := by
      gcongr
      exact paperValuationOutsideCellCharge_card_le
        N B
        (paperOddValuationClass (oppositeOddParity parity))
        chosen gap hsparse

#print axioms paperSelectionCharge_lowTwoAdic_eq_valuationCharge
#print axioms paperSelectionCharge_oddUnion_eq_evenValuationCharge
#print axioms paperSelectionCharge_oneOdd_eq_valuationCharge
#print axioms paperSelectionCharge_concentrated_evenOne_eq
#print axioms paperSelectionCharge_evenTwoCell_eq
#print axioms paperSelectionCharge_oneOddCell_eq
#print axioms paperSelectionCharge_oddPlusCell_eq
#print axioms paperSelectionCharge_lowTwoAdic_card
#print axioms paperSelectionCharge_oddUnion_card
#print axioms paperSelectionCharge_oneOdd_card_add_selected
#print axioms paperValuationOutsideCellCharge_card_le
#print axioms paperSelectionCharge_concentrated_evenOne_card_le
#print axioms paperSelectionCharge_evenTwoCell_card_le
#print axioms paperSelectionCharge_oneOddCell_card_le_of_charge
#print axioms paperSelectionCharge_oddPlusCell_card_le_of_evenCharge

end Erdos848
