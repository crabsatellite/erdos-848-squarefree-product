import Erdos848.TailGlobalMixedOneOddSevenCellGenerated
import Erdos848.TailTenMillionCertificateTypes

namespace Erdos848

/-!
# Ten-million periodic one-odd diagonal payment

The corrected paper route allocates the remaining one-odd residual among at
most nine `(mod 4, mod 9)` cells.  The compact paper grid already proves the
same uniform bound for every individual cell.  This file only performs the
kernel-checked finite-union arithmetic; no new diagonal search is needed.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

lemma tailDiagonalCell_eq_tenMillionDiagonalOneOddCellSet
    (N : Nat) (parity : Bool) (cell : Fin 9) :
    tailDiagonalCell N { parity := parity, residue := cell } =
      tenMillionDiagonalOneOddCellSet N (if parity then 3 else 1) cell := by
  ext x
  simp [tailDiagonalCell, tenMillionDiagonalOneOddCellSet,
    OddModNineCell.Accepts, OddModNineCell.modFour]

theorem tenMillionDiagonalCellUnion_ratio_le
    {N : Nat}
    (hLower : tenMillionLower ≤ N) (hUpper : N < tenMillionUpper)
    (hcellCertificate : TenMillionDiagonalOneOddCellCertificate)
    (parity : Bool) (cells : Finset (Fin 9)) :
    ((tailDiagonalCellUnion N parity cells).card : Rat) / N ≤
      (cells.card : Rat) * tenMillionDiagonalOneOddCell := by
  classical
  have hNPositive : (0 : Rat) < N := by
    exact_mod_cast
      (lt_of_lt_of_le (by norm_num [tenMillionLower]) hLower)
  have hcard :
      ((tailDiagonalCellUnion N parity cells).card : Rat) ≤
        ∑ cell ∈ cells,
          ((tailDiagonalCell N
            { parity := parity, residue := cell }).card : Rat) := by
    exact_mod_cast (Finset.card_biUnion_le :
      (tailDiagonalCellUnion N parity cells).card ≤
        ∑ cell ∈ cells,
          (tailDiagonalCell N
            { parity := parity, residue := cell }).card)
  calc
    ((tailDiagonalCellUnion N parity cells).card : Rat) / N ≤
        (∑ cell ∈ cells,
          ((tailDiagonalCell N
            { parity := parity, residue := cell }).card : Rat)) / N := by
      exact div_le_div_of_nonneg_right hcard hNPositive.le
    _ = ∑ cell ∈ cells,
        ((tailDiagonalCell N
          { parity := parity, residue := cell }).card : Rat) / N := by
      rw [Finset.sum_div]
    _ ≤ ∑ _cell ∈ cells, tenMillionDiagonalOneOddCell := by
      apply Finset.sum_le_sum
      intro cell hcell
      rw [tailDiagonalCell_eq_tenMillionDiagonalOneOddCellSet]
      exact hcellCertificate
        N hLower hUpper (if parity then 3 else 1)
          (by cases parity <;> simp) cell cell.isLt
    _ = (cells.card : Rat) * tenMillionDiagonalOneOddCell := by
      simp

theorem tenMillionStructuredOneOddCells_ratio_le
    {N : Nat} {B charged : Finset Nat}
    (hLower : tenMillionLower ≤ N) (hUpper : N < tenMillionUpper)
    (hcellCertificate : TenMillionDiagonalOneOddCellCertificate)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (parity : Bool) (cells : Finset (Fin 9))
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells) :
    ((fiveMillionStructuredResidual N B charged).card : Rat) / N ≤
      (cells.card : Rat) * tenMillionDiagonalOneOddCell := by
  have hsubset :=
    fiveMillionStructuredResidual_subset_generatedCellUnion
      hBout hBprop parity cells hclass hcells
  have hcard := Finset.card_le_card hsubset
  have hNPositive : (0 : Rat) < N := by
    exact_mod_cast
      (lt_of_lt_of_le (by norm_num [tenMillionLower]) hLower)
  calc
    ((fiveMillionStructuredResidual N B charged).card : Rat) / N ≤
        ((tailDiagonalCellUnion N parity cells).card : Rat) / N := by
      apply div_le_div_of_nonneg_right _ hNPositive.le
      exact_mod_cast hcard
    _ ≤ (cells.card : Rat) * tenMillionDiagonalOneOddCell :=
      tenMillionDiagonalCellUnion_ratio_le
        hLower hUpper hcellCertificate parity cells

#print axioms tailDiagonalCell_eq_tenMillionDiagonalOneOddCellSet
#print axioms tenMillionDiagonalCellUnion_ratio_le
#print axioms tenMillionStructuredOneOddCells_ratio_le

end Erdos848
