import Erdos848.TailFiveMillionR263Terminal
import Erdos848.GeneratedTailDiagonalCoverage.Certificate

namespace Erdos848

/-!
# Generated diagonal producer for the controlling R263 branch

This is the direct bridge from the exact kernel-checked seven-cell diagonal
certificate to the literal Hall residual.  In particular, the constructor at
the end of the file does not accept a diagonal bound as an input.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

lemma hallResidual_subset_generatedTailDiagonalBad
    {N : Nat} {B : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B) :
    hallResidual N B ⊆ tailDiagonalBad N := by
  intro x hx
  have hxCompletion : x ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hx).1
  have hxNotBase : x ∉ lowBaseSet N :=
    (Finset.mem_sdiff.mp hx).2
  have hxBounds := hallCompletion_subset_Icc hBout hxCompletion
  have hxOutside : OutsideLowBase x := by
    constructor
    · intro hxSeven
      apply hxNotBase
      apply Finset.mem_union_left
      exact Finset.mem_filter.mpr ⟨hxBounds, hxSeven⟩
    · intro hxEighteen
      apply hxNotBase
      apply Finset.mem_union_right
      exact Finset.mem_filter.mpr ⟨hxBounds, hxEighteen⟩
  have hxDiagonal : ¬ Squarefree (x ^ 2 + 1) := by
    simpa [pow_two] using
      hallCompletion_nonSquarefree hBprop x hxCompletion x hxCompletion
  exact Finset.mem_filter.mpr ⟨hxBounds, hxOutside, hxDiagonal⟩

lemma fiveMillionStructuredResidual_subset_generatedCellUnion
    {N : Nat} {B charged : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool) (cells : Finset (Fin 9))
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells) :
    fiveMillionStructuredResidual N B charged ⊆
      tailDiagonalCellUnion N parity cells := by
  intro x hx
  have hxResidual : x ∈ hallResidual N B :=
    (Finset.mem_sdiff.mp hx).1
  have hxBad := hallResidual_subset_generatedTailDiagonalBad
    hBout hBprop hxResidual
  apply Finset.mem_biUnion.mpr
  refine ⟨oddModNineResidue x, hcells x hx, ?_⟩
  apply Finset.mem_filter.mpr
  refine ⟨hxBad, ?_⟩
  exact ⟨by simpa [OddModNineCell.modFour] using hclass x hx, rfl⟩

theorem globalMixedOneOddSevenCellStructuredDiagonal_kernel_close
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellCard : cells.card ≤ 7)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells) :
    ((fiveMillionStructuredResidual N B charged).card : Rat) / N ≤
      globalMixedOneOddSevenCellDiagonalEnvelope := by
  have hsubset :=
    fiveMillionStructuredResidual_subset_generatedCellUnion
      hBout hBprop parity cells hclass hcells
  have hcard := Finset.card_le_card hsubset
  have hNPositive : (0 : Rat) < N := by positivity
  calc
    ((fiveMillionStructuredResidual N B charged).card : Rat) / N ≤
        ((tailDiagonalCellUnion N parity cells).card : Rat) / N := by
      apply div_le_div_of_nonneg_right _ hNPositive.le
      exact_mod_cast hcard
    _ ≤ globalMixedOneOddSevenCellDiagonalEnvelope := by
      simpa [globalMixedOneOddSevenCellDiagonalEnvelope] using
        GeneratedTailDiagonalCoverage.fiveMillionOneOddS7Diagonal_kernel_close
          N hLower hUpper parity cells hcellCard

/-- Actual controlling-branch allocation data, with the diagonal field
discharged by the generated kernel certificate rather than supplied by the
caller. -/
noncomputable def globalMixedOneOddSevenCellCertificate_of_generated
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card ≤ 128)
    (hcellsLower : 6 ≤ cells.card) (hcellsUpper : cells.card ≤ 7)
    (hactive : ∀ cell ∈ cells,
      ∃ x ∈ fiveMillionStructuredResidual N B charged,
        oddModNineResidue x = cell)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells) :
    GlobalMixedOneOddSevenCellCertificate N B :=
  { charged := charged
    parity := parity
    cells := cells
    chargedSubset := hcharged
    chargedCard := hchargedCard
    cellsCardLower := hcellsLower
    cellsCardUpper := hcellsUpper
    structuredClass := hclass
    structuredCells := hcells
    activeCells := hactive
    structuredDiagonal :=
      globalMixedOneOddSevenCellStructuredDiagonal_kernel_close
        hLower hUpper hBout hBprop parity cells hcellsUpper hclass hcells }

noncomputable def globalMixedOneOddSevenCellR263Terminal_of_generated
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card ≤ 128)
    (hcellsLower : 6 ≤ cells.card) (hcellsUpper : cells.card ≤ 7)
    (hactive : ∀ cell ∈ cells,
      ∃ x ∈ fiveMillionStructuredResidual N B charged,
        oddModNineResidue x = cell)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells) :
    FiveMillionR263TerminalCertificate N B :=
  (globalMixedOneOddSevenCellCertificate_of_generated
    hLower hUpper hBout hBprop parity cells hcharged hchargedCard
      hcellsLower hcellsUpper hactive hclass hcells).toR263Terminal
        hLower hBout

#print axioms hallResidual_subset_generatedTailDiagonalBad
#print axioms globalMixedOneOddSevenCellStructuredDiagonal_kernel_close
#print axioms globalMixedOneOddSevenCellCertificate_of_generated
#print axioms globalMixedOneOddSevenCellR263Terminal_of_generated

end Erdos848
