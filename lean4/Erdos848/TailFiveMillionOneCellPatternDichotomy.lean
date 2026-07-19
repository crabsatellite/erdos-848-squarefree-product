import Erdos848.TailFiveMillionOneCellCombinatorics

namespace Erdos848

/-! Actual periodic patterns produced by the one-cell dichotomy. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

structure FiveMillionOneCellFibreFailureData
    (N : Nat) (B charged : Finset Nat) (parity : Bool) (cell : Fin 9) : Type where
  extraCharge : Finset Nat
  residues : Finset FiveMillionModFortyNine
  extraChargeSubset :
    extraCharge ⊆ fiveMillionStructuredResidual N B charged
  extraChargeCard : extraCharge.card ≤ 49
  residuesCard : residues.card ≤ 3
  support : ∀ x ∈
      ((fiveMillionStructuredResidual N B charged).filter fun x =>
        oddModNineResidue x = cell) \ extraCharge,
      fiveMillionNatModFortyNine x ∈ residues
  pattern :
    Nonempty { p : FiveMillionOneCellPivotPattern N B 6 2 2 //
      ∀ i, p.pivot i ∈ fiveMillionStructuredResidual N B charged } ∨
    Nonempty { p : FiveMillionOneCellPivotPattern N B 6 3 0 //
      ∀ i, p.pivot i ∈ fiveMillionStructuredResidual N B charged }

theorem fiveMillionOneCellPatternDichotomy
    {N : Nat} {B charged : Finset Nat}
    (parity : Bool) (cell : Fin 9)
    (hcellSize : 6 ≤
      ((fiveMillionStructuredResidual N B charged).filter fun x =>
        oddModNineResidue x = cell).card)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1) :
    Nonempty { p : FiveMillionOneCellPivotPattern N B 8 3 0 //
      ∀ i, p.pivot i ∈ fiveMillionStructuredResidual N B charged } ∨
    Nonempty (FiveMillionOneCellFibreFailureData
      N B charged parity cell) := by
  classical
  let points := (fiveMillionStructuredResidual N B charged).filter fun x =>
    oddModNineResidue x = cell
  rcases fiveMillionOneCellCapacityOrThreeFibreCharge points with
      hmatch | hfailure
  · apply Or.inl
    obtain ⟨selected, hselectedPoints, hselectedCard, hcapacity⟩ := hmatch
    have hselectedStructured :
        selected ⊆ fiveMillionStructuredResidual N B charged := by
      intro x hx
      exact (Finset.mem_filter.mp (hselectedPoints hx)).1
    have hselectedCell : ∀ x ∈ selected, oddModNineResidue x = cell := by
      intro x hx
      exact (Finset.mem_filter.mp (hselectedPoints hx)).2
    have hraw :
        ((Finset.univ.filter fun residue : FiveMillionModFortyNine =>
          3 ≤ (fiveMillionSelectedModFortyNineFibre
            selected residue).card).card ≤ 0) := by
      have hempty :
          (Finset.univ.filter fun residue : FiveMillionModFortyNine =>
            3 ≤ (fiveMillionSelectedModFortyNineFibre
              selected residue).card) = ∅ := by
        apply Finset.not_nonempty_iff_eq_empty.mp
        intro hnonempty
        obtain ⟨residue, hresidue⟩ := hnonempty
        have hthree := (Finset.mem_filter.mp hresidue).2
        have htwo := hcapacity residue
        omega
      simp [hempty]
    exact ⟨fiveMillionOneCellPivotPatternOfSelected
      parity cell hselectedCard hselectedStructured hclass hselectedCell
      (by norm_num) (by norm_num) (by norm_num) hraw
      (by norm_num) (by norm_num)⟩
  · apply Or.inr
    obtain ⟨extraCharge, hextraSubset, hextraCard,
      hresiduesCard, hsupport⟩ := hfailure
    let sixExists := Finset.exists_subset_card_eq hcellSize
    let selected : Finset Nat := Classical.choose sixExists
    have hselectedPoints : selected ⊆ points :=
      (Classical.choose_spec sixExists).1
    have hselectedCard : selected.card = 6 :=
      (Classical.choose_spec sixExists).2
    have hselectedStructured :
        selected ⊆ fiveMillionStructuredResidual N B charged := by
      intro x hx
      exact (Finset.mem_filter.mp (hselectedPoints hx)).1
    have hselectedCell : ∀ x ∈ selected, oddModNineResidue x = cell := by
      intro x hx
      exact (Finset.mem_filter.mp (hselectedPoints hx)).2
    refine ⟨
      { extraCharge := extraCharge
        residues := fiveMillionOneCellHeavyRoots points
        extraChargeSubset := ?_
        extraChargeCard := hextraCard
        residuesCard := hresiduesCard
        support := hsupport
        pattern := ?_ }⟩
    · intro x hx
      exact (Finset.mem_filter.mp (hextraSubset hx)).1
    · rcases fiveMillionSixSelected_threshold_dichotomy hselectedCard with
        htwo | hthree
      · apply Or.inl
        have hraw :
            ((Finset.univ.filter fun residue : FiveMillionModFortyNine =>
              2 ≤ (fiveMillionSelectedModFortyNineFibre
                selected residue).card).card ≤ 2) := by
          simpa [fiveMillionSelectedRawRoots] using htwo
        exact ⟨fiveMillionOneCellPivotPatternOfSelected
          parity cell hselectedCard hselectedStructured hclass hselectedCell
          (by norm_num) (by norm_num) (by norm_num) hraw
          (by norm_num) (by norm_num)⟩
      · apply Or.inr
        have hraw :
            ((Finset.univ.filter fun residue : FiveMillionModFortyNine =>
              3 ≤ (fiveMillionSelectedModFortyNineFibre
                selected residue).card).card ≤ 0) := by
          simpa [fiveMillionSelectedRawRoots] using hthree
        exact ⟨fiveMillionOneCellPivotPatternOfSelected
          parity cell hselectedCard hselectedStructured hclass hselectedCell
          (by norm_num) (by norm_num) (by norm_num) hraw
          (by norm_num) (by norm_num)⟩

#print axioms fiveMillionOneCellPatternDichotomy

end Erdos848
