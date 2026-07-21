import Erdos848.TailTenMillionOddTwoTerminals

namespace Erdos848

/-!
# Odd allocation after charging the ten-million even cells

Once the even allocation has either closed or charged all 27 even mod-nine
cells, the remaining dichotomy is purely finite.  If one odd valuation class
has at most 45 points, the other supplies a one-odd terminal.  Otherwise both
classes have active cells and the two-odd dispatcher applies.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

lemma fiveMillionR263OutsideOddOneCharge_subset_evenCharge
    (N : Nat) (B : Finset Nat) :
    fiveMillionR263OutsideValuationCharge N B .oddOne ⊆
      fiveMillionR263EvenCharge N B ∪
        fiveMillionValuationPart N B .oddThree := by
  intro x hx
  have hxParts := Finset.mem_sdiff.mp hx
  cases hclass : fiveMillionValuationClassOf x with
  | evenOne =>
      apply Finset.mem_union_left
      apply Finset.mem_union_left
      apply Finset.mem_union_left
      exact mem_fiveMillionValuationPart.mpr ⟨hxParts.1, hclass⟩
  | evenTwo =>
      apply Finset.mem_union_left
      apply Finset.mem_union_left
      apply Finset.mem_union_right
      exact mem_fiveMillionValuationPart.mpr ⟨hxParts.1, hclass⟩
  | evenThree =>
      apply Finset.mem_union_left
      apply Finset.mem_union_right
      exact mem_fiveMillionValuationPart.mpr ⟨hxParts.1, hclass⟩
  | oddOne =>
      exact False.elim (hxParts.2
        (mem_fiveMillionValuationPart.mpr ⟨hxParts.1, hclass⟩))
  | oddThree =>
      apply Finset.mem_union_right
      exact mem_fiveMillionValuationPart.mpr ⟨hxParts.1, hclass⟩

lemma fiveMillionR263OutsideOddThreeCharge_subset_evenCharge
    (N : Nat) (B : Finset Nat) :
    fiveMillionR263OutsideValuationCharge N B .oddThree ⊆
      fiveMillionR263EvenCharge N B ∪
        fiveMillionValuationPart N B .oddOne := by
  intro x hx
  have hxParts := Finset.mem_sdiff.mp hx
  cases hclass : fiveMillionValuationClassOf x with
  | evenOne =>
      apply Finset.mem_union_left
      apply Finset.mem_union_left
      apply Finset.mem_union_left
      exact mem_fiveMillionValuationPart.mpr ⟨hxParts.1, hclass⟩
  | evenTwo =>
      apply Finset.mem_union_left
      apply Finset.mem_union_left
      apply Finset.mem_union_right
      exact mem_fiveMillionValuationPart.mpr ⟨hxParts.1, hclass⟩
  | evenThree =>
      apply Finset.mem_union_left
      apply Finset.mem_union_right
      exact mem_fiveMillionValuationPart.mpr ⟨hxParts.1, hclass⟩
  | oddOne =>
      apply Finset.mem_union_right
      exact mem_fiveMillionValuationPart.mpr ⟨hxParts.1, hclass⟩
  | oddThree =>
      exact False.elim (hxParts.2
        (mem_fiveMillionValuationPart.mpr ⟨hxParts.1, hclass⟩))

theorem tenMillionR263OutsideOddOneCharge_ratio_le
    {N : Nat} {B : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hEvenCharge :
      ((fiveMillionR263EvenCharge N B).card : Rat) / N ≤
        27 * tenMillionCellCharge)
    (hOddThree :
      (fiveMillionValuationPart N B .oddThree).card ≤ 45) :
    ((fiveMillionR263OutsideValuationCharge N B .oddOne).card : Rat) /
        N ≤ 27 * tenMillionCellCharge + 45 / tenMillionLower := by
  have hcard :
      ((fiveMillionR263OutsideValuationCharge N B .oddOne).card : Rat) ≤
        (fiveMillionR263EvenCharge N B).card +
          (fiveMillionValuationPart N B .oddThree).card := by
    exact_mod_cast
      (Finset.card_le_card
        (fiveMillionR263OutsideOddOneCharge_subset_evenCharge N B)).trans
          (Finset.card_union_le _ _)
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast
      (lt_of_lt_of_le (by norm_num [tenMillionLower]) hLower)
  have hother :
      ((fiveMillionValuationPart N B .oddThree).card : Rat) / N ≤
        45 / tenMillionLower := by
    calc
      ((fiveMillionValuationPart N B .oddThree).card : Rat) / N ≤
          45 / N := by
        apply div_le_div_of_nonneg_right _ hNpos.le
        exact_mod_cast hOddThree
      _ ≤ 45 / tenMillionLower := by
        apply div_le_div_of_nonneg_left (by norm_num)
          (by norm_num [tenMillionLower])
        exact_mod_cast hLower
  calc
    ((fiveMillionR263OutsideValuationCharge N B .oddOne).card : Rat) /
        N ≤
      (fiveMillionR263EvenCharge N B).card / N +
        (fiveMillionValuationPart N B .oddThree).card / N := by
      rw [← add_div]
      exact div_le_div_of_nonneg_right hcard hNpos.le
    _ ≤ 27 * tenMillionCellCharge + 45 / tenMillionLower :=
      add_le_add hEvenCharge hother

theorem tenMillionR263OutsideOddThreeCharge_ratio_le
    {N : Nat} {B : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hEvenCharge :
      ((fiveMillionR263EvenCharge N B).card : Rat) / N ≤
        27 * tenMillionCellCharge)
    (hOddOne :
      (fiveMillionValuationPart N B .oddOne).card ≤ 45) :
    ((fiveMillionR263OutsideValuationCharge N B .oddThree).card : Rat) /
        N ≤ 27 * tenMillionCellCharge + 45 / tenMillionLower := by
  have hcard :
      ((fiveMillionR263OutsideValuationCharge N B .oddThree).card : Rat) ≤
        (fiveMillionR263EvenCharge N B).card +
          (fiveMillionValuationPart N B .oddOne).card := by
    exact_mod_cast
      (Finset.card_le_card
        (fiveMillionR263OutsideOddThreeCharge_subset_evenCharge N B)).trans
          (Finset.card_union_le _ _)
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast
      (lt_of_lt_of_le (by norm_num [tenMillionLower]) hLower)
  have hother :
      ((fiveMillionValuationPart N B .oddOne).card : Rat) / N ≤
        45 / tenMillionLower := by
    calc
      ((fiveMillionValuationPart N B .oddOne).card : Rat) / N ≤
          45 / N := by
        apply div_le_div_of_nonneg_right _ hNpos.le
        exact_mod_cast hOddOne
      _ ≤ 45 / tenMillionLower := by
        apply div_le_div_of_nonneg_left (by norm_num)
          (by norm_num [tenMillionLower])
        exact_mod_cast hLower
  calc
    ((fiveMillionR263OutsideValuationCharge N B .oddThree).card : Rat) /
        N ≤
      (fiveMillionR263EvenCharge N B).card / N +
        (fiveMillionValuationPart N B .oddOne).card / N := by
      rw [← add_div]
      exact div_le_div_of_nonneg_right hcard hNpos.le
    _ ≤ 27 * tenMillionCellCharge + 45 / tenMillionLower :=
      add_le_add hEvenCharge hother

lemma fiveMillionR263ActiveCellsOutsideOddOne_eq
    (N : Nat) (B : Finset Nat) :
    fiveMillionR263ActiveModNineCellsAfterCharge N B
        (fiveMillionR263OutsideValuationCharge N B .oddOne) =
      fiveMillionR263OddTwoActiveCells N B .oddOne := by
  ext cell
  simp only [fiveMillionR263ActiveModNineCellsAfterCharge,
    fiveMillionR263OddTwoActiveCells, Finset.mem_filter,
    Finset.mem_univ, true_and]
  congr 1
  unfold fiveMillionR263ChargedResidualModNineCell
  unfold fiveMillionR263OddTwoCell
  rw [fiveMillionStructuredResidual_r263OutsideValuationCharge]

lemma fiveMillionR263ActiveCellsOutsideOddThree_eq
    (N : Nat) (B : Finset Nat) :
    fiveMillionR263ActiveModNineCellsAfterCharge N B
        (fiveMillionR263OutsideValuationCharge N B .oddThree) =
      fiveMillionR263OddTwoActiveCells N B .oddThree := by
  ext cell
  simp only [fiveMillionR263ActiveModNineCellsAfterCharge,
    fiveMillionR263OddTwoActiveCells, Finset.mem_filter,
    Finset.mem_univ, true_and]
  congr 1
  unfold fiveMillionR263ChargedResidualModNineCell
  unfold fiveMillionR263OddTwoCell
  rw [fiveMillionStructuredResidual_r263OutsideValuationCharge]

/-- Exhaust the odd allocation from a charged-even ratio and a literal
91-point lower bound for the two odd valuation parts. -/
theorem tenMillionR263OddAllocationTerminal
    {N : Nat} {B : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcellCertificate : TenMillionDiagonalOneOddCellCertificate)
    (hEvenCharge :
      ((fiveMillionR263EvenCharge N B).card : Rat) / N ≤
        27 * tenMillionCellCharge)
    (hOddMass :
      91 ≤ (fiveMillionValuationPart N B .oddOne).card +
        (fiveMillionValuationPart N B .oddThree).card) :
    Nonempty (TenMillionR263TerminalCertificate N B) := by
  by_cases hOddThree :
      (fiveMillionValuationPart N B .oddThree).card ≤ 45
  · have hOddOne :
        46 ≤ (fiveMillionValuationPart N B .oddOne).card := by omega
    have hcells :
        (fiveMillionR263ActiveModNineCellsAfterCharge N B
          (fiveMillionR263OutsideValuationCharge N B .oddOne)).Nonempty := by
      rw [fiveMillionR263ActiveCellsOutsideOddOne_eq]
      exact fiveMillionR263OddTwoActiveCells_nonempty hOddOne
    exact ⟨tenMillionR263OneOddValuationTerminal
      hLower hUpper hBout hBprop hcellCertificate
      (cls := .oddOne) (Or.inl rfl)
      (tenMillionR263OutsideOddOneCharge_ratio_le
        hLower hEvenCharge hOddThree)
      hcells⟩
  · by_cases hOddOne :
        (fiveMillionValuationPart N B .oddOne).card ≤ 45
    · have hOddThree' :
          46 ≤ (fiveMillionValuationPart N B .oddThree).card := by omega
      have hcells :
          (fiveMillionR263ActiveModNineCellsAfterCharge N B
            (fiveMillionR263OutsideValuationCharge N B .oddThree)).Nonempty := by
        rw [fiveMillionR263ActiveCellsOutsideOddThree_eq]
        exact fiveMillionR263OddTwoActiveCells_nonempty hOddThree'
      exact ⟨tenMillionR263OneOddValuationTerminal
        hLower hUpper hBout hBprop hcellCertificate
        (cls := .oddThree) (Or.inr rfl)
        (tenMillionR263OutsideOddThreeCharge_ratio_le
          hLower hEvenCharge hOddOne)
        hcells⟩
    · have hOddOne' :
          46 ≤ (fiveMillionValuationPart N B .oddOne).card := by omega
      have hOddThree' :
          46 ≤ (fiveMillionValuationPart N B .oddThree).card := by omega
      exact tenMillionR263OddTwoTerminal
        hLower hUpper hBout hBprop hcellCertificate
        hEvenCharge hOddOne' hOddThree'

#print axioms tenMillionR263OutsideOddOneCharge_ratio_le
#print axioms fiveMillionR263ActiveCellsOutsideOddOne_eq
#print axioms tenMillionR263OddAllocationTerminal

end Erdos848
