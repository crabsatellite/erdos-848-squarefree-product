import Erdos848.TailFiveMillionThreeCellPeriodicBridge
import Erdos848.TailFiveMillionFiveCellPeriodicProducer

namespace Erdos848

/-! Actual `[2,2,2]` six-pivot producer for three active cells. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

noncomputable def FiveMillionThreeCellSixPivotPattern.toPeriodicCertificate
    {N : Nat} {B : Finset Nat}
    (pattern : FiveMillionThreeCellSixPivotPattern N B)
    (hBout : Erdos848OutsideSet N B) :
    FiveMillionThreeCellBasePeriodicThresholdCertificate
      N B pattern.pivots where
  sevenFullModFour := fiveMillionFullModFour 7 pattern.modFourClass
  sevenModNineEvent :=
    fiveMillionFiveCellModNineEventFor 7 pattern.pivot
  sevenModFortyNineRoot :=
    fiveMillionFiveCellModFortyNineRootFor 7 pattern.pivot
  sevenCapacity := fiveMillionFiveCellModNineEvent_capacity pattern 7
  sevenDouble := fiveMillionFiveCellModNineEvent_double_card_le pattern 7
  eighteenFullModFour := fiveMillionFullModFour 18 pattern.modFourClass
  eighteenModNineEvent :=
    fiveMillionFiveCellModNineEventFor 18 pattern.pivot
  eighteenModFortyNineRoot :=
    fiveMillionFiveCellModFortyNineRootFor 18 pattern.pivot
  eighteenCapacity := fiveMillionFiveCellModNineEvent_capacity pattern 18
  eighteenDouble := fiveMillionFiveCellModNineEvent_double_card_le pattern 18
  sevenClassifies := by
    intro point _hbase hpoint hthreshold
    exact fiveMillionFiveCellSixPivotPattern_classifies hBout pattern
      (Finset.mem_union_left _ hpoint)
      (Finset.mem_filter.mp hpoint).2 hthreshold
  eighteenClassifies := by
    intro point _hbase hpoint hthreshold
    exact fiveMillionFiveCellSixPivotPattern_classifies hBout pattern
      (Finset.mem_union_right _ hpoint)
      (Finset.mem_filter.mp hpoint).2 hthreshold

def fiveMillionThreeCellIndex : Fin 6 -> Fin 3 :=
  ![0, 0, 1, 1, 2, 2]

lemma fiveMillionThreeCellIndex_fibre_card (cell : Fin 3) :
    ((Finset.univ.filter fun i : Fin 6 =>
      fiveMillionThreeCellIndex i = cell).card) = 2 := by
  fin_cases cell <;> decide

lemma fiveMillionThreeCellIndex_eq_cases {i j : Fin 6}
    (h : fiveMillionThreeCellIndex i = fiveMillionThreeCellIndex j) :
    i = j ∨
      (i = 0 ∧ j = 1) ∨ (i = 1 ∧ j = 0) ∨
      (i = 2 ∧ j = 3) ∨ (i = 3 ∧ j = 2) ∨
      (i = 4 ∧ j = 5) ∨ (i = 5 ∧ j = 4) := by
  fin_cases i <;> fin_cases j <;> simp_all [fiveMillionThreeCellIndex]

noncomputable def fiveMillionThreeCellSixPivotPatternOfCells
    {N : Nat} {B charged : Finset Nat}
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellsCard : cells.card = 3)
    (hcellSize : ∀ cell ∈ cells,
      2 <= ((fiveMillionStructuredResidual N B charged).filter fun x =>
        oddModNineResidue x = cell).card)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1) :
    { pattern : FiveMillionThreeCellSixPivotPattern N B //
      ∀ i, pattern.pivot i ∈
        fiveMillionStructuredResidual N B charged } := by
  classical
  let cellEquiv : Fin 3 ≃ cells :=
    (cells.equivFinOfCardEq hcellsCard).symm
  let cellAt : Fin 3 -> Fin 9 := fun i => (cellEquiv i).1
  have hcellAtMem : ∀ i, cellAt i ∈ cells := by
    intro i
    exact (cellEquiv i).2
  have hcellAtInjective : Function.Injective cellAt := by
    intro i j hij
    apply cellEquiv.injective
    exact Subtype.ext hij
  let pointsAt : Fin 3 -> Finset Nat := fun i =>
    (fiveMillionStructuredResidual N B charged).filter fun x =>
      oddModNineResidue x = cellAt i
  have hpointsCard : ∀ i, 2 <= (pointsAt i).card := by
    intro i
    exact hcellSize (cellAt i) (hcellAtMem i)
  have hpointsNonempty : ∀ i, (pointsAt i).Nonempty := by
    intro i
    exact Finset.card_pos.mp (lt_of_lt_of_le (by norm_num) (hpointsCard i))
  let primary : Fin 3 -> Nat := fun i => Classical.choose (hpointsNonempty i)
  have hprimaryMem : ∀ i, primary i ∈ pointsAt i := by
    intro i
    exact Classical.choose_spec (hpointsNonempty i)
  have heraseNonempty : ∀ i,
      ((pointsAt i).erase (primary i)).Nonempty := by
    intro i
    apply Finset.card_pos.mp
    rw [Finset.card_erase_of_mem (hprimaryMem i)]
    exact Nat.sub_pos_of_lt (hpointsCard i)
  let secondary : Fin 3 -> Nat := fun i => Classical.choose (heraseNonempty i)
  have hsecondaryErase : ∀ i,
      secondary i ∈ (pointsAt i).erase (primary i) := by
    intro i
    exact Classical.choose_spec (heraseNonempty i)
  have hsecondaryMem : ∀ i, secondary i ∈ pointsAt i := by
    intro i
    exact (Finset.mem_erase.mp (hsecondaryErase i)).2
  have hsecondaryNe : ∀ i, secondary i ≠ primary i := by
    intro i
    exact (Finset.mem_erase.mp (hsecondaryErase i)).1
  let pivot : Fin 6 -> Nat := fun i =>
    if i = 1 then secondary 0
    else if i = 3 then secondary 1
    else if i = 5 then secondary 2
    else primary (fiveMillionThreeCellIndex i)
  have hpivotMem : ∀ i, pivot i ∈ pointsAt (fiveMillionThreeCellIndex i) := by
    intro i
    by_cases hiOne : i = 1
    · subst i
      simpa [pivot, fiveMillionThreeCellIndex] using hsecondaryMem 0
    · by_cases hiThree : i = 3
      · subst i
        simpa [pivot, hiOne, fiveMillionThreeCellIndex] using hsecondaryMem 1
      · by_cases hiFive : i = 5
        · subst i
          simpa [pivot, hiOne, hiThree, fiveMillionThreeCellIndex] using
            hsecondaryMem 2
        · simp [pivot, hiOne, hiThree, hiFive, hprimaryMem]
  have hpivotStructured : ∀ i,
      pivot i ∈ fiveMillionStructuredResidual N B charged := by
    intro i
    exact (Finset.mem_filter.mp (hpivotMem i)).1
  have hpivotCell : ∀ i,
      oddModNineResidue (pivot i) =
        cellAt (fiveMillionThreeCellIndex i) := by
    intro i
    exact (Finset.mem_filter.mp (hpivotMem i)).2
  have hpivotInjective : Function.Injective pivot := by
    intro i j hij
    have hcell : fiveMillionThreeCellIndex i =
        fiveMillionThreeCellIndex j := by
      apply hcellAtInjective
      rw [← hpivotCell i, ← hpivotCell j, hij]
    rcases fiveMillionThreeCellIndex_eq_cases hcell with
      hijIndex | hzeroOne | honeZero | htwoThree | hthreeTwo |
        hfourFive | hfiveFour
    · exact hijIndex
    · rcases hzeroOne with ⟨rfl, rfl⟩
      exfalso
      apply hsecondaryNe 0
      simpa [pivot, fiveMillionThreeCellIndex] using hij.symm
    · rcases honeZero with ⟨rfl, rfl⟩
      exfalso
      apply hsecondaryNe 0
      simpa [pivot, fiveMillionThreeCellIndex] using hij
    · rcases htwoThree with ⟨rfl, rfl⟩
      exfalso
      apply hsecondaryNe 1
      simpa [pivot, fiveMillionThreeCellIndex] using hij.symm
    · rcases hthreeTwo with ⟨rfl, rfl⟩
      exfalso
      apply hsecondaryNe 1
      simpa [pivot, fiveMillionThreeCellIndex] using hij
    · rcases hfourFive with ⟨rfl, rfl⟩
      exfalso
      apply hsecondaryNe 2
      simpa [pivot, fiveMillionThreeCellIndex] using hij.symm
    · rcases hfiveFour with ⟨rfl, rfl⟩
      exfalso
      apply hsecondaryNe 2
      simpa [pivot, fiveMillionThreeCellIndex] using hij
  let modFourClass : FiveMillionModFour :=
    ⟨if parity then 3 else 1, by cases parity <;> simp⟩
  refine ⟨?_, ?_⟩
  refine
    { pivot := pivot
      pivotInjective := hpivotInjective
      pivotResidual := ?_
      modFourClass := modFourClass
      commonModFour := ?_
      modNineCapacity := ?_
      modNineDouble := ?_ }
  · intro i
    exact (Finset.mem_sdiff.mp (hpivotStructured i)).1
  · intro i
    apply (ZMod.natCast_eq_natCast_iff'
      (pivot i) modFourClass.val 4).2
    have hpivotMod := hclass (pivot i) (hpivotStructured i)
    cases parity <;> simp_all [modFourClass]
  · intro residue
    by_cases hfibre : (Finset.univ.filter fun i : Fin 6 =>
        oddModNineResidue (pivot i) = residue).Nonempty
    · let i := Classical.choose hfibre
      have hi : i ∈ Finset.univ.filter fun i : Fin 6 =>
          oddModNineResidue (pivot i) = residue :=
        Classical.choose_spec hfibre
      have hsubset : (Finset.univ.filter fun j : Fin 6 =>
          oddModNineResidue (pivot j) = residue) ⊆
          Finset.univ.filter fun j : Fin 6 =>
            fiveMillionThreeCellIndex j = fiveMillionThreeCellIndex i := by
        intro j hj
        apply Finset.mem_filter.mpr
        refine ⟨Finset.mem_univ _, ?_⟩
        apply hcellAtInjective
        rw [← hpivotCell j, ← hpivotCell i]
        exact (Finset.mem_filter.mp hj).2.trans
          (Finset.mem_filter.mp hi).2.symm
      have hcard := Finset.card_le_card hsubset
      rw [fiveMillionThreeCellIndex_fibre_card] at hcard
      exact hcard
    · simpa [Finset.not_nonempty_iff_eq_empty.mp hfibre]
  · let doubleResidues := Finset.univ.filter fun residue : Fin 9 =>
      2 <= (Finset.univ.filter fun i : Fin 6 =>
        oddModNineResidue (pivot i) = residue).card
    have hsubset : doubleResidues ⊆ {cellAt 0, cellAt 1, cellAt 2} := by
      intro residue hresidue
      have hresidueCard : 2 <= (Finset.univ.filter fun i : Fin 6 =>
          oddModNineResidue (pivot i) = residue).card :=
        (Finset.mem_filter.mp hresidue).2
      have hfibre : (Finset.univ.filter fun i : Fin 6 =>
          oddModNineResidue (pivot i) = residue).Nonempty :=
        Finset.card_pos.mp (lt_of_lt_of_le (by norm_num) hresidueCard)
      let i := Classical.choose hfibre
      have hi : i ∈ Finset.univ.filter fun i : Fin 6 =>
          oddModNineResidue (pivot i) = residue :=
        Classical.choose_spec hfibre
      rw [← (Finset.mem_filter.mp hi).2, hpivotCell i]
      have hindex : fiveMillionThreeCellIndex i = 0 ∨
          fiveMillionThreeCellIndex i = 1 ∨
          fiveMillionThreeCellIndex i = 2 := by
        have hlt := (fiveMillionThreeCellIndex i).isLt
        have hval : (fiveMillionThreeCellIndex i).val = 0 ∨
            (fiveMillionThreeCellIndex i).val = 1 ∨
            (fiveMillionThreeCellIndex i).val = 2 := by omega
        rcases hval with hzero | hone | htwo
        · left
          apply Fin.ext
          simpa using hzero
        · right; left
          apply Fin.ext
          simpa using hone
        · right; right
          apply Fin.ext
          simpa using htwo
      rcases hindex with hzero | hone | htwo
      · simp [hzero]
      · simp [hone]
      · simp [htwo]
    have hcard := Finset.card_le_card hsubset
    have htriple : ({cellAt 0, cellAt 1, cellAt 2} : Finset (Fin 9)).card <= 3 := by
      calc
        ({cellAt 0, cellAt 1, cellAt 2} : Finset (Fin 9)).card <=
            ({cellAt 1, cellAt 2} : Finset (Fin 9)).card + 1 :=
          Finset.card_insert_le _ _
        _ <= (({cellAt 2} : Finset (Fin 9)).card + 1) + 1 := by
          gcongr
          exact Finset.card_insert_le _ _
        _ = 3 := by simp
    exact hcard.trans htriple
  · intro i
    exact hpivotStructured i

#print axioms FiveMillionThreeCellSixPivotPattern.toPeriodicCertificate
#print axioms fiveMillionThreeCellSixPivotPatternOfCells

end Erdos848
