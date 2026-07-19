import Erdos848.TailFiveMillionNineCellMatchGenerated
import Erdos848.TailFiveMillionCapacityFailureTerminal

namespace Erdos848

/-! # Unconditional R263 producers for eight and nine active odd cells -/

theorem fiveMillionOneOddEightCellsKernelClose
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellCard : cells.card = 8)
    (hactive : ∀ cell ∈ cells,
      ∃ x ∈ fiveMillionStructuredResidual N B charged,
        oddModNineResidue x = cell)
    (hchargedSubset : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card ≤ 128)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells) :
    Nonempty (FiveMillionR263TerminalCertificate N B) := by
  classical
  have hroute := fiveMillionOneOddEightCellsKernelDichotomy
    hLower hUpper hBout hBprop parity cells hcellCard hchargedSubset
      hchargedCard hclass hcells
  rcases hroute with hmatch | ⟨Y, hdefect⟩
  · exact hmatch
  · have hdiagonal :=
      fiveMillionOneOddEightCellsFailureStructuredDiagonal_kernel_close
        hLower hUpper hBout hBprop parity cells hcellCard hactive hclass hcells
          Y hdefect
    exact ⟨fiveMillionOneOddEightCellsFailureR263Terminal
      hLower hBout parity cells hcellCard hactive hchargedSubset hchargedCard
        hclass hdiagonal⟩

theorem fiveMillionOneOddNineCellsKernelClose
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellCard : cells.card = 9)
    (hactive : ∀ cell ∈ cells,
      ∃ x ∈ fiveMillionStructuredResidual N B charged,
        oddModNineResidue x = cell)
    (hchargedSubset : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card ≤ 128)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells) :
    Nonempty (FiveMillionR263TerminalCertificate N B) := by
  classical
  have hroute := fiveMillionOneOddNineCellsKernelDichotomy
    hLower hUpper hBout hBprop parity cells hcellCard hchargedSubset
      hchargedCard hclass hcells
  rcases hroute with hmatch | ⟨Y, hdefect⟩
  · exact hmatch
  · have hdiagonal :=
      fiveMillionOneOddNineCellsFailureStructuredDiagonal_kernel_close
        hLower hUpper hBout hBprop parity cells hcellCard hactive hclass hcells
          Y hdefect
    exact ⟨fiveMillionOneOddNineCellsFailureR263Terminal
      hLower hBout parity cells hcellCard hactive hchargedSubset hchargedCard
        hclass hdiagonal⟩

#print axioms fiveMillionOneOddEightCellsKernelClose
#print axioms fiveMillionOneOddNineCellsKernelClose

end Erdos848
