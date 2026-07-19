import Erdos848.TailR263OneOddExhaustion
import Erdos848.TailR263OddTwoActual
import Erdos848.GeneratedTailDiagonalCoverage.TailMatchEnvelopeAggregate

namespace Erdos848

/-!
# Exhausting the two-odd R263 allocation

The three even valuation parts are charged in full.  In each odd mod-four
class, every mod-nine cell of size at most five is also charged.  The remaining
active cells therefore supply literal pivots.  Disjoint triples give the
balanced six-pivot row; otherwise the active-cell union has cardinality at most
eleven and is split into the distinct-cell or common-cell four-pivot rows.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def fiveMillionR263OddTwoCell
    (N : Nat) (B : Finset Nat) (cls : FiveMillionValuationClass)
    (cell : Fin 9) : Finset Nat :=
  (fiveMillionValuationPart N B cls).filter fun x =>
    oddModNineResidue x = cell

def fiveMillionR263OddTwoActiveCells
    (N : Nat) (B : Finset Nat) (cls : FiveMillionValuationClass) :
    Finset (Fin 9) :=
  Finset.univ.filter fun cell =>
    6 <= (fiveMillionR263OddTwoCell N B cls cell).card

def fiveMillionR263OddTwoSparseCharge
    (N : Nat) (B : Finset Nat) (cls : FiveMillionValuationClass) :
    Finset Nat :=
  (fiveMillionValuationPart N B cls).filter fun x =>
    oddModNineResidue x ∉ fiveMillionR263OddTwoActiveCells N B cls

def fiveMillionR263EvenCharge
    (N : Nat) (B : Finset Nat) : Finset Nat :=
  (fiveMillionValuationPart N B .evenOne ∪
    fiveMillionValuationPart N B .evenTwo) ∪
      fiveMillionValuationPart N B .evenThree

def fiveMillionR263OddTwoCharge
    (N : Nat) (B : Finset Nat) : Finset Nat :=
  (fiveMillionR263EvenCharge N B ∪
    fiveMillionR263OddTwoSparseCharge N B .oddOne) ∪
      fiveMillionR263OddTwoSparseCharge N B .oddThree

lemma fiveMillionR263OddTwoCell_subset_part
    (N : Nat) (B : Finset Nat) (cls : FiveMillionValuationClass)
    (cell : Fin 9) :
    fiveMillionR263OddTwoCell N B cls cell ⊆
      fiveMillionValuationPart N B cls :=
  Finset.filter_subset _ _

lemma fiveMillionR263OddTwoInactiveCell_card_le_five
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    {cell : Fin 9}
    (hcell : cell ∈ Finset.univ \
      fiveMillionR263OddTwoActiveCells N B cls) :
    (fiveMillionR263OddTwoCell N B cls cell).card <= 5 := by
  have hnotActive := (Finset.mem_sdiff.mp hcell).2
  have hnotSix : ¬ 6 <=
      (fiveMillionR263OddTwoCell N B cls cell).card := by
    intro hsix
    exact hnotActive (Finset.mem_filter.mpr ⟨Finset.mem_univ _, hsix⟩)
  omega

theorem fiveMillionR263OddTwoSparseCharge_card_le_fortyFive
    (N : Nat) (B : Finset Nat) (cls : FiveMillionValuationClass) :
    (fiveMillionR263OddTwoSparseCharge N B cls).card <= 45 := by
  classical
  let inactive :=
    Finset.univ \ fiveMillionR263OddTwoActiveCells N B cls
  have hsubset : fiveMillionR263OddTwoSparseCharge N B cls ⊆
      inactive.biUnion (fiveMillionR263OddTwoCell N B cls) := by
    intro x hx
    have hxData := Finset.mem_filter.mp hx
    apply Finset.mem_biUnion.mpr
    refine ⟨oddModNineResidue x, ?_, ?_⟩
    · exact Finset.mem_sdiff.mpr ⟨Finset.mem_univ _, hxData.2⟩
    · exact Finset.mem_filter.mpr ⟨hxData.1, rfl⟩
  calc
    (fiveMillionR263OddTwoSparseCharge N B cls).card <=
        (inactive.biUnion (fiveMillionR263OddTwoCell N B cls)).card :=
      Finset.card_le_card hsubset
    _ <= ∑ cell ∈ inactive,
        (fiveMillionR263OddTwoCell N B cls cell).card := by
      simpa using Finset.card_biUnion_le
        (s := inactive) (t := fiveMillionR263OddTwoCell N B cls)
    _ <= ∑ _cell ∈ inactive, 5 := by
      apply Finset.sum_le_sum
      intro cell hcell
      exact fiveMillionR263OddTwoInactiveCell_card_le_five hcell
    _ = inactive.card * 5 := by simp
    _ <= 9 * 5 := by
      gcongr
      exact Finset.card_le_univ inactive
    _ = 45 := by norm_num

lemma fiveMillionR263EvenCharge_subset_residual
    (N : Nat) (B : Finset Nat) :
    fiveMillionR263EvenCharge N B ⊆ hallResidual N B := by
  intro x hx
  rcases Finset.mem_union.mp hx with hx | hx
  · rcases Finset.mem_union.mp hx with hx | hx
    · exact fiveMillionValuationPart_subset_residual N B .evenOne hx
    · exact fiveMillionValuationPart_subset_residual N B .evenTwo hx
  · exact fiveMillionValuationPart_subset_residual N B .evenThree hx

lemma fiveMillionR263EvenCharge_card_le_thirtyEight
    {N : Nat} {B : Finset Nat}
    (hEvenOne : (fiveMillionValuationPart N B .evenOne).card <= 10)
    (hEvenTwo : (fiveMillionValuationPart N B .evenTwo).card <= 10)
    (hEvenThree : (fiveMillionValuationPart N B .evenThree).card <= 18) :
    (fiveMillionR263EvenCharge N B).card <= 38 := by
  calc
    (fiveMillionR263EvenCharge N B).card <=
        (fiveMillionValuationPart N B .evenOne ∪
          fiveMillionValuationPart N B .evenTwo).card +
            (fiveMillionValuationPart N B .evenThree).card := by
      simpa [fiveMillionR263EvenCharge] using
        Finset.card_union_le
          (fiveMillionValuationPart N B .evenOne ∪
            fiveMillionValuationPart N B .evenTwo)
          (fiveMillionValuationPart N B .evenThree)
    _ <= ((fiveMillionValuationPart N B .evenOne).card +
          (fiveMillionValuationPart N B .evenTwo).card) +
            (fiveMillionValuationPart N B .evenThree).card := by
      gcongr
      exact Finset.card_union_le _ _
    _ <= 38 := by omega

lemma fiveMillionR263OddTwoCharge_subset_residual
    (N : Nat) (B : Finset Nat) :
    fiveMillionR263OddTwoCharge N B ⊆ hallResidual N B := by
  intro x hx
  rcases Finset.mem_union.mp hx with hx | hx
  · rcases Finset.mem_union.mp hx with hx | hx
    · exact fiveMillionR263EvenCharge_subset_residual N B hx
    · exact fiveMillionValuationPart_subset_residual N B .oddOne
        (Finset.filter_subset _ _ hx)
  · exact fiveMillionValuationPart_subset_residual N B .oddThree
      (Finset.filter_subset _ _ hx)

lemma fiveMillionR263OddTwoCharge_card_le_128
    {N : Nat} {B : Finset Nat}
    (hEvenOne : (fiveMillionValuationPart N B .evenOne).card <= 10)
    (hEvenTwo : (fiveMillionValuationPart N B .evenTwo).card <= 10)
    (hEvenThree : (fiveMillionValuationPart N B .evenThree).card <= 18) :
    (fiveMillionR263OddTwoCharge N B).card <= 128 := by
  have hEven := fiveMillionR263EvenCharge_card_le_thirtyEight
    hEvenOne hEvenTwo hEvenThree
  have hOne := fiveMillionR263OddTwoSparseCharge_card_le_fortyFive
    N B .oddOne
  have hThree := fiveMillionR263OddTwoSparseCharge_card_le_fortyFive
    N B .oddThree
  calc
    (fiveMillionR263OddTwoCharge N B).card <=
        (fiveMillionR263EvenCharge N B ∪
          fiveMillionR263OddTwoSparseCharge N B .oddOne).card +
            (fiveMillionR263OddTwoSparseCharge N B .oddThree).card := by
      simpa [fiveMillionR263OddTwoCharge] using
        Finset.card_union_le
          (fiveMillionR263EvenCharge N B ∪
            fiveMillionR263OddTwoSparseCharge N B .oddOne)
          (fiveMillionR263OddTwoSparseCharge N B .oddThree)
    _ <= ((fiveMillionR263EvenCharge N B).card +
          (fiveMillionR263OddTwoSparseCharge N B .oddOne).card) +
            (fiveMillionR263OddTwoSparseCharge N B .oddThree).card := by
      gcongr
      exact Finset.card_union_le _ _
    _ <= 38 + 45 + 45 := by omega
    _ = 128 := by norm_num

theorem mem_fiveMillionR263OddTwoStructuredResidual
    {N x : Nat} {B : Finset Nat} :
    x ∈ fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B) ↔
      (x ∈ fiveMillionValuationPart N B .oddOne ∧
        oddModNineResidue x ∈
          fiveMillionR263OddTwoActiveCells N B .oddOne) ∨
      (x ∈ fiveMillionValuationPart N B .oddThree ∧
        oddModNineResidue x ∈
          fiveMillionR263OddTwoActiveCells N B .oddThree) := by
  classical
  constructor
  · intro hx
    have hxData := Finset.mem_sdiff.mp hx
    cases hclass : fiveMillionValuationClassOf x with
    | evenOne =>
        exfalso
        apply hxData.2
        apply Finset.mem_union_left
        apply Finset.mem_union_left
        apply Finset.mem_union_left
        apply Finset.mem_union_left
        exact mem_fiveMillionValuationPart.mpr ⟨hxData.1, hclass⟩
    | evenTwo =>
        exfalso
        apply hxData.2
        apply Finset.mem_union_left
        apply Finset.mem_union_left
        apply Finset.mem_union_left
        apply Finset.mem_union_right
        exact mem_fiveMillionValuationPart.mpr ⟨hxData.1, hclass⟩
    | evenThree =>
        exfalso
        apply hxData.2
        apply Finset.mem_union_left
        apply Finset.mem_union_left
        apply Finset.mem_union_right
        exact mem_fiveMillionValuationPart.mpr ⟨hxData.1, hclass⟩
    | oddOne =>
        apply Or.inl
        have hxPart :=
          mem_fiveMillionValuationPart.mpr ⟨hxData.1, hclass⟩
        refine ⟨hxPart, ?_⟩
        by_contra hnotActive
        apply hxData.2
        apply Finset.mem_union_left
        apply Finset.mem_union_right
        exact Finset.mem_filter.mpr ⟨hxPart, hnotActive⟩
    | oddThree =>
        apply Or.inr
        have hxPart :=
          mem_fiveMillionValuationPart.mpr ⟨hxData.1, hclass⟩
        refine ⟨hxPart, ?_⟩
        by_contra hnotActive
        apply hxData.2
        apply Finset.mem_union_right
        exact Finset.mem_filter.mpr ⟨hxPart, hnotActive⟩
  · intro hx
    apply Finset.mem_sdiff.mpr
    rcases hx with hx | hx
    · refine ⟨fiveMillionValuationPart_subset_residual N B .oddOne hx.1, ?_⟩
      intro hcharge
      rcases Finset.mem_union.mp hcharge with hcharge | hcharge
      · rcases Finset.mem_union.mp hcharge with hEven | hSparse
        · rcases Finset.mem_union.mp hEven with hEven | hEven
          · rcases Finset.mem_union.mp hEven with hOne | hTwo
            · exact Finset.disjoint_left.mp
                (fiveMillionValuationPart_disjoint N B
                  (left := .evenOne) (right := .oddOne) (by decide))
                hOne hx.1
            · exact Finset.disjoint_left.mp
                (fiveMillionValuationPart_disjoint N B
                  (left := .evenTwo) (right := .oddOne) (by decide))
                hTwo hx.1
          · exact Finset.disjoint_left.mp
              (fiveMillionValuationPart_disjoint N B
                (left := .evenThree) (right := .oddOne) (by decide))
              hEven hx.1
        · exact (Finset.mem_filter.mp hSparse).2 hx.2
      · exact Finset.disjoint_left.mp
          (fiveMillionValuationPart_disjoint N B
            (left := .oddThree) (right := .oddOne) (by decide))
          (Finset.filter_subset _ _ hcharge) hx.1
    · refine ⟨fiveMillionValuationPart_subset_residual N B .oddThree hx.1, ?_⟩
      intro hcharge
      rcases Finset.mem_union.mp hcharge with hcharge | hSparse
      · rcases Finset.mem_union.mp hcharge with hEven | hOneSparse
        · rcases Finset.mem_union.mp hEven with hEven | hEven
          · rcases Finset.mem_union.mp hEven with hOne | hTwo
            · exact Finset.disjoint_left.mp
                (fiveMillionValuationPart_disjoint N B
                  (left := .evenOne) (right := .oddThree) (by decide))
                hOne hx.1
            · exact Finset.disjoint_left.mp
                (fiveMillionValuationPart_disjoint N B
                  (left := .evenTwo) (right := .oddThree) (by decide))
                hTwo hx.1
          · exact Finset.disjoint_left.mp
              (fiveMillionValuationPart_disjoint N B
                (left := .evenThree) (right := .oddThree) (by decide))
              hEven hx.1
        · exact Finset.disjoint_left.mp
            (fiveMillionValuationPart_disjoint N B
              (left := .oddOne) (right := .oddThree) (by decide))
            (Finset.filter_subset _ _ hOneSparse) hx.1
      · exact (Finset.mem_filter.mp hSparse).2 hx.2

lemma fiveMillionR263OddTwoActiveCells_nonempty
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    (hpart : 46 <= (fiveMillionValuationPart N B cls).card) :
    (fiveMillionR263OddTwoActiveCells N B cls).Nonempty := by
  classical
  by_contra hnone
  have hempty : fiveMillionR263OddTwoActiveCells N B cls = ∅ :=
    Finset.not_nonempty_iff_eq_empty.mp hnone
  have hsparse := fiveMillionR263OddTwoSparseCharge_card_le_fortyFive
    N B cls
  have heq : fiveMillionR263OddTwoSparseCharge N B cls =
      fiveMillionValuationPart N B cls := by
    ext x
    simp [fiveMillionR263OddTwoSparseCharge, hempty]
  rw [heq] at hsparse
  omega

theorem finNine_two_set_triple_dichotomy
    (leftCells rightCells : Finset (Fin 9)) :
    (∃ leftThree rightThree : Finset (Fin 9),
      leftThree ⊆ leftCells ∧ leftThree.card = 3 ∧
      rightThree ⊆ rightCells ∧ rightThree.card = 3 ∧
      Disjoint leftThree rightThree) ∨
    (leftCells ∪ rightCells).card <= 11 := by
  classical
  by_cases hleftThree : 3 <= leftCells.card
  · obtain ⟨leftThree, hleftSubset, hleftCard⟩ :=
      Finset.exists_subset_card_eq hleftThree
    by_cases hrightThree : 3 <= (rightCells \ leftThree).card
    · obtain ⟨rightThree, hrightSubsetDiff, hrightCard⟩ :=
        Finset.exists_subset_card_eq hrightThree
      apply Or.inl
      refine ⟨leftThree, rightThree, hleftSubset, hleftCard,
        hrightSubsetDiff.trans (Finset.sdiff_subset), hrightCard, ?_⟩
      rw [Finset.disjoint_left]
      intro cell hleft hright
      exact (Finset.mem_sdiff.mp (hrightSubsetDiff hright)).2 hleft
    · apply Or.inr
      have hrightDiff : (rightCells \ leftThree).card <= 2 := by omega
      have hsubset :
          leftCells ∪ rightCells ⊆
            leftCells ∪ (rightCells \ leftThree) := by
        intro cell hcell
        rcases Finset.mem_union.mp hcell with hleft | hright
        · exact Finset.mem_union_left _ hleft
        · by_cases hthree : cell ∈ leftThree
          · exact Finset.mem_union_left _ (hleftSubset hthree)
          · exact Finset.mem_union_right _
              (Finset.mem_sdiff.mpr ⟨hright, hthree⟩)
      calc
        (leftCells ∪ rightCells).card <=
            (leftCells ∪ (rightCells \ leftThree)).card :=
          Finset.card_le_card hsubset
        _ <= leftCells.card + (rightCells \ leftThree).card :=
          Finset.card_union_le _ _
        _ <= 9 + 2 := by
          gcongr
          exact Finset.card_le_univ leftCells
        _ = 11 := by norm_num
  · apply Or.inr
    have hleftCard : leftCells.card <= 2 := by omega
    calc
      (leftCells ∪ rightCells).card <=
          leftCells.card + rightCells.card := Finset.card_union_le _ _
      _ <= 2 + 9 := by
        gcongr
        exact Finset.card_le_univ rightCells
      _ = 11 := by norm_num

theorem exists_cross_ne_of_union_card_two
    {X : Type*} [DecidableEq X]
    {left right : Finset X}
    (hleft : left.Nonempty) (hright : right.Nonempty)
    (hcard : 2 <= (left ∪ right).card) :
    ∃ leftValue ∈ left, ∃ rightValue ∈ right,
      leftValue ≠ rightValue := by
  classical
  by_contra hnone
  push_neg at hnone
  have hleOne : (left ∪ right).card <= 1 := by
    apply Finset.card_le_one.mpr
    intro x hx y hy
    rcases Finset.mem_union.mp hx with hxLeft | hxRight <;>
      rcases Finset.mem_union.mp hy with hyLeft | hyRight
    · obtain ⟨anchor, hanchor⟩ := hright
      exact (hnone x hxLeft anchor hanchor).trans
        (hnone y hyLeft anchor hanchor).symm
    · exact hnone x hxLeft y hyRight
    · exact (hnone y hyLeft x hxRight).symm
    · obtain ⟨anchor, hanchor⟩ := hleft
      exact (hnone anchor hanchor x hxRight).symm.trans
        (hnone anchor hanchor y hyRight)
  omega

noncomputable def fiveMillionR263OddTwoCellPivot
    (N : Nat) (B : Finset Nat) (cls : FiveMillionValuationClass)
    (cell : Fin 9) : Nat := by
  classical
  exact if h : (fiveMillionR263OddTwoCell N B cls cell).Nonempty then
    Classical.choose h
  else
    0

lemma fiveMillionR263OddTwoCellPivot_mem
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    {cell : Fin 9}
    (hcell : cell ∈ fiveMillionR263OddTwoActiveCells N B cls) :
    fiveMillionR263OddTwoCellPivot N B cls cell ∈
      fiveMillionR263OddTwoCell N B cls cell := by
  classical
  have hsix := (Finset.mem_filter.mp hcell).2
  have hnonempty :
      (fiveMillionR263OddTwoCell N B cls cell).Nonempty :=
    Finset.card_pos.mp (by omega)
  rw [fiveMillionR263OddTwoCellPivot, dif_pos hnonempty]
  exact Classical.choose_spec hnonempty

noncomputable def fiveMillionR263OddTwoPivotsOfCells
    (N : Nat) (B : Finset Nat) (cls : FiveMillionValuationClass)
    (cells : Finset (Fin 9)) : Finset Nat :=
  cells.image (fiveMillionR263OddTwoCellPivot N B cls)

lemma fiveMillionR263OddTwoPivotsOfCells_card
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    {cells : Finset (Fin 9)}
    (hcells : cells ⊆ fiveMillionR263OddTwoActiveCells N B cls) :
    (fiveMillionR263OddTwoPivotsOfCells N B cls cells).card =
      cells.card := by
  classical
  apply Finset.card_image_iff.mpr
  intro left hleft right hright heq
  have hleftMem := fiveMillionR263OddTwoCellPivot_mem (hcells hleft)
  have hrightMem := fiveMillionR263OddTwoCellPivot_mem (hcells hright)
  have hleftCell := (Finset.mem_filter.mp hleftMem).2
  have hrightCell := (Finset.mem_filter.mp hrightMem).2
  exact hleftCell.symm.trans
    ((congrArg oddModNineResidue heq).trans hrightCell)

lemma fiveMillionR263OddTwoPivotsOfCells_subset_structured
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    {cells : Finset (Fin 9)}
    (hcls : cls = .oddOne ∨ cls = .oddThree)
    (hcells : cells ⊆ fiveMillionR263OddTwoActiveCells N B cls) :
    fiveMillionR263OddTwoPivotsOfCells N B cls cells ⊆
      fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B) := by
  classical
  intro pivot hpivot
  obtain ⟨cell, hcell, rfl⟩ := Finset.mem_image.mp hpivot
  have hpivotCell := fiveMillionR263OddTwoCellPivot_mem (hcells hcell)
  have hpivotPart := Finset.filter_subset _ _ hpivotCell
  have hpivotResidue := (Finset.mem_filter.mp hpivotCell).2
  rw [mem_fiveMillionR263OddTwoStructuredResidual]
  rcases hcls with rfl | rfl
  · apply Or.inl
    refine ⟨hpivotPart, ?_⟩
    rw [hpivotResidue]
    exact hcells hcell
  · apply Or.inr
    refine ⟨hpivotPart, ?_⟩
    rw [hpivotResidue]
    exact hcells hcell

theorem fiveMillionR263OddTwoBalancedPattern_exists
    {N : Nat} {B : Finset Nat}
    {leftCells rightCells : Finset (Fin 9)}
    (hleftSubset : leftCells ⊆
      fiveMillionR263OddTwoActiveCells N B .oddOne)
    (hleftCard : leftCells.card = 3)
    (hrightSubset : rightCells ⊆
      fiveMillionR263OddTwoActiveCells N B .oddThree)
    (hrightCard : rightCells.card = 3)
    (hcellsDisjoint : Disjoint leftCells rightCells) :
    ∃ pivots left right : Finset Nat,
      R263OddTwoBalancedPattern pivots left right ∧
      pivots ⊆ fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B) := by
  classical
  let left :=
    fiveMillionR263OddTwoPivotsOfCells N B .oddOne leftCells
  let right :=
    fiveMillionR263OddTwoPivotsOfCells N B .oddThree rightCells
  let pivots := left ∪ right
  have hleftStructured :
      left ⊆ fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B) := by
    exact fiveMillionR263OddTwoPivotsOfCells_subset_structured
      (Or.inl rfl) hleftSubset
  have hrightStructured :
      right ⊆ fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B) := by
    exact fiveMillionR263OddTwoPivotsOfCells_subset_structured
      (Or.inr rfl) hrightSubset
  have hleftPart :
      left ⊆ fiveMillionValuationPart N B .oddOne := by
    intro pivot hpivot
    obtain ⟨cell, hcell, rfl⟩ := Finset.mem_image.mp hpivot
    exact Finset.filter_subset _ _
      (fiveMillionR263OddTwoCellPivot_mem (hleftSubset hcell))
  have hrightPart :
      right ⊆ fiveMillionValuationPart N B .oddThree := by
    intro pivot hpivot
    obtain ⟨cell, hcell, rfl⟩ := Finset.mem_image.mp hpivot
    exact Finset.filter_subset _ _
      (fiveMillionR263OddTwoCellPivot_mem (hrightSubset hcell))
  have hlrDisjoint : Disjoint left right := by
    rw [Finset.disjoint_left]
    intro pivot hleft hright
    exact Finset.disjoint_left.mp
      (fiveMillionValuationPart_disjoint N B
        (left := .oddOne) (right := .oddThree) (by decide))
      (hleftPart hleft) (hrightPart hright)
  have hleftCard' : left.card = 3 := by
    simpa [left, hleftCard] using
      fiveMillionR263OddTwoPivotsOfCells_card hleftSubset
  have hrightCard' : right.card = 3 := by
    simpa [right, hrightCard] using
      fiveMillionR263OddTwoPivotsOfCells_card hrightSubset
  have hpivotsCard : pivots.card = 6 := by
    change (left ∪ right).card = 6
    rw [Finset.card_union_of_disjoint hlrDisjoint,
      hleftCard', hrightCard']
  have hdistinct : Set.InjOn (fun pivot : Nat => pivot % 9)
      (pivots : Set Nat) := by
    intro first hfirst second hsecond hmod
    have hfirstUnion : first ∈ left ∪ right := hfirst
    have hsecondUnion : second ∈ left ∪ right := hsecond
    rcases Finset.mem_union.mp hfirstUnion with hfirstLeft | hfirstRight <;>
      rcases Finset.mem_union.mp hsecondUnion with hsecondLeft | hsecondRight
    · obtain ⟨firstCell, hfirstCell, hfirstEq⟩ :=
        Finset.mem_image.mp hfirstLeft
      obtain ⟨secondCell, hsecondCell, hsecondEq⟩ :=
        Finset.mem_image.mp hsecondLeft
      have hfirstMem := fiveMillionR263OddTwoCellPivot_mem
        (hleftSubset hfirstCell)
      have hsecondMem := fiveMillionR263OddTwoCellPivot_mem
        (hleftSubset hsecondCell)
      have hfirstNine : first % 9 = firstCell.val := by
        simpa [oddModNineResidue, hfirstEq] using
          congrArg Fin.val (Finset.mem_filter.mp hfirstMem).2
      have hsecondNine : second % 9 = secondCell.val := by
        simpa [oddModNineResidue, hsecondEq] using
          congrArg Fin.val (Finset.mem_filter.mp hsecondMem).2
      have hcellEq : firstCell = secondCell :=
        Fin.ext (hfirstNine.symm.trans (hmod.trans hsecondNine))
      subst secondCell
      exact hfirstEq.symm.trans hsecondEq
    · obtain ⟨firstCell, hfirstCell, hfirstEq⟩ :=
        Finset.mem_image.mp hfirstLeft
      obtain ⟨secondCell, hsecondCell, hsecondEq⟩ :=
        Finset.mem_image.mp hsecondRight
      have hfirstMem := fiveMillionR263OddTwoCellPivot_mem
        (hleftSubset hfirstCell)
      have hsecondMem := fiveMillionR263OddTwoCellPivot_mem
        (hrightSubset hsecondCell)
      have hfirstNine : first % 9 = firstCell.val := by
        simpa [oddModNineResidue, hfirstEq] using
          congrArg Fin.val (Finset.mem_filter.mp hfirstMem).2
      have hsecondNine : second % 9 = secondCell.val := by
        simpa [oddModNineResidue, hsecondEq] using
          congrArg Fin.val (Finset.mem_filter.mp hsecondMem).2
      have hcellEq : firstCell = secondCell :=
        Fin.ext (hfirstNine.symm.trans (hmod.trans hsecondNine))
      exfalso
      have hfirstRight : firstCell ∈ rightCells := by
        simpa [hcellEq] using hsecondCell
      exact Finset.disjoint_left.mp hcellsDisjoint hfirstCell hfirstRight
    · obtain ⟨firstCell, hfirstCell, hfirstEq⟩ :=
        Finset.mem_image.mp hfirstRight
      obtain ⟨secondCell, hsecondCell, hsecondEq⟩ :=
        Finset.mem_image.mp hsecondLeft
      have hfirstMem := fiveMillionR263OddTwoCellPivot_mem
        (hrightSubset hfirstCell)
      have hsecondMem := fiveMillionR263OddTwoCellPivot_mem
        (hleftSubset hsecondCell)
      have hfirstNine : first % 9 = firstCell.val := by
        simpa [oddModNineResidue, hfirstEq] using
          congrArg Fin.val (Finset.mem_filter.mp hfirstMem).2
      have hsecondNine : second % 9 = secondCell.val := by
        simpa [oddModNineResidue, hsecondEq] using
          congrArg Fin.val (Finset.mem_filter.mp hsecondMem).2
      have hcellEq : secondCell = firstCell :=
        Fin.ext (hsecondNine.symm.trans (hmod.symm.trans hfirstNine))
      exfalso
      have hsecondRight : secondCell ∈ rightCells := by
        simpa [hcellEq] using hfirstCell
      exact Finset.disjoint_left.mp hcellsDisjoint hsecondCell hsecondRight
    · obtain ⟨firstCell, hfirstCell, hfirstEq⟩ :=
        Finset.mem_image.mp hfirstRight
      obtain ⟨secondCell, hsecondCell, hsecondEq⟩ :=
        Finset.mem_image.mp hsecondRight
      have hfirstMem := fiveMillionR263OddTwoCellPivot_mem
        (hrightSubset hfirstCell)
      have hsecondMem := fiveMillionR263OddTwoCellPivot_mem
        (hrightSubset hsecondCell)
      have hfirstNine : first % 9 = firstCell.val := by
        simpa [oddModNineResidue, hfirstEq] using
          congrArg Fin.val (Finset.mem_filter.mp hfirstMem).2
      have hsecondNine : second % 9 = secondCell.val := by
        simpa [oddModNineResidue, hsecondEq] using
          congrArg Fin.val (Finset.mem_filter.mp hsecondMem).2
      have hcellEq : firstCell = secondCell :=
        Fin.ext (hfirstNine.symm.trans (hmod.trans hsecondNine))
      subst secondCell
      exact hfirstEq.symm.trans hsecondEq
  refine ⟨pivots, left, right, ?_, ?_⟩
  · exact
      { pivotsCard := hpivotsCard
        leftCard := hleftCard'
        rightCard := hrightCard'
        cover := rfl
        leftClass := fun pivot hpivot =>
          fiveMillionValuationPart_oddOne (hleftPart hpivot)
        rightClass := fun pivot hpivot =>
          fiveMillionValuationPart_oddThree (hrightPart hpivot)
        distinctModNine := hdistinct }
  · intro pivot hpivot
    rcases Finset.mem_union.mp hpivot with hleft | hright
    · exact hleftStructured hleft
    · exact hrightStructured hright

private theorem fiveMillionR263OddTwoPairData
    {N : Nat} {B : Finset Nat}
    {leftCell rightCell : Fin 9}
    (hleftCell : leftCell ∈
      fiveMillionR263OddTwoActiveCells N B .oddOne)
    (hrightCell : rightCell ∈
      fiveMillionR263OddTwoActiveCells N B .oddThree) :
    ∃ left right : Finset Nat,
      left ⊆ fiveMillionR263OddTwoCell N B .oddOne leftCell ∧
      left.card = 2 ∧
      right ⊆ fiveMillionR263OddTwoCell N B .oddThree rightCell ∧
      right.card = 2 := by
  classical
  have hleftSix := (Finset.mem_filter.mp hleftCell).2
  have hrightSix := (Finset.mem_filter.mp hrightCell).2
  obtain ⟨left, hleftSubset, hleftCard⟩ :=
    Finset.exists_subset_card_eq (show
      2 <= (fiveMillionR263OddTwoCell N B .oddOne leftCell).card by omega)
  obtain ⟨right, hrightSubset, hrightCard⟩ :=
    Finset.exists_subset_card_eq (show
      2 <= (fiveMillionR263OddTwoCell N B .oddThree rightCell).card by omega)
  exact ⟨left, right, hleftSubset, hleftCard,
    hrightSubset, hrightCard⟩

theorem fiveMillionR263OddTwoSplitPairPattern_exists
    {N : Nat} {B : Finset Nat}
    {leftCell rightCell : Fin 9}
    (hleftCell : leftCell ∈
      fiveMillionR263OddTwoActiveCells N B .oddOne)
    (hrightCell : rightCell ∈
      fiveMillionR263OddTwoActiveCells N B .oddThree)
    (hcellsNe : leftCell ≠ rightCell) :
    ∃ pivots left right : Finset Nat,
      Nonempty (R263OddTwoSplitPairPattern pivots left right) ∧
      pivots ⊆ fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B) := by
  classical
  obtain ⟨left, right, hleftSubset, hleftCard,
      hrightSubset, hrightCard⟩ :=
    fiveMillionR263OddTwoPairData hleftCell hrightCell
  let pivots := left ∪ right
  have hleftPart : left ⊆ fiveMillionValuationPart N B .oddOne :=
    hleftSubset.trans (fiveMillionR263OddTwoCell_subset_part N B _ _)
  have hrightPart : right ⊆ fiveMillionValuationPart N B .oddThree :=
    hrightSubset.trans (fiveMillionR263OddTwoCell_subset_part N B _ _)
  have hdisjoint : Disjoint left right := by
    rw [Finset.disjoint_left]
    intro pivot hleft hright
    exact Finset.disjoint_left.mp
      (fiveMillionValuationPart_disjoint N B
        (left := .oddOne) (right := .oddThree) (by decide))
      (hleftPart hleft) (hrightPart hright)
  have hpivotsCard : pivots.card = 4 := by
    change (left ∪ right).card = 4
    rw [Finset.card_union_of_disjoint hdisjoint,
      hleftCard, hrightCard]
  refine ⟨pivots, left, right, ⟨?_
    ⟩, ?_⟩
  · exact
      { pivotsCard := hpivotsCard
        leftCard := hleftCard
        rightCard := hrightCard
        cover := rfl
        leftClass := fun pivot hpivot =>
          fiveMillionValuationPart_oddOne (hleftPart hpivot)
        rightClass := fun pivot hpivot =>
          fiveMillionValuationPart_oddThree (hrightPart hpivot)
        leftCell := leftCell
        rightCell := rightCell
        cellsNe := hcellsNe
        leftNine := by
          intro pivot hpivot
          exact congrArg Fin.val (Finset.mem_filter.mp
            (hleftSubset hpivot)).2
        rightNine := by
          intro pivot hpivot
          exact congrArg Fin.val (Finset.mem_filter.mp
            (hrightSubset hpivot)).2 }
  · intro pivot hpivot
    rcases Finset.mem_union.mp hpivot with hleft | hright
    · rw [mem_fiveMillionR263OddTwoStructuredResidual]
      apply Or.inl
      refine ⟨hleftPart hleft, ?_⟩
      rw [(Finset.mem_filter.mp (hleftSubset hleft)).2]
      exact hleftCell
    · rw [mem_fiveMillionR263OddTwoStructuredResidual]
      apply Or.inr
      refine ⟨hrightPart hright, ?_⟩
      rw [(Finset.mem_filter.mp (hrightSubset hright)).2]
      exact hrightCell

theorem fiveMillionR263OddTwoOneResiduePattern_exists
    {N : Nat} {B : Finset Nat} {commonCell : Fin 9}
    (hleftCell : commonCell ∈
      fiveMillionR263OddTwoActiveCells N B .oddOne)
    (hrightCell : commonCell ∈
      fiveMillionR263OddTwoActiveCells N B .oddThree) :
    ∃ pivots left right : Finset Nat,
      Nonempty (R263OddTwoOneResiduePattern pivots left right) ∧
      pivots ⊆ fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B) := by
  classical
  obtain ⟨left, right, hleftSubset, hleftCard,
      hrightSubset, hrightCard⟩ :=
    fiveMillionR263OddTwoPairData hleftCell hrightCell
  let pivots := left ∪ right
  have hleftPart : left ⊆ fiveMillionValuationPart N B .oddOne :=
    hleftSubset.trans (fiveMillionR263OddTwoCell_subset_part N B _ _)
  have hrightPart : right ⊆ fiveMillionValuationPart N B .oddThree :=
    hrightSubset.trans (fiveMillionR263OddTwoCell_subset_part N B _ _)
  have hdisjoint : Disjoint left right := by
    rw [Finset.disjoint_left]
    intro pivot hleft hright
    exact Finset.disjoint_left.mp
      (fiveMillionValuationPart_disjoint N B
        (left := .oddOne) (right := .oddThree) (by decide))
      (hleftPart hleft) (hrightPart hright)
  have hpivotsCard : pivots.card = 4 := by
    change (left ∪ right).card = 4
    rw [Finset.card_union_of_disjoint hdisjoint,
      hleftCard, hrightCard]
  refine ⟨pivots, left, right, ⟨?_
    ⟩, ?_⟩
  · exact
      { pivotsCard := hpivotsCard
        leftCard := hleftCard
        rightCard := hrightCard
        cover := rfl
        leftClass := fun pivot hpivot =>
          fiveMillionValuationPart_oddOne (hleftPart hpivot)
        rightClass := fun pivot hpivot =>
          fiveMillionValuationPart_oddThree (hrightPart hpivot)
        commonCell := commonCell
        leftNine := by
          intro pivot hpivot
          exact congrArg Fin.val (Finset.mem_filter.mp
            (hleftSubset hpivot)).2
        rightNine := by
          intro pivot hpivot
          exact congrArg Fin.val (Finset.mem_filter.mp
            (hrightSubset hpivot)).2 }
  · intro pivot hpivot
    rcases Finset.mem_union.mp hpivot with hleft | hright
    · rw [mem_fiveMillionR263OddTwoStructuredResidual]
      apply Or.inl
      refine ⟨hleftPart hleft, ?_⟩
      rw [(Finset.mem_filter.mp (hleftSubset hleft)).2]
      exact hleftCell
    · rw [mem_fiveMillionR263OddTwoStructuredResidual]
      apply Or.inr
      refine ⟨hrightPart hright, ?_⟩
      rw [(Finset.mem_filter.mp (hrightSubset hright)).2]
      exact hrightCell

def fiveMillionR263OddTwoFullDiagonalEnvelope : Rat :=
  2 * (6328567002752454 / 10^18 : Rat)

def fiveMillionR263OddTwoOneResidueDiagonalEnvelope : Rat :=
  2 * (708045205594373 / 10^18 : Rat)

def fiveMillionR263OddTwoBalancedBudget : Rat :=
  fiveMillionR263OddTwoFullDiagonalEnvelope + 128 / 5_000_000 +
    r263OptionRootFiniteEnvelope 42 + r263OddSixFiveTailEnvelope

def fiveMillionR263OddTwoSplitPairBudget : Rat :=
  fiveMillionR263OddTwoFullDiagonalEnvelope + 128 / 5_000_000 +
    r263OptionRootFiniteEnvelope 152 + r263OddFourThreeTailEnvelope

def fiveMillionR263OddTwoOneResidueBudget : Rat :=
  fiveMillionR263OddTwoOneResidueDiagonalEnvelope + 128 / 5_000_000 +
    r263OptionRootFiniteEnvelope 244 + r263OddFourThreeTailEnvelope

theorem fiveMillionR263OddTwoBalancedBudget_le_ceiling :
    fiveMillionR263OddTwoBalancedBudget <=
      fiveMillionR263BranchCeiling .oddTwoBalanced := by
  norm_num [fiveMillionR263OddTwoBalancedBudget,
    fiveMillionR263OddTwoFullDiagonalEnvelope,
    r263OptionRootFiniteEnvelope, r263OddSixFiveTailEnvelope,
    fiveMillionR263BranchCeiling, fiveMillionOddRoot7Envelope,
    fiveMillionSquareTail7Envelope]

theorem fiveMillionR263OddTwoSplitPairBudget_le_ceiling :
    fiveMillionR263OddTwoSplitPairBudget <=
      fiveMillionR263BranchCeiling .oddTwoAtMostElevenCells := by
  norm_num [fiveMillionR263OddTwoSplitPairBudget,
    fiveMillionR263OddTwoFullDiagonalEnvelope,
    r263OptionRootFiniteEnvelope, r263OddFourThreeTailEnvelope,
    fiveMillionR263BranchCeiling, fiveMillionOddRoot7Envelope,
    fiveMillionSquareTail7Envelope]

theorem fiveMillionR263OddTwoOneResidueBudget_le_ceiling :
    fiveMillionR263OddTwoOneResidueBudget <=
      fiveMillionR263BranchCeiling .oddTwoOneResidue := by
  norm_num [fiveMillionR263OddTwoOneResidueBudget,
    fiveMillionR263OddTwoOneResidueDiagonalEnvelope,
    r263OptionRootFiniteEnvelope, r263OddFourThreeTailEnvelope,
    fiveMillionR263BranchCeiling, fiveMillionOddRoot7Envelope,
    fiveMillionSquareTail7Envelope]

lemma fiveMillionR263OddTwoStructured_subset_fullDiagonal
    {N : Nat} {B : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B) :
    fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B) ⊆
      tailDiagonalCellUnion N false Finset.univ ∪
        tailDiagonalCellUnion N true Finset.univ := by
  intro x hx
  have hxResidual : x ∈ hallResidual N B :=
    (Finset.mem_sdiff.mp hx).1
  have hxBad := hallResidual_subset_generatedTailDiagonalBad
    hBout hBprop hxResidual
  rcases mem_fiveMillionR263OddTwoStructuredResidual.mp hx with
      hxOne | hxThree
  · apply Finset.mem_union_left
    apply Finset.mem_biUnion.mpr
    refine ⟨oddModNineResidue x, Finset.mem_univ _, ?_⟩
    apply Finset.mem_filter.mpr
    refine ⟨hxBad, ?_⟩
    exact ⟨fiveMillionValuationPart_oddOne hxOne.1, rfl⟩
  · apply Finset.mem_union_right
    apply Finset.mem_biUnion.mpr
    refine ⟨oddModNineResidue x, Finset.mem_univ _, ?_⟩
    apply Finset.mem_filter.mpr
    refine ⟨hxBad, ?_⟩
    exact ⟨fiveMillionValuationPart_oddThree hxThree.1, rfl⟩

theorem fiveMillionR263OddTwoFullStructuredDiagonal_kernel_close
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B) :
    ((fiveMillionStructuredResidual N B
      (fiveMillionR263OddTwoCharge N B)).card : Rat) / N <=
        fiveMillionR263OddTwoFullDiagonalEnvelope := by
  have hsubset :=
    fiveMillionR263OddTwoStructured_subset_fullDiagonal hBout hBprop
  have hcard :
      (fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B)).card <=
        (tailDiagonalCellUnion N false Finset.univ).card +
          (tailDiagonalCellUnion N true Finset.univ).card :=
    (Finset.card_le_card hsubset).trans
      (Finset.card_union_le _ _)
  have hcardQ :
      ((fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B)).card : Rat) <=
        (tailDiagonalCellUnion N false Finset.univ).card +
          (tailDiagonalCellUnion N true Finset.univ).card := by
    exact_mod_cast hcard
  have hNPositive : (0 : Rat) < N := by positivity
  calc
    ((fiveMillionStructuredResidual N B
      (fiveMillionR263OddTwoCharge N B)).card : Rat) / N <=
        (((tailDiagonalCellUnion N false Finset.univ).card : Rat) +
          (tailDiagonalCellUnion N true Finset.univ).card) / N :=
      div_le_div_of_nonneg_right hcardQ hNPositive.le
    _ = ((tailDiagonalCellUnion N false Finset.univ).card : Rat) / N +
        ((tailDiagonalCellUnion N true Finset.univ).card : Rat) / N := by
      ring
    _ <= (6328567002752454 / 10^18 : Rat) +
        (6328567002752454 / 10^18 : Rat) := by
      apply add_le_add
      · exact
          GeneratedTailDiagonalCoverage.fiveMillionOneOddS9Diagonal_kernel_close
            N hLower hUpper false Finset.univ (by simp)
      · exact
          GeneratedTailDiagonalCoverage.fiveMillionOneOddS9Diagonal_kernel_close
            N hLower hUpper true Finset.univ (by simp)
    _ = fiveMillionR263OddTwoFullDiagonalEnvelope := by
      norm_num [fiveMillionR263OddTwoFullDiagonalEnvelope]

lemma fiveMillionR263OddTwoStructured_subset_oneResidueDiagonal
    {N : Nat} {B : Finset Nat} {commonCell : Fin 9}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcommon : ∀ x ∈ fiveMillionStructuredResidual N B
      (fiveMillionR263OddTwoCharge N B),
        oddModNineResidue x = commonCell) :
    fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B) ⊆
      tailDiagonalCellUnion N false {commonCell} ∪
        tailDiagonalCellUnion N true {commonCell} := by
  intro x hx
  have hxResidual : x ∈ hallResidual N B :=
    (Finset.mem_sdiff.mp hx).1
  have hxBad := hallResidual_subset_generatedTailDiagonalBad
    hBout hBprop hxResidual
  rcases mem_fiveMillionR263OddTwoStructuredResidual.mp hx with
      hxOne | hxThree
  · apply Finset.mem_union_left
    apply Finset.mem_biUnion.mpr
    refine ⟨commonCell, by simp, ?_⟩
    apply Finset.mem_filter.mpr
    refine ⟨hxBad, ?_⟩
    exact ⟨fiveMillionValuationPart_oddOne hxOne.1,
      by
        simpa [oddModNineResidue] using
          congrArg Fin.val (hcommon x hx)⟩
  · apply Finset.mem_union_right
    apply Finset.mem_biUnion.mpr
    refine ⟨commonCell, by simp, ?_⟩
    apply Finset.mem_filter.mpr
    refine ⟨hxBad, ?_⟩
    exact ⟨fiveMillionValuationPart_oddThree hxThree.1,
      by
        simpa [oddModNineResidue] using
          congrArg Fin.val (hcommon x hx)⟩

theorem fiveMillionR263OddTwoOneResidueStructuredDiagonal_kernel_close
    {N : Nat} {B : Finset Nat} {commonCell : Fin 9}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcommon : ∀ x ∈ fiveMillionStructuredResidual N B
      (fiveMillionR263OddTwoCharge N B),
        oddModNineResidue x = commonCell) :
    ((fiveMillionStructuredResidual N B
      (fiveMillionR263OddTwoCharge N B)).card : Rat) / N <=
        fiveMillionR263OddTwoOneResidueDiagonalEnvelope := by
  have hsubset :=
    fiveMillionR263OddTwoStructured_subset_oneResidueDiagonal
      hBout hBprop hcommon
  have hcard :
      (fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B)).card <=
        (tailDiagonalCellUnion N false {commonCell}).card +
          (tailDiagonalCellUnion N true {commonCell}).card :=
    (Finset.card_le_card hsubset).trans
      (Finset.card_union_le _ _)
  have hcardQ :
      ((fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B)).card : Rat) <=
        (tailDiagonalCellUnion N false {commonCell}).card +
          (tailDiagonalCellUnion N true {commonCell}).card := by
    exact_mod_cast hcard
  have hNPositive : (0 : Rat) < N := by positivity
  calc
    ((fiveMillionStructuredResidual N B
      (fiveMillionR263OddTwoCharge N B)).card : Rat) / N <=
        (((tailDiagonalCellUnion N false {commonCell}).card : Rat) +
          (tailDiagonalCellUnion N true {commonCell}).card) / N :=
      div_le_div_of_nonneg_right hcardQ hNPositive.le
    _ = ((tailDiagonalCellUnion N false {commonCell}).card : Rat) / N +
        ((tailDiagonalCellUnion N true {commonCell}).card : Rat) / N := by
      ring
    _ <= (708045205594373 / 10^18 : Rat) +
        (708045205594373 / 10^18 : Rat) := by
      apply add_le_add
      · exact
          GeneratedTailDiagonalCoverage.fiveMillionOneOddS1Diagonal_kernel_close
            N hLower hUpper false {commonCell} (by simp)
      · exact
          GeneratedTailDiagonalCoverage.fiveMillionOneOddS1Diagonal_kernel_close
            N hLower hUpper true {commonCell} (by simp)
    _ = fiveMillionR263OddTwoOneResidueDiagonalEnvelope := by
      norm_num [fiveMillionR263OddTwoOneResidueDiagonalEnvelope]

theorem fiveMillionR263OddTwoResidual_ratio_le
    {N : Nat} {B : Finset Nat} {diagonalEnvelope : Rat}
    (hLower : 5_000_000 <= N)
    (hEvenOne : (fiveMillionValuationPart N B .evenOne).card <= 10)
    (hEvenTwo : (fiveMillionValuationPart N B .evenTwo).card <= 10)
    (hEvenThree : (fiveMillionValuationPart N B .evenThree).card <= 18)
    (hdiagonal : ((fiveMillionStructuredResidual N B
      (fiveMillionR263OddTwoCharge N B)).card : Rat) / N <=
        diagonalEnvelope) :
    ((hallResidual N B).card : Rat) / N <=
      diagonalEnvelope + 128 / 5_000_000 := by
  let charged := fiveMillionR263OddTwoCharge N B
  have hchargedSubset : charged ⊆ hallResidual N B :=
    fiveMillionR263OddTwoCharge_subset_residual N B
  have hchargedCard : charged.card <= 128 :=
    fiveMillionR263OddTwoCharge_card_le_128
      hEvenOne hEvenTwo hEvenThree
  have hpartition :
      (fiveMillionStructuredResidual N B charged).card + charged.card =
        (hallResidual N B).card := by
    simpa [fiveMillionStructuredResidual] using
      Finset.card_sdiff_add_card_eq_card hchargedSubset
  have hchargeRatio : (charged.card : Rat) / N <= 128 / N := by
    apply div_le_div_of_nonneg_right _ (by positivity)
    exact_mod_cast hchargedCard
  have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
  have hchargeAtCut : (128 : Rat) / N <= 128 / 5_000_000 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hLowerQ
  calc
    ((hallResidual N B).card : Rat) / N =
        ((fiveMillionStructuredResidual N B charged).card : Rat) / N +
          (charged.card : Rat) / N := by
      rw [← add_div]
      congr 1
      exact_mod_cast hpartition.symm
    _ <= diagonalEnvelope + 128 / N :=
      add_le_add hdiagonal hchargeRatio
    _ <= diagonalEnvelope + 128 / 5_000_000 :=
      add_le_add le_rfl hchargeAtCut

lemma fiveMillionR263OddTwoStructuredPivots_subset_residual
    {N : Nat} {B pivots : Finset Nat}
    (hpivotsStructured :
      pivots ⊆ fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B)) :
    pivots ⊆ hallResidual N B := by
  intro pivot hpivot
  exact (Finset.mem_sdiff.mp (hpivotsStructured hpivot)).1

lemma fiveMillionR263OddTwoStructuredPivots_subset_completion
    {N : Nat} {B pivots : Finset Nat}
    (hpivotsStructured :
      pivots ⊆ fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B)) :
    pivots ⊆ hallCompletion N B := by
  intro pivot hpivot
  exact (Finset.mem_sdiff.mp
    (fiveMillionR263OddTwoStructuredPivots_subset_residual
      hpivotsStructured hpivot)).1

lemma fiveMillionR263OddTwoStructuredPivots_odd
    {N : Nat} {B pivots : Finset Nat}
    (hpivotsStructured :
      pivots ⊆ fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B)) :
    ∀ pivot ∈ pivots, Odd pivot := by
  intro pivot hpivot
  rcases mem_fiveMillionR263OddTwoStructuredResidual.mp
      (hpivotsStructured hpivot) with hpivotOne | hpivotThree
  · exact fiveMillionValuationPart_odd (Or.inl rfl) hpivotOne.1
  · exact fiveMillionValuationPart_odd (Or.inr rfl) hpivotThree.1

noncomputable def fiveMillionR263OddTwoBalancedTerminal
    {N : Nat} {B pivots left right : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hEvenOne : (fiveMillionValuationPart N B .evenOne).card <= 10)
    (hEvenTwo : (fiveMillionValuationPart N B .evenTwo).card <= 10)
    (hEvenThree : (fiveMillionValuationPart N B .evenThree).card <= 18)
    (pattern : R263OddTwoBalancedPattern pivots left right)
    (hpivotsStructured :
      pivots ⊆ fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B)) :
    FiveMillionR263TerminalCertificate N B := by
  let hpivotsResidual :=
    fiveMillionR263OddTwoStructuredPivots_subset_residual
      hpivotsStructured
  let hpivotsCompletion :=
    fiveMillionR263OddTwoStructuredPivots_subset_completion
      hpivotsStructured
  let hpivotsOdd :=
    fiveMillionR263OddTwoStructuredPivots_odd hpivotsStructured
  have hdiagonal :=
    fiveMillionR263OddTwoFullStructuredDiagonal_kernel_close
      hLower hUpper hBout hBprop
  have hresidual :=
    fiveMillionR263OddTwoResidual_ratio_le
      hLower hEvenOne hEvenTwo hEvenThree hdiagonal
  have hfinite :=
    fiveMillionR263OptionRootFinitePayment_ratio_le
      hLower hBout hpivotsResidual (by norm_num : 42 <= 882)
        (pattern.period_card_le_42 (Or.inl rfl))
        (pattern.period_card_le_42 (Or.inr rfl))
  have htail :=
    hallBaseTailSquarePayment_sixFive_odd_ratio_le
      hLower hBout pattern.pivotsCard hpivotsResidual hpivotsOdd
  refine
    { branch := .oddTwoBalanced
      pivots := pivots
      cutoff := 7
      threshold := 5
      thresholdPositive := by norm_num
      thresholdCard := by rw [pattern.pivotsCard]; norm_num
      pivotsCompletion := hpivotsCompletion
      residualEnvelope :=
        fiveMillionR263OddTwoFullDiagonalEnvelope + 128 / 5_000_000
      finiteEnvelope := r263OptionRootFiniteEnvelope 42
      tailEnvelope := r263OddSixFiveTailEnvelope
      residualBound := hresidual
      finiteBound := hfinite
      tailBound := htail
      componentTotalBound := ?_ }
  simpa [fiveMillionR263OddTwoBalancedBudget] using
    fiveMillionR263OddTwoBalancedBudget_le_ceiling

noncomputable def fiveMillionR263OddTwoSplitPairTerminal
    {N : Nat} {B pivots left right : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hEvenOne : (fiveMillionValuationPart N B .evenOne).card <= 10)
    (hEvenTwo : (fiveMillionValuationPart N B .evenTwo).card <= 10)
    (hEvenThree : (fiveMillionValuationPart N B .evenThree).card <= 18)
    (pattern : R263OddTwoSplitPairPattern pivots left right)
    (hpivotsStructured :
      pivots ⊆ fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B)) :
    FiveMillionR263TerminalCertificate N B := by
  let hpivotsResidual :=
    fiveMillionR263OddTwoStructuredPivots_subset_residual
      hpivotsStructured
  let hpivotsCompletion :=
    fiveMillionR263OddTwoStructuredPivots_subset_completion
      hpivotsStructured
  let hpivotsOdd :=
    fiveMillionR263OddTwoStructuredPivots_odd hpivotsStructured
  have hdiagonal :=
    fiveMillionR263OddTwoFullStructuredDiagonal_kernel_close
      hLower hUpper hBout hBprop
  have hresidual :=
    fiveMillionR263OddTwoResidual_ratio_le
      hLower hEvenOne hEvenTwo hEvenThree hdiagonal
  have hfinite :=
    fiveMillionR263OptionRootFinitePayment_ratio_le
      hLower hBout hpivotsResidual (by norm_num : 152 <= 882)
        (pattern.period_card_le_152 (Or.inl rfl))
        (pattern.period_card_le_152 (Or.inr rfl))
  have htail :=
    hallBaseTailSquarePayment_fourThree_odd_ratio_le
      hLower hBout pattern.pivotsCard hpivotsResidual hpivotsOdd
  refine
    { branch := .oddTwoAtMostElevenCells
      pivots := pivots
      cutoff := 7
      threshold := 3
      thresholdPositive := by norm_num
      thresholdCard := by rw [pattern.pivotsCard]; norm_num
      pivotsCompletion := hpivotsCompletion
      residualEnvelope :=
        fiveMillionR263OddTwoFullDiagonalEnvelope + 128 / 5_000_000
      finiteEnvelope := r263OptionRootFiniteEnvelope 152
      tailEnvelope := r263OddFourThreeTailEnvelope
      residualBound := hresidual
      finiteBound := hfinite
      tailBound := htail
      componentTotalBound := ?_ }
  simpa [fiveMillionR263OddTwoSplitPairBudget] using
    fiveMillionR263OddTwoSplitPairBudget_le_ceiling

noncomputable def fiveMillionR263OddTwoOneResidueTerminal
    {N : Nat} {B pivots left right : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hEvenOne : (fiveMillionValuationPart N B .evenOne).card <= 10)
    (hEvenTwo : (fiveMillionValuationPart N B .evenTwo).card <= 10)
    (hEvenThree : (fiveMillionValuationPart N B .evenThree).card <= 18)
    (commonCell : Fin 9)
    (hcommon : ∀ x ∈ fiveMillionStructuredResidual N B
      (fiveMillionR263OddTwoCharge N B),
        oddModNineResidue x = commonCell)
    (pattern : R263OddTwoOneResiduePattern pivots left right)
    (hpivotsStructured :
      pivots ⊆ fiveMillionStructuredResidual N B
        (fiveMillionR263OddTwoCharge N B)) :
    FiveMillionR263TerminalCertificate N B := by
  let hpivotsResidual :=
    fiveMillionR263OddTwoStructuredPivots_subset_residual
      hpivotsStructured
  let hpivotsCompletion :=
    fiveMillionR263OddTwoStructuredPivots_subset_completion
      hpivotsStructured
  let hpivotsOdd :=
    fiveMillionR263OddTwoStructuredPivots_odd hpivotsStructured
  have hdiagonal :=
    fiveMillionR263OddTwoOneResidueStructuredDiagonal_kernel_close
      hLower hUpper hBout hBprop hcommon
  have hresidual :=
    fiveMillionR263OddTwoResidual_ratio_le
      hLower hEvenOne hEvenTwo hEvenThree hdiagonal
  have hfinite :=
    fiveMillionR263OptionRootFinitePayment_ratio_le
      hLower hBout hpivotsResidual (by norm_num : 244 <= 882)
        (pattern.period_card_le_244 (Or.inl rfl))
        (pattern.period_card_le_244 (Or.inr rfl))
  have htail :=
    hallBaseTailSquarePayment_fourThree_odd_ratio_le
      hLower hBout pattern.pivotsCard hpivotsResidual hpivotsOdd
  refine
    { branch := .oddTwoOneResidue
      pivots := pivots
      cutoff := 7
      threshold := 3
      thresholdPositive := by norm_num
      thresholdCard := by rw [pattern.pivotsCard]; norm_num
      pivotsCompletion := hpivotsCompletion
      residualEnvelope :=
        fiveMillionR263OddTwoOneResidueDiagonalEnvelope + 128 / 5_000_000
      finiteEnvelope := r263OptionRootFiniteEnvelope 244
      tailEnvelope := r263OddFourThreeTailEnvelope
      residualBound := hresidual
      finiteBound := hfinite
      tailBound := htail
      componentTotalBound := ?_ }
  simpa [fiveMillionR263OddTwoOneResidueBudget] using
    fiveMillionR263OddTwoOneResidueBudget_le_ceiling

/-- Complete dispatcher for the surviving two-odd allocation.  The only split
is the literal finite-set dichotomy on the two active mod-nine cell sets. -/
theorem fiveMillionR263OddTwoTerminal
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hEvenOne : (fiveMillionValuationPart N B .evenOne).card <= 10)
    (hEvenTwo : (fiveMillionValuationPart N B .evenTwo).card <= 10)
    (hEvenThree : (fiveMillionValuationPart N B .evenThree).card <= 18)
    (hOddOne : 46 <=
      (fiveMillionValuationPart N B .oddOne).card)
    (hOddThree : 46 <=
      (fiveMillionValuationPart N B .oddThree).card) :
    Nonempty (FiveMillionR263TerminalCertificate N B) := by
  classical
  let leftCells :=
    fiveMillionR263OddTwoActiveCells N B .oddOne
  let rightCells :=
    fiveMillionR263OddTwoActiveCells N B .oddThree
  have hleftNonempty : leftCells.Nonempty := by
    simpa [leftCells] using
      (fiveMillionR263OddTwoActiveCells_nonempty hOddOne)
  have hrightNonempty : rightCells.Nonempty := by
    simpa [rightCells] using
      (fiveMillionR263OddTwoActiveCells_nonempty hOddThree)
  rcases finNine_two_set_triple_dichotomy leftCells rightCells with
      hbalanced | hsmall
  · obtain ⟨leftThree, rightThree, hleftSubset, hleftCard,
      hrightSubset, hrightCard, hdisjoint⟩ := hbalanced
    obtain ⟨pivots, left, right, pattern, hpivotsStructured⟩ :=
      fiveMillionR263OddTwoBalancedPattern_exists
        (by simpa [leftCells] using hleftSubset) hleftCard
        (by simpa [rightCells] using hrightSubset) hrightCard
        hdisjoint
    exact ⟨fiveMillionR263OddTwoBalancedTerminal
      hLower hUpper hBout hBprop hEvenOne hEvenTwo hEvenThree
        pattern hpivotsStructured⟩
  · by_cases hsingleton : (leftCells ∪ rightCells).card = 1
    · obtain ⟨commonCell, hcommonLeft⟩ := hleftNonempty
      obtain ⟨rightCell, hrightCell⟩ := hrightNonempty
      have hleOne : (leftCells ∪ rightCells).card <= 1 := by omega
      have hcommonUnion :
          commonCell ∈ leftCells ∪ rightCells :=
        Finset.mem_union_left _ hcommonLeft
      have hrightUnion :
          rightCell ∈ leftCells ∪ rightCells :=
        Finset.mem_union_right _ hrightCell
      have hcellsEq : commonCell = rightCell :=
        (Finset.card_le_one.mp hleOne)
          commonCell hcommonUnion rightCell hrightUnion
      have hcommonRight : commonCell ∈ rightCells := by
        rw [hcellsEq]
        exact hrightCell
      have hcommon :
          ∀ x ∈ fiveMillionStructuredResidual N B
            (fiveMillionR263OddTwoCharge N B),
              oddModNineResidue x = commonCell := by
        intro x hx
        rcases mem_fiveMillionR263OddTwoStructuredResidual.mp hx with
            hxOne | hxThree
        · have hxCell : oddModNineResidue x ∈ leftCells := by
            simpa [leftCells] using hxOne.2
          exact (Finset.card_le_one.mp hleOne)
            (oddModNineResidue x) (Finset.mem_union_left _ hxCell)
              commonCell hcommonUnion
        · have hxCell : oddModNineResidue x ∈ rightCells := by
            simpa [rightCells] using hxThree.2
          exact (Finset.card_le_one.mp hleOne)
            (oddModNineResidue x) (Finset.mem_union_right _ hxCell)
              commonCell hcommonUnion
      obtain ⟨pivots, left, right, hpattern, hpivotsStructured⟩ :=
        fiveMillionR263OddTwoOneResiduePattern_exists
          (by simpa [leftCells] using hcommonLeft)
          (by simpa [rightCells] using hcommonRight)
      obtain ⟨pattern⟩ := hpattern
      exact ⟨fiveMillionR263OddTwoOneResidueTerminal
        hLower hUpper hBout hBprop hEvenOne hEvenTwo hEvenThree
          commonCell hcommon pattern hpivotsStructured⟩
    · have hunionNonempty : (leftCells ∪ rightCells).Nonempty := by
        exact hleftNonempty.mono (Finset.subset_union_left)
      have hcardTwo : 2 <= (leftCells ∪ rightCells).card := by
        have hpositive : 0 < (leftCells ∪ rightCells).card :=
          Finset.card_pos.mpr hunionNonempty
        omega
      obtain ⟨leftCell, hleftCell, rightCell, hrightCell, hcellsNe⟩ :=
        exists_cross_ne_of_union_card_two
          hleftNonempty hrightNonempty hcardTwo
      obtain ⟨pivots, left, right, hpattern, hpivotsStructured⟩ :=
        fiveMillionR263OddTwoSplitPairPattern_exists
          (by simpa [leftCells] using hleftCell)
          (by simpa [rightCells] using hrightCell)
          hcellsNe
      obtain ⟨pattern⟩ := hpattern
      exact ⟨fiveMillionR263OddTwoSplitPairTerminal
        hLower hUpper hBout hBprop hEvenOne hEvenTwo hEvenThree
          pattern hpivotsStructured⟩

theorem fiveMillionR263OddTwo_exhaustion
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hEvenOne : (fiveMillionValuationPart N B .evenOne).card <= 10)
    (hEvenTwo : (fiveMillionValuationPart N B .evenTwo).card <= 10)
    (hEvenThree : (fiveMillionValuationPart N B .evenThree).card <= 18)
    (hOddOne : 46 <=
      (fiveMillionValuationPart N B .oddOne).card)
    (hOddThree : 46 <=
      (fiveMillionValuationPart N B .oddThree).card) :
    Nonempty (FiveMillionR263KernelTerminal N B) := by
  obtain ⟨certificate⟩ := fiveMillionR263OddTwoTerminal
    hLower hUpper hBout hBprop hEvenOne hEvenTwo hEvenThree
      hOddOne hOddThree
  exact ⟨.threshold certificate⟩

#print axioms fiveMillionR263OddTwoSparseCharge_card_le_fortyFive
#print axioms mem_fiveMillionR263OddTwoStructuredResidual
#print axioms finNine_two_set_triple_dichotomy
#print axioms exists_cross_ne_of_union_card_two
#print axioms fiveMillionR263OddTwoBalancedPattern_exists
#print axioms fiveMillionR263OddTwoSplitPairPattern_exists
#print axioms fiveMillionR263OddTwoOneResiduePattern_exists
#print axioms fiveMillionR263OddTwoFullStructuredDiagonal_kernel_close
#print axioms fiveMillionR263OddTwoOneResidueStructuredDiagonal_kernel_close
#print axioms fiveMillionR263OddTwoResidual_ratio_le
#print axioms fiveMillionR263OddTwoBalancedTerminal
#print axioms fiveMillionR263OddTwoSplitPairTerminal
#print axioms fiveMillionR263OddTwoOneResidueTerminal
#print axioms fiveMillionR263OddTwoTerminal
#print axioms fiveMillionR263OddTwo_exhaustion

end Erdos848
