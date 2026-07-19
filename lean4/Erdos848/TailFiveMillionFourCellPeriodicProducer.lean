import Erdos848.TailFiveMillionFourCellPeriodicBridge
import Erdos848.TailFiveMillionFiveCellPeriodicProducer

namespace Erdos848

/-! Actual `[2,2,1,1]` six-pivot producer for four active cells. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

noncomputable def FiveMillionFourCellSixPivotPattern.toPeriodicCertificate
    {N : Nat} {B : Finset Nat}
    (pattern : FiveMillionFourCellSixPivotPattern N B)
    (hBout : Erdos848OutsideSet N B) :
    FiveMillionFourCellBasePeriodicThresholdCertificate
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

def fiveMillionFourCellIndex : Fin 6 -> Fin 4 :=
  ![0, 0, 1, 1, 2, 3]

lemma fiveMillionFourCellIndex_fibre_card (cell : Fin 4) :
    ((Finset.univ.filter fun i : Fin 6 =>
      fiveMillionFourCellIndex i = cell).card) =
      if cell = 0 ∨ cell = 1 then 2 else 1 := by
  fin_cases cell <;> decide

lemma fiveMillionFourCellIndex_eq_cases {i j : Fin 6}
    (h : fiveMillionFourCellIndex i = fiveMillionFourCellIndex j) :
    i = j ∨
      (i = 0 ∧ j = 1) ∨ (i = 1 ∧ j = 0) ∨
      (i = 2 ∧ j = 3) ∨ (i = 3 ∧ j = 2) := by
  fin_cases i <;> fin_cases j <;> simp_all [fiveMillionFourCellIndex]

noncomputable def fiveMillionFourCellSixPivotPatternOfCells
    {N : Nat} {B charged : Finset Nat}
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellsCard : cells.card = 4)
    (hcellSize : ∀ cell ∈ cells,
      2 <= ((fiveMillionStructuredResidual N B charged).filter fun x =>
        oddModNineResidue x = cell).card)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1) :
    { pattern : FiveMillionFourCellSixPivotPattern N B //
      ∀ i, pattern.pivot i ∈
        fiveMillionStructuredResidual N B charged } := by
  classical
  let cellEquiv : Fin 4 ≃ cells :=
    (cells.equivFinOfCardEq hcellsCard).symm
  let cellAt : Fin 4 -> Fin 9 := fun i => (cellEquiv i).1
  have hcellAtMem : ∀ i, cellAt i ∈ cells := by
    intro i
    exact (cellEquiv i).2
  have hcellAtInjective : Function.Injective cellAt := by
    intro i j hij
    apply cellEquiv.injective
    exact Subtype.ext hij
  let pointsAt : Fin 4 -> Finset Nat := fun i =>
    (fiveMillionStructuredResidual N B charged).filter fun x =>
      oddModNineResidue x = cellAt i
  have hpointsCard : ∀ i, 2 <= (pointsAt i).card := by
    intro i
    exact hcellSize (cellAt i) (hcellAtMem i)
  have hpointsNonempty : ∀ i, (pointsAt i).Nonempty := by
    intro i
    exact Finset.card_pos.mp (lt_of_lt_of_le (by norm_num) (hpointsCard i))
  let primary : Fin 4 -> Nat := fun i => Classical.choose (hpointsNonempty i)
  have hprimaryMem : ∀ i, primary i ∈ pointsAt i := by
    intro i
    exact Classical.choose_spec (hpointsNonempty i)
  have heraseZeroNonempty : ((pointsAt 0).erase (primary 0)).Nonempty := by
    have hprimary := hprimaryMem 0
    have htwo := hpointsCard 0
    apply Finset.card_pos.mp
    rw [Finset.card_erase_of_mem hprimary]
    omega
  have heraseOneNonempty : ((pointsAt 1).erase (primary 1)).Nonempty := by
    have hprimary := hprimaryMem 1
    have htwo := hpointsCard 1
    apply Finset.card_pos.mp
    rw [Finset.card_erase_of_mem hprimary]
    omega
  let secondZero : Nat := Classical.choose heraseZeroNonempty
  let secondOne : Nat := Classical.choose heraseOneNonempty
  have hsecondZeroErase : secondZero ∈ (pointsAt 0).erase (primary 0) :=
    Classical.choose_spec heraseZeroNonempty
  have hsecondOneErase : secondOne ∈ (pointsAt 1).erase (primary 1) :=
    Classical.choose_spec heraseOneNonempty
  have hsecondZeroMem : secondZero ∈ pointsAt 0 :=
    (Finset.mem_erase.mp hsecondZeroErase).2
  have hsecondOneMem : secondOne ∈ pointsAt 1 :=
    (Finset.mem_erase.mp hsecondOneErase).2
  have hsecondZeroNe : secondZero ≠ primary 0 :=
    (Finset.mem_erase.mp hsecondZeroErase).1
  have hsecondOneNe : secondOne ≠ primary 1 :=
    (Finset.mem_erase.mp hsecondOneErase).1
  let pivot : Fin 6 -> Nat := fun i =>
    if i = 1 then secondZero
    else if i = 3 then secondOne
    else primary (fiveMillionFourCellIndex i)
  have hpivotMem : ∀ i, pivot i ∈ pointsAt (fiveMillionFourCellIndex i) := by
    intro i
    by_cases hiOne : i = 1
    · subst i
      simpa [pivot, fiveMillionFourCellIndex] using hsecondZeroMem
    · by_cases hiThree : i = 3
      · subst i
        simpa [pivot, hiOne, fiveMillionFourCellIndex] using hsecondOneMem
      · simp [pivot, hiOne, hiThree, hprimaryMem]
  have hpivotStructured : ∀ i,
      pivot i ∈ fiveMillionStructuredResidual N B charged := by
    intro i
    exact (Finset.mem_filter.mp (hpivotMem i)).1
  have hpivotCell : ∀ i,
      oddModNineResidue (pivot i) =
        cellAt (fiveMillionFourCellIndex i) := by
    intro i
    exact (Finset.mem_filter.mp (hpivotMem i)).2
  have hpivotInjective : Function.Injective pivot := by
    intro i j hij
    have hcell : fiveMillionFourCellIndex i =
        fiveMillionFourCellIndex j := by
      apply hcellAtInjective
      rw [← hpivotCell i, ← hpivotCell j, hij]
    rcases fiveMillionFourCellIndex_eq_cases hcell with
      hijIndex | hzeroOne | honeZero | htwoThree | hthreeTwo
    · exact hijIndex
    · rcases hzeroOne with ⟨rfl, rfl⟩
      exfalso
      apply hsecondZeroNe
      simpa [pivot, fiveMillionFourCellIndex] using hij.symm
    · rcases honeZero with ⟨rfl, rfl⟩
      exfalso
      apply hsecondZeroNe
      simpa [pivot, fiveMillionFourCellIndex] using hij
    · rcases htwoThree with ⟨rfl, rfl⟩
      exfalso
      apply hsecondOneNe
      simpa [pivot, fiveMillionFourCellIndex] using hij.symm
    · rcases hthreeTwo with ⟨rfl, rfl⟩
      exfalso
      apply hsecondOneNe
      simpa [pivot, fiveMillionFourCellIndex] using hij
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
            fiveMillionFourCellIndex j = fiveMillionFourCellIndex i := by
        intro j hj
        apply Finset.mem_filter.mpr
        refine ⟨Finset.mem_univ _, ?_⟩
        apply hcellAtInjective
        rw [← hpivotCell j, ← hpivotCell i]
        exact (Finset.mem_filter.mp hj).2.trans
          (Finset.mem_filter.mp hi).2.symm
      have hcard := Finset.card_le_card hsubset
      rw [fiveMillionFourCellIndex_fibre_card] at hcard
      split at hcard <;> omega
    · simpa [Finset.not_nonempty_iff_eq_empty.mp hfibre]
  · let doubleResidues := Finset.univ.filter fun residue : Fin 9 =>
      2 <= (Finset.univ.filter fun i : Fin 6 =>
        oddModNineResidue (pivot i) = residue).card
    have hsubset : doubleResidues ⊆ {cellAt 0, cellAt 1} := by
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
      have hindices : (Finset.univ.filter fun j : Fin 6 =>
          oddModNineResidue (pivot j) = residue) ⊆
          Finset.univ.filter fun j : Fin 6 =>
            fiveMillionFourCellIndex j = fiveMillionFourCellIndex i := by
        intro j hj
        apply Finset.mem_filter.mpr
        refine ⟨Finset.mem_univ _, ?_⟩
        apply hcellAtInjective
        rw [← hpivotCell j, ← hpivotCell i]
        exact (Finset.mem_filter.mp hj).2.trans
          (Finset.mem_filter.mp hi).2.symm
      have hindexCard := hresidueCard.trans (Finset.card_le_card hindices)
      rw [fiveMillionFourCellIndex_fibre_card] at hindexCard
      have hiDouble : fiveMillionFourCellIndex i = 0 ∨
          fiveMillionFourCellIndex i = 1 := by
        split at hindexCard
        · assumption
        · omega
      rw [← (Finset.mem_filter.mp hi).2, hpivotCell i]
      rcases hiDouble with hzero | hone
      · exact Finset.mem_insert.mpr (Or.inl (by rw [hzero]))
      · exact Finset.mem_insert.mpr
          (Or.inr (Finset.mem_singleton.mpr (by rw [hone])))
    have hcard := Finset.card_le_card hsubset
    have hpair : ({cellAt 0, cellAt 1} : Finset (Fin 9)).card <= 2 := by
      calc
        ({cellAt 0, cellAt 1} : Finset (Fin 9)).card <=
            ({cellAt 1} : Finset (Fin 9)).card + 1 :=
          Finset.card_insert_le _ _
        _ = 2 := by simp
    exact hcard.trans hpair
  · intro i
    exact hpivotStructured i

#print axioms FiveMillionFourCellSixPivotPattern.toPeriodicCertificate
#print axioms fiveMillionFourCellSixPivotPatternOfCells

end Erdos848
