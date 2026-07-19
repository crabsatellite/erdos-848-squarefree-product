import Erdos848.TailFiveMillionResidualCore
import Erdos848.TailFiveMillionBudget

namespace Erdos848

/-!
## Actual off-base residual payment in the controlling odd-cell branch

The generated diagonal certificate counts outside-base diagonal candidates.
This file connects that set to the literal Hall residual, permits the raw
charged vertices used by the allocation argument, and proves the exact
`diagonal + 128 / N` bound consumed by the controlling budget.
-/

/-- Every literal off-base Hall-completion point is one of the diagonal
candidates certified by the generated marker. -/
lemma hallResidual_subset_tailDiagonalBad
    {N : ℕ} {B : Finset ℕ}
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

/-- Once the uncharged residual occupies selected mod-nine cells in one odd
mod-four class, it is literally contained in the generated cell union. -/
lemma fiveMillionStructuredResidual_subset_cellUnion
    {N : ℕ} {B charged : Finset ℕ}
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
  have hxBad := hallResidual_subset_tailDiagonalBad hBout hBprop hxResidual
  apply Finset.mem_biUnion.mpr
  refine ⟨oddModNineResidue x, hcells x hx, ?_⟩
  apply Finset.mem_filter.mpr
  refine ⟨hxBad, ?_⟩
  exact ⟨by simpa [OddModNineCell.modFour] using hclass x hx, rfl⟩

/-- Direct residual component of the `O1, s = 7` row.  The conclusion refers
to the actual Hall residual, not an abstract diagonal surrogate. -/
theorem fiveMillionResidual_ratio_le_oneOddSevenCells
    {N : ℕ} {B charged : Finset ℕ}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcharged : charged ⊆ hallResidual N B)
    (hchargeCard : charged.card ≤ 128)
    (parity : Bool) (cells : Finset (Fin 9))
    (hcellCard : cells.card ≤ 7)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      oddModNineResidue x ∈ cells) :
    ((hallResidual N B).card : ℚ) / N ≤
      fiveMillionOneOddS7DiagonalEnvelope + 128 / N := by
  have hsubset := fiveMillionStructuredResidual_subset_cellUnion
    hBout hBprop parity cells hclass hcells
  have hstructuredCard :
      (fiveMillionStructuredResidual N B charged).card ≤
        (tailDiagonalCellUnion N parity cells).card :=
    Finset.card_le_card hsubset
  have hNPositive : (0 : ℚ) ≤ N := by positivity
  have hstructuredRatio :
      ((fiveMillionStructuredResidual N B charged).card : ℚ) / N ≤
        fiveMillionOneOddS7DiagonalEnvelope := by
    calc
      ((fiveMillionStructuredResidual N B charged).card : ℚ) / N ≤
          ((tailDiagonalCellUnion N parity cells).card : ℚ) / N := by
        apply div_le_div_of_nonneg_right _ hNPositive
        exact_mod_cast hstructuredCard
      _ ≤ fiveMillionOneOddS7DiagonalEnvelope :=
        fiveMillionOneOddS7DiagonalEnvelope_kernel_close
          N hLower hUpper parity cells hcellCard
  have hchargedRatio : (charged.card : ℚ) / N ≤ 128 / N := by
    apply div_le_div_of_nonneg_right _ hNPositive
    exact_mod_cast hchargeCard
  have hpartition :
      (fiveMillionStructuredResidual N B charged).card + charged.card =
        (hallResidual N B).card := by
    simpa [fiveMillionStructuredResidual] using
      Finset.card_sdiff_add_card_eq_card hcharged
  calc
    ((hallResidual N B).card : ℚ) / N =
        ((fiveMillionStructuredResidual N B charged).card : ℚ) / N +
          (charged.card : ℚ) / N := by
      rw [← add_div]
      congr 1
      exact_mod_cast hpartition.symm
    _ ≤ fiveMillionOneOddS7DiagonalEnvelope + 128 / N :=
      add_le_add hstructuredRatio hchargedRatio

#print axioms fiveMillionResidual_ratio_le_oneOddSevenCells

end Erdos848
