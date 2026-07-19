import Erdos848.TailFiveMillionNineCellCapacityMatching
import Erdos848.TailGlobalMixedOneOddSevenCellGenerated
import Erdos848.GeneratedTailDiagonalCoverage.TailFailureEnvelopeAggregate

namespace Erdos848

/-!
# Actual Hall-defect diagonal bounds for eight and nine active cells

The restricted cells are the values of the literal Hall-defect set `Y`, and
the restricted mod-49 residues are its literal neighbour set.  Thus this file
connects the generated failure envelope to the actual structured residual.
-/

def fiveMillionOneOddEightCellsFailureDiagonalEnvelope : Rat :=
  3570000000000000 / 10^18

def fiveMillionOneOddNineCellsFailureDiagonalEnvelope : Rat :=
  3585200000000000 / 10^18

lemma capacityFailureRestricted_card
    {cells : Finset (Fin 9)} (Y : Finset cells) :
    (Y.image fun cell => cell.1).card = Y.card := by
  rw [Finset.card_image_of_injective]
  intro left right heq
  exact Subtype.ext heq

lemma capacityTwoNeighbours_nonempty_of_active
    {N : Nat} {B charged : Finset Nat}
    {cells : Finset (Fin 9)}
    (hactive : ∀ cell ∈ cells,
      ∃ x ∈ fiveMillionStructuredResidual N B charged,
        oddModNineResidue x = cell)
    {Y : Finset cells} (hY : Y.Nonempty) :
    (capacityTwoNeighbours
      (fun cell : cells =>
        fiveMillionCellModFortyNineEdge N B charged cell.1) Y).Nonempty := by
  classical
  obtain ⟨cell, hcell⟩ := hY
  obtain ⟨x, hx, hxCell⟩ := hactive cell.1 cell.2
  let residue : FiveMillionModFortyNine :=
    ⟨x % 49, Nat.mod_lt x (by norm_num)⟩
  refine ⟨residue, ?_⟩
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_univ _, cell, hcell, ?_⟩
  exact ⟨x, hx, hxCell, rfl⟩

theorem fiveMillionStructuredResidual_subset_capacityFailureCover
    {N : Nat} {B charged : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool) (cells : Finset (Fin 9))
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells)
    (Y : Finset cells) :
    fiveMillionStructuredResidual N B charged ⊆
      tailDiagonalCapacityFailureCover N parity cells
        (Y.image fun cell => cell.1)
        (capacityTwoNeighbours
          (fun cell : cells =>
            fiveMillionCellModFortyNineEdge N B charged cell.1) Y) := by
  classical
  intro x hx
  have hxResidual : x ∈ hallResidual N B :=
    (Finset.mem_sdiff.mp hx).1
  have hxBad := hallResidual_subset_generatedTailDiagonalBad
    hBout hBprop hxResidual
  have hxCell : x ∈ tailDiagonalCell N
      { parity := parity, residue := oddModNineResidue x } := by
    apply Finset.mem_filter.mpr
    refine ⟨hxBad, ?_⟩
    exact ⟨by simpa [OddModNineCell.modFour] using hclass x hx, rfl⟩
  by_cases hxRestricted :
      oddModNineResidue x ∈ Y.image fun cell => cell.1
  · obtain ⟨cell, hcell, hcellValue⟩ :=
      Finset.mem_image.mp hxRestricted
    let residue : FiveMillionModFortyNine :=
      ⟨x % 49, Nat.mod_lt x (by norm_num)⟩
    have hresidue : residue ∈ capacityTwoNeighbours
        (fun cell : cells =>
          fiveMillionCellModFortyNineEdge N B charged cell.1) Y := by
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_univ _, cell, hcell, ?_⟩
      exact ⟨x, hx, hcellValue.symm, rfl⟩
    apply Finset.mem_union_right
    apply Finset.mem_biUnion.mpr
    refine ⟨oddModNineResidue x, hxRestricted, ?_⟩
    apply Finset.mem_biUnion.mpr
    refine ⟨residue, hresidue, ?_⟩
    exact Finset.mem_filter.mpr ⟨hxCell, rfl⟩
  · apply Finset.mem_union_left
    apply Finset.mem_biUnion.mpr
    exact ⟨oddModNineResidue x,
      Finset.mem_sdiff.mpr ⟨hcells x hx, hxRestricted⟩, hxCell⟩

theorem fiveMillionOneOddEightCellsFailureStructuredDiagonal_kernel_close
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellCard : cells.card = 8)
    (hactive : ∀ cell ∈ cells,
      ∃ x ∈ fiveMillionStructuredResidual N B charged,
        oddModNineResidue x = cell)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells)
    (Y : Finset cells)
    (hdefect :
      2 * (capacityTwoNeighbours
        (fun cell : cells =>
          fiveMillionCellModFortyNineEdge N B charged cell.1) Y).card <
        Y.card) :
    ((fiveMillionStructuredResidual N B charged).card : Rat) / N ≤
      fiveMillionOneOddEightCellsFailureDiagonalEnvelope := by
  classical
  let restricted : Finset (Fin 9) := Y.image fun cell => cell.1
  let residues : Finset (Fin 49) := capacityTwoNeighbours
    (fun cell : cells =>
      fiveMillionCellModFortyNineEdge N B charged cell.1) Y
  have hrestrictedSubset : restricted ⊆ cells := by
    intro cell hcell
    obtain ⟨source, hsource, rfl⟩ := Finset.mem_image.mp hcell
    exact source.2
  have hYCard : Y.card ≤ cells.card := by
    calc
      Y.card ≤ Fintype.card cells := Finset.card_le_univ Y
      _ = cells.card := by simp
  have hYNonempty : Y.Nonempty := Finset.card_pos.mp (by omega)
  have hresiduesNonempty : residues.Nonempty := by
    exact capacityTwoNeighbours_nonempty_of_active hactive hYNonempty
  have hresiduesPositive : 0 < residues.card :=
    Finset.card_pos.mpr hresiduesNonempty
  have hresiduesSmall : residues.card < 5 := by
    dsimp [residues] at hresiduesPositive ⊢
    omega
  have hrestrictedCard : restricted.card = Y.card := by
    exact capacityFailureRestricted_card Y
  have hdefectCard : 1 + 2 * residues.card ≤ restricted.card := by
    rw [hrestrictedCard]
    dsimp [residues]
    omega
  have hcover :=
    fiveMillionStructuredResidual_subset_capacityFailureCover
      hBout hBprop parity cells hclass hcells Y
  have hcoverCard := Finset.card_le_card hcover
  have hcoverRatio :=
    GeneratedTailDiagonalCoverage.fiveMillionOneOddS8FailureDiagonal_kernel_close
      N hLower hUpper parity cells restricted residues hrestrictedSubset
        hresiduesPositive hresiduesSmall hcellCard hdefectCard
  have hNPositive : (0 : Rat) < N := by positivity
  calc
    ((fiveMillionStructuredResidual N B charged).card : Rat) / N ≤
        ((tailDiagonalCapacityFailureCover N parity cells restricted residues).card :
          Rat) / N := by
      apply div_le_div_of_nonneg_right _ hNPositive.le
      exact_mod_cast hcoverCard
    _ ≤ fiveMillionOneOddEightCellsFailureDiagonalEnvelope := by
      simpa [fiveMillionOneOddEightCellsFailureDiagonalEnvelope] using hcoverRatio

theorem fiveMillionOneOddNineCellsFailureStructuredDiagonal_kernel_close
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellCard : cells.card = 9)
    (hactive : ∀ cell ∈ cells,
      ∃ x ∈ fiveMillionStructuredResidual N B charged,
        oddModNineResidue x = cell)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells)
    (Y : Finset cells)
    (hdefect :
      2 * (capacityTwoNeighbours
        (fun cell : cells =>
          fiveMillionCellModFortyNineEdge N B charged cell.1) Y).card + 1 <
        Y.card) :
    ((fiveMillionStructuredResidual N B charged).card : Rat) / N ≤
      fiveMillionOneOddNineCellsFailureDiagonalEnvelope := by
  classical
  let restricted : Finset (Fin 9) := Y.image fun cell => cell.1
  let residues : Finset (Fin 49) := capacityTwoNeighbours
    (fun cell : cells =>
      fiveMillionCellModFortyNineEdge N B charged cell.1) Y
  have hrestrictedSubset : restricted ⊆ cells := by
    intro cell hcell
    obtain ⟨source, hsource, rfl⟩ := Finset.mem_image.mp hcell
    exact source.2
  have hYCard : Y.card ≤ cells.card := by
    calc
      Y.card ≤ Fintype.card cells := Finset.card_le_univ Y
      _ = cells.card := by simp
  have hYNonempty : Y.Nonempty := Finset.card_pos.mp (by omega)
  have hresiduesNonempty : residues.Nonempty := by
    exact capacityTwoNeighbours_nonempty_of_active hactive hYNonempty
  have hresiduesPositive : 0 < residues.card :=
    Finset.card_pos.mpr hresiduesNonempty
  have hresiduesSmall : residues.card < 5 := by
    dsimp [residues] at hresiduesPositive ⊢
    omega
  have hrestrictedCard : restricted.card = Y.card := by
    exact capacityFailureRestricted_card Y
  have hdefectCard : 2 + 2 * residues.card ≤ restricted.card := by
    rw [hrestrictedCard]
    dsimp [residues]
    omega
  have hcover :=
    fiveMillionStructuredResidual_subset_capacityFailureCover
      hBout hBprop parity cells hclass hcells Y
  have hcoverCard := Finset.card_le_card hcover
  have hcoverRatio :=
    GeneratedTailDiagonalCoverage.fiveMillionOneOddS9FailureDiagonal_kernel_close
      N hLower hUpper parity cells restricted residues hrestrictedSubset
        hresiduesPositive hresiduesSmall hcellCard hdefectCard
  have hNPositive : (0 : Rat) < N := by positivity
  calc
    ((fiveMillionStructuredResidual N B charged).card : Rat) / N ≤
        ((tailDiagonalCapacityFailureCover N parity cells restricted residues).card :
          Rat) / N := by
      apply div_le_div_of_nonneg_right _ hNPositive.le
      exact_mod_cast hcoverCard
    _ ≤ fiveMillionOneOddNineCellsFailureDiagonalEnvelope := by
      simpa [fiveMillionOneOddNineCellsFailureDiagonalEnvelope] using hcoverRatio

#print axioms fiveMillionStructuredResidual_subset_capacityFailureCover
#print axioms fiveMillionOneOddEightCellsFailureStructuredDiagonal_kernel_close
#print axioms fiveMillionOneOddNineCellsFailureStructuredDiagonal_kernel_close

end Erdos848
