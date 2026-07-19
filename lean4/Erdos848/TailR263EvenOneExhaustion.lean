import Erdos848.TailR263EvenOneTerminals
import Erdos848.TailR263EvenTwoExhaustion

namespace Erdos848

/-!
# Exhausting the E1 cell/fibre allocation

This file is the finite structural router.  It returns one of the four direct
E1 terminals, or the literal bound `|E1| <= 10` needed by the existing E2
router.  No density estimate or final Hall inequality is assumed here.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def fiveMillionR263EvenOnePairedCells
    (N : Nat) (B : Finset Nat) : Finset (Fin 9) :=
  Finset.univ.filter fun cell =>
    2 <= (fiveMillionR263EvenOneCell N B cell).card

def fiveMillionR263EvenOneGoodPairedCells
    (N : Nat) (B : Finset Nat) : Finset (Fin 9) :=
  (fiveMillionR263EvenOnePairedCells N B).filter fun cell =>
    fiveMillionR263EvenOneGoodCell N B cell

lemma mem_fiveMillionR263EvenOnePairedCells
    {N : Nat} {B : Finset Nat} {cell : Fin 9} :
    cell ∈ fiveMillionR263EvenOnePairedCells N B ↔
      2 <= (fiveMillionR263EvenOneCell N B cell).card := by
  simp [fiveMillionR263EvenOnePairedCells]

lemma mem_fiveMillionR263EvenOneGoodPairedCells
    {N : Nat} {B : Finset Nat} {cell : Fin 9} :
    cell ∈ fiveMillionR263EvenOneGoodPairedCells N B ↔
      2 <= (fiveMillionR263EvenOneCell N B cell).card ∧
        fiveMillionR263EvenOneGoodCell N B cell := by
  simp [fiveMillionR263EvenOneGoodPairedCells,
    mem_fiveMillionR263EvenOnePairedCells]

private theorem ceilDiv_pos_of_fiveMillion
    {N modulus : Nat} (hLower : 5_000_000 <= N)
    (hmodulus : 0 < modulus) :
    1 <= N ⌈/⌉ modulus := by
  have hcover :
      N <= modulus * (N ⌈/⌉ modulus) :=
    (ceilDiv_le_iff_le_mul hmodulus).mp le_rfl
  by_contra hnot
  have hzero : N ⌈/⌉ modulus = 0 := by omega
  rw [hzero, Nat.mul_zero] at hcover
  omega

private theorem evenOneCell_le_ceil1764_of_not_good
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hnotGood : ¬ fiveMillionR263EvenOneGoodCell N B cell) :
    (fiveMillionR263EvenOneCell N B cell).card <= N ⌈/⌉ 1764 := by
  by_cases h49 : fiveMillionR263EvenOneCellContained49 N B cell
  · exact fiveMillionR263EvenOneCell_card_le_ceilDiv49 hBout h49
  · have h121 : fiveMillionR263EvenOneCellContained121 N B cell := by
      by_contra hnot121
      exact hnotGood ⟨h49, hnot121⟩
    exact (fiveMillionR263EvenOneCell_card_le_ceilDiv121
      hBout h121).trans (ceilDiv4356_le_ceilDiv1764 N)

private theorem evenOneCell_le_ceil1764_of_small_or_not_good
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hcondition :
      (fiveMillionR263EvenOneCell N B cell).card < 2 ∨
        ¬ fiveMillionR263EvenOneGoodCell N B cell) :
    (fiveMillionR263EvenOneCell N B cell).card <= N ⌈/⌉ 1764 := by
  rcases hcondition with hsmall | hnotGood
  · exact (show
      (fiveMillionR263EvenOneCell N B cell).card <= 1 by omega).trans
        (ceilDiv_pos_of_fiveMillion hLower (by norm_num))
  · exact evenOneCell_le_ceil1764_of_not_good
      hLower hBout hnotGood

noncomputable def fiveMillionR263EvenOneChosen49Residue
    (N : Nat) (B : Finset Nat) (cell : Fin 9) : Fin 49 := by
  classical
  exact if h : fiveMillionR263EvenOneCellContained49 N B cell then
    Classical.choose h
  else 0

def fiveMillionR263EvenOneFortyNineCells
    (N : Nat) (B : Finset Nat) : Finset (Fin 9) :=
  Finset.univ.filter fun cell =>
    fiveMillionR263EvenOneCellContained49 N B cell

lemma fiveMillionR263EvenOneChosen49Residue_spec
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    (hcell : cell ∈ fiveMillionR263EvenOneFortyNineCells N B) :
    ∀ x ∈ fiveMillionR263EvenOneCell N B cell,
      x % 49 =
        (fiveMillionR263EvenOneChosen49Residue N B cell).val := by
  classical
  have hcontained :
      fiveMillionR263EvenOneCellContained49 N B cell :=
    (Finset.mem_filter.mp hcell).2
  rw [fiveMillionR263EvenOneChosen49Residue, dif_pos hcontained]
  exact Classical.choose_spec hcontained

private theorem fiveMillionR263EvenOneFortyNineOutside_card_le
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hNoGood : ∀ cell : Fin 9,
      2 <= (fiveMillionR263EvenOneCell N B cell).card →
        ¬ fiveMillionR263EvenOneGoodCell N B cell)
    (cell : Fin 9)
    (hcell : cell ∉ fiveMillionR263EvenOneFortyNineCells N B) :
    (fiveMillionR263EvenOneCell N B cell).card <= N ⌈/⌉ 4356 := by
  have hnot49 :
      ¬ fiveMillionR263EvenOneCellContained49 N B cell := by
    simpa [fiveMillionR263EvenOneFortyNineCells] using hcell
  by_cases htwo :
      2 <= (fiveMillionR263EvenOneCell N B cell).card
  · have h121 : fiveMillionR263EvenOneCellContained121 N B cell := by
      by_contra hnot121
      exact hNoGood cell htwo ⟨hnot49, hnot121⟩
    exact fiveMillionR263EvenOneCell_card_le_ceilDiv121 hBout h121
  · exact (show
      (fiveMillionR263EvenOneCell N B cell).card <= 1 by omega).trans
        (ceilDiv_pos_of_fiveMillion hLower (by norm_num))

private theorem exists_selection_of_good_pairs
    {N : Nat} {B : Finset Nat} {left right : Fin 9}
    (hne : left ≠ right)
    (hleft : fiveMillionR263EvenOneGoodCell N B left)
    (hright : fiveMillionR263EvenOneGoodCell N B right) :
    ∃ selection : FiveMillionR263EvenOnePairSelection N B left right,
      selection.x0 % 49 ≠ selection.x1 % 49 ∧
      selection.x0 % 121 ≠ selection.x1 % 121 ∧
      selection.y0 % 49 ≠ selection.y1 % 49 ∧
      selection.y0 % 121 ≠ selection.y1 % 121 := by
  classical
  obtain ⟨x0, hx0, x1, hx1, hx01, hx49, hx121⟩ :=
    fiveMillionR263EvenOneGoodCell_pair hleft
  obtain ⟨y0, hy0, y1, hy1, hy01, hy49, hy121⟩ :=
    fiveMillionR263EvenOneGoodCell_pair hright
  refine ⟨
    { x0 := x0, x1 := x1, y0 := y0, y1 := y1
      x0Cell := hx0, x1Cell := hx1
      y0Cell := hy0, y1Cell := hy1
      x0_ne_x1 := hx01, y0_ne_y1 := hy01
      left_ne_right := hne },
    hx49, hx121, hy49, hy121⟩

private theorem exists_selection_of_good_and_paired
    {N : Nat} {B : Finset Nat} {left right : Fin 9}
    (hne : left ≠ right)
    (hleft : fiveMillionR263EvenOneGoodCell N B left)
    (hright : 2 <= (fiveMillionR263EvenOneCell N B right).card) :
    ∃ selection : FiveMillionR263EvenOnePairSelection N B left right,
      selection.x0 % 49 ≠ selection.x1 % 49 ∧
      selection.x0 % 121 ≠ selection.x1 % 121 := by
  classical
  obtain ⟨x0, hx0, x1, hx1, hx01, hx49, hx121⟩ :=
    fiveMillionR263EvenOneGoodCell_pair hleft
  have hrightTwo :
      1 < (fiveMillionR263EvenOneCell N B right).card := by omega
  obtain ⟨y0, hy0, y1, hy1, hy01⟩ :=
    Finset.one_lt_card.mp hrightTwo
  refine ⟨
    { x0 := x0, x1 := x1, y0 := y0, y1 := y1
      x0Cell := hx0, x1Cell := hx1
      y0Cell := hy0, y1Cell := hy1
      x0_ne_x1 := hx01, y0_ne_y1 := hy01
      left_ne_right := hne },
    hx49, hx121⟩

private noncomputable def selection_of_paired_cells
    {N : Nat} {B : Finset Nat} {left right : Fin 9}
    (hne : left ≠ right)
    (hleft : 2 <= (fiveMillionR263EvenOneCell N B left).card)
    (hright : 2 <= (fiveMillionR263EvenOneCell N B right).card) :
    FiveMillionR263EvenOnePairSelection N B left right := by
  classical
  have hleftTwo :
      1 < (fiveMillionR263EvenOneCell N B left).card := by omega
  have hrightTwo :
      1 < (fiveMillionR263EvenOneCell N B right).card := by omega
  obtain ⟨x0, hx0, x1, hx1, hx01⟩ :=
    Finset.one_lt_card.mp hleftTwo
  obtain ⟨y0, hy0, y1, hy1, hy01⟩ :=
    Finset.one_lt_card.mp hrightTwo
  exact
    { x0 := x0, x1 := x1, y0 := y0, y1 := y1
      x0Cell := hx0, x1Cell := hx1
      y0Cell := hy0, y1Cell := hy1
      x0_ne_x1 := hx01, y0_ne_y1 := hy01
      left_ne_right := hne }

private theorem evenOne_card_le_ten_of_at_most_one_paired
    {N : Nat} {B : Finset Nat}
    (hpaired :
      (fiveMillionR263EvenOnePairedCells N B).card <= 1)
    (hNoThree : ∀ cell : Fin 9,
      (fiveMillionR263EvenOneCell N B cell).card <= 2) :
    (fiveMillionValuationPart N B .evenOne).card <= 10 := by
  classical
  by_cases hnone :
      (fiveMillionR263EvenOnePairedCells N B).Nonempty
  · obtain ⟨chosen, hchosen⟩ := hnone
    have hchosenTwo :
        2 <= (fiveMillionR263EvenOneCell N B chosen).card :=
      mem_fiveMillionR263EvenOnePairedCells.mp hchosen
    have hother : ∀ other : Fin 9, other ≠ chosen →
        (fiveMillionR263EvenOneCell N B other).card <= 1 := by
      intro other hne
      by_contra hnot
      have hotherTwo :
          2 <= (fiveMillionR263EvenOneCell N B other).card := by omega
      have hotherMem :
          other ∈ fiveMillionR263EvenOnePairedCells N B :=
        mem_fiveMillionR263EvenOnePairedCells.mpr hotherTwo
      have hpairSubset :
          ({chosen, other} : Finset (Fin 9)) ⊆
            fiveMillionR263EvenOnePairedCells N B := by
        simp [hchosen, hotherMem]
      have hpairCard : ({chosen, other} : Finset (Fin 9)).card = 2 := by
        simp [hne]
      have := Finset.card_le_card hpairSubset
      rw [hpairCard] at this
      omega
    have hout := card_sdiff_cellFibre_finNine_le_eight_mul
      (fiveMillionValuationPart N B .evenOne)
      oddModNineResidue chosen 1 (by
        intro other hne
        simpa [cellFibre, fiveMillionR263EvenOneCell] using
          hother other hne)
    have hchosenLe :
        (fiveMillionR263EvenOneCell N B chosen).card <= 2 :=
      hNoThree chosen
    have hsubset :
        fiveMillionR263EvenOneCell N B chosen ⊆
          fiveMillionValuationPart N B .evenOne :=
      fiveMillionR263EvenOneCell_subset_part N B chosen
    have hpartition :
        (fiveMillionValuationPart N B .evenOne \
          fiveMillionR263EvenOneCell N B chosen).card +
          (fiveMillionR263EvenOneCell N B chosen).card =
            (fiveMillionValuationPart N B .evenOne).card :=
      Finset.card_sdiff_add_card_eq_card hsubset
    have hout' :
        (fiveMillionValuationPart N B .evenOne \
          fiveMillionR263EvenOneCell N B chosen).card <= 8 := by
      simpa [cellFibre, fiveMillionR263EvenOneCell] using hout
    omega
  · have hempty :
        fiveMillionR263EvenOnePairedCells N B = ∅ :=
      Finset.not_nonempty_iff_eq_empty.mp hnone
    have hsparse : ∀ cell : Fin 9,
        (cellFibre (fiveMillionValuationPart N B .evenOne)
          oddModNineResidue cell).card <= 1 := by
      intro cell
      by_contra hnot
      have htwo :
          2 <= (fiveMillionR263EvenOneCell N B cell).card := by
        simpa [cellFibre, fiveMillionR263EvenOneCell] using
          (show 2 <=
            (cellFibre (fiveMillionValuationPart N B .evenOne)
              oddModNineResidue cell).card by omega)
      have hmem :=
        mem_fiveMillionR263EvenOnePairedCells.mpr htwo
      rw [hempty] at hmem
      simp at hmem
    have hcard := card_le_cellCount_mul_of_fibres_le
      (fiveMillionValuationPart N B .evenOne)
      oddModNineResidue 1 hsparse
    have hcardNine :
        (fiveMillionValuationPart N B .evenOne).card <= 9 := by
      simpa [Fintype.card_fin] using hcard
    omega

private theorem evenOne_dense_cell_terminal_or_small
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hpaired :
      (fiveMillionR263EvenOnePairedCells N B).card <= 1) :
    Nonempty (FiveMillionR263KernelTerminal N B) ∨
      (fiveMillionValuationPart N B .evenOne).card <= 10 := by
  by_cases hdense : ∃ cell : Fin 9,
      3 <= (fiveMillionR263EvenOneCell N B cell).card
  · obtain ⟨cell, hcellThree⟩ := hdense
    have hcellPaired :
        cell ∈ fiveMillionR263EvenOnePairedCells N B :=
      mem_fiveMillionR263EvenOnePairedCells.mpr (by omega)
    have hother : ∀ other : Fin 9, other ≠ cell →
        (fiveMillionR263EvenOneCell N B other).card <= 1 := by
      intro other hne
      by_contra hnot
      have hotherTwo :
          2 <= (fiveMillionR263EvenOneCell N B other).card := by omega
      have hotherPaired :
          other ∈ fiveMillionR263EvenOnePairedCells N B :=
        mem_fiveMillionR263EvenOnePairedCells.mpr hotherTwo
      have hsubset :
          ({cell, other} : Finset (Fin 9)) ⊆
            fiveMillionR263EvenOnePairedCells N B := by
        simp [hcellPaired, hotherPaired]
      have hcard : ({cell, other} : Finset (Fin 9)).card = 2 := by
        simp [hne]
      have := Finset.card_le_card hsubset
      rw [hcard] at this
      omega
    exact Or.inl ⟨.mixedHalf
      (fiveMillionR263EvenOneOneCellTerminal
        hLower hUpper hBout hBprop cell hcellThree hother)⟩
  · right
    apply evenOne_card_le_ten_of_at_most_one_paired hpaired
    intro cell
    by_contra hnot
    exact hdense ⟨cell, by omega⟩

theorem fiveMillionR263EvenOne_exhaustion
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B) :
    Nonempty (FiveMillionR263KernelTerminal N B) ∨
      (fiveMillionValuationPart N B .evenOne).card <= 10 := by
  classical
  let paired := fiveMillionR263EvenOnePairedCells N B
  let good := fiveMillionR263EvenOneGoodPairedCells N B
  by_cases hTwoGood : 2 <= good.card
  · have htwo : 1 < good.card := by omega
    obtain ⟨left, hleftMem, right, hrightMem, hne⟩ :=
      Finset.one_lt_card.mp htwo
    have hleft :=
      (mem_fiveMillionR263EvenOneGoodPairedCells.mp hleftMem).2
    have hright :=
      (mem_fiveMillionR263EvenOneGoodPairedCells.mp hrightMem).2
    obtain ⟨selection, hbreaks⟩ :=
      exists_selection_of_good_pairs hne hleft hright
    exact Or.inl ⟨.fourPivot
      (fiveMillionR263EvenOneTwoGoodTerminal
        hLower hUpper hBout hBprop selection
          hbreaks.1 hbreaks.2.1 hbreaks.2.2.1 hbreaks.2.2.2)⟩
  · have hGoodAtMostOne : good.card <= 1 := by omega
    by_cases hGoodNonempty : good.Nonempty
    · obtain ⟨left, hleftMem⟩ := hGoodNonempty
      have hleftParts :=
        mem_fiveMillionR263EvenOneGoodPairedCells.mp hleftMem
      by_cases hTwoPaired : 2 <= paired.card
      · have htwo : 1 < paired.card := by omega
        obtain ⟨a, ha, b, hb, hab⟩ := Finset.one_lt_card.mp htwo
        have hleftPaired :
            left ∈ paired :=
          (Finset.mem_filter.mp hleftMem).1
        let right := if a = left then b else a
        have hrightPaired : right ∈ paired := by
          dsimp [right]
          split
          · exact hb
          · exact ha
        have hne : left ≠ right := by
          dsimp [right]
          split
          next hal =>
            subst a
            exact hab
          next hal =>
            exact hal.symm
        have hrightTwo :
            2 <= (fiveMillionR263EvenOneCell N B right).card :=
          mem_fiveMillionR263EvenOnePairedCells.mp hrightPaired
        obtain ⟨selection, hbreaks⟩ :=
          exists_selection_of_good_and_paired
            hne hleftParts.2 hrightTwo
        have hOther : ∀ other : Fin 9, other ≠ left →
            (fiveMillionR263EvenOneCell N B other).card <=
              N ⌈/⌉ 1764 := by
          intro other hother
          by_cases hsmall :
              (fiveMillionR263EvenOneCell N B other).card < 2
          · exact evenOneCell_le_ceil1764_of_small_or_not_good
              hLower hBout (Or.inl hsmall)
          · have hotherPaired :
                other ∈ paired :=
              mem_fiveMillionR263EvenOnePairedCells.mpr (by omega)
            have hnotGood :
                ¬ fiveMillionR263EvenOneGoodCell N B other := by
              intro hotherGood
              have hotherGoodMem :
                  other ∈ good :=
                mem_fiveMillionR263EvenOneGoodPairedCells.mpr
                  ⟨by omega, hotherGood⟩
              have hsubset :
                  ({left, other} : Finset (Fin 9)) ⊆ good := by
                simp [hleftMem, hotherGoodMem]
              have hcard : ({left, other} : Finset (Fin 9)).card = 2 := by
                simp [hother]
              have := Finset.card_le_card hsubset
              rw [hcard] at this
              omega
            exact evenOneCell_le_ceil1764_of_not_good
              hLower hBout hnotGood
        exact Or.inl ⟨.fourPivot
          (fiveMillionR263EvenOneOneGoodTerminal
            hLower hUpper hBout hBprop selection
              hbreaks.1 hbreaks.2 hOther)⟩
      · exact evenOne_dense_cell_terminal_or_small
          hLower hUpper hBout hBprop (by omega)
    · have hNoGood : ∀ cell : Fin 9,
          2 <= (fiveMillionR263EvenOneCell N B cell).card →
            ¬ fiveMillionR263EvenOneGoodCell N B cell := by
        intro cell htwo hgood
        apply hGoodNonempty
        exact ⟨cell,
          mem_fiveMillionR263EvenOneGoodPairedCells.mpr ⟨htwo, hgood⟩⟩
      by_cases hTwoPaired : 2 <= paired.card
      · have htwo : 1 < paired.card := by omega
        obtain ⟨left, hleftMem, right, hrightMem, hne⟩ :=
          Finset.one_lt_card.mp htwo
        have hleftTwo :=
          mem_fiveMillionR263EvenOnePairedCells.mp hleftMem
        have hrightTwo :=
          mem_fiveMillionR263EvenOnePairedCells.mp hrightMem
        let selection :=
          selection_of_paired_cells hne hleftTwo hrightTwo
        let cells := fiveMillionR263EvenOneFortyNineCells N B
        let residues := fiveMillionR263EvenOneChosen49Residue N B
        have hcover : ∀ cell ∈ cells,
            ∀ x ∈ fiveMillionR263EvenOneCell N B cell,
              x % 49 = (residues cell).val := by
          intro cell hcell
          exact fiveMillionR263EvenOneChosen49Residue_spec hcell
        have hOutside : ∀ cell : Fin 9, cell ∉ cells →
            (fiveMillionR263EvenOneCell N B cell).card <=
              N ⌈/⌉ 4356 := by
          intro cell hcell
          exact fiveMillionR263EvenOneFortyNineOutside_card_le
            hLower hBout hNoGood cell hcell
        exact Or.inl ⟨.fourPivot
          (fiveMillionR263EvenOneNoGoodTerminal
            hLower hUpper hBout hBprop selection cells residues
              hcover hOutside)⟩
      · exact evenOne_dense_cell_terminal_or_small
          hLower hUpper hBout hBprop (by omega)

#print axioms fiveMillionR263EvenOne_exhaustion

end Erdos848
