import Erdos848.TailFiveMillionNineCellMatchTerminal

namespace Erdos848

/-! # Kernel diagonal and complete matching-side producer for nine cells -/

theorem fiveMillionOneOddNineCellsStructuredDiagonal_kernel_close
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellCard : cells.card <= 9)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells) :
    ((fiveMillionStructuredResidual N B charged).card : Rat) / N <=
      fiveMillionOneOddNineCellsDiagonalEnvelope := by
  have hsubset := fiveMillionStructuredResidual_subset_generatedCellUnion
    hBout hBprop parity cells hclass hcells
  have hcard := Finset.card_le_card hsubset
  have hNPositive : (0 : Rat) < N := by positivity
  calc
    ((fiveMillionStructuredResidual N B charged).card : Rat) / N <=
        ((tailDiagonalCellUnion N parity cells).card : Rat) / N := by
      apply div_le_div_of_nonneg_right _ hNPositive.le
      exact_mod_cast hcard
    _ <= fiveMillionOneOddNineCellsDiagonalEnvelope := by
      simpa [fiveMillionOneOddNineCellsDiagonalEnvelope] using
        GeneratedTailDiagonalCoverage.fiveMillionOneOddS9Diagonal_kernel_close
          N hLower hUpper parity cells hcellCard

theorem fiveMillionOneOddNineCellsKernelDichotomy
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellCard : cells.card = 9)
    (hchargedSubset : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card <= 128)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells) :
    Nonempty (FiveMillionR263TerminalCertificate N B) ∨
      (∃ Y : Finset cells,
        2 * (capacityTwoNeighbours
          (fun cell : cells =>
            fiveMillionCellModFortyNineEdge N B charged cell.1) Y).card + 1 <
          Y.card) := by
  classical
  have hraw := fiveMillionNineCellCapacityDichotomy
    parity cells hcellCard hclass
  rcases hraw with hmatch | hfailure
  · left
    obtain ⟨produced⟩ := hmatch
    let pivots := produced.1
    let pattern : FiveMillionEightPivotPattern N B pivots := produced.2.1
    have hpivotsStructured :
        pivots ⊆ fiveMillionStructuredResidual N B charged := produced.2.2
    have hdiagonal :=
      fiveMillionOneOddNineCellsStructuredDiagonal_kernel_close
        hLower hUpper hBout hBprop parity cells (by omega) hclass hcells
    exact ⟨fiveMillionOneOddNineCellsMatchR263Terminal
      hLower hBout parity hchargedSubset hchargedCard hclass pattern
        hpivotsStructured hdiagonal⟩
  · exact Or.inr hfailure

#print axioms fiveMillionOneOddNineCellsStructuredDiagonal_kernel_close
#print axioms fiveMillionOneOddNineCellsKernelDichotomy

end Erdos848
