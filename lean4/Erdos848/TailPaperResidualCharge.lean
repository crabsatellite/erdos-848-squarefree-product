import Erdos848.TailPaperDiagonalSelectionBridge
import Erdos848.TailGlobalMixedDiagonalIdentity

namespace Erdos848

/-!
# Charging a finite exceptional set before a paper diagonal bound

Every finite-range paper branch removes a small, explicitly bounded charge
from the literal Hall residual and sends what remains into one of the compact
diagonal selections.  This lemma performs that bookkeeping once and for all.
It is independent of every generated count table.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem hallResidual_ratio_le_of_paperSelection_charge
    {N lowerBound chargeCap : Nat}
    {residual charged : Finset Nat}
    {selection : PaperDiagonalSelection}
    {diagonalEnvelope : Rat}
    (hNPositive : 0 < N)
    (hLowerPositive : 0 < lowerBound)
    (hLower : lowerBound ≤ N)
    (hchargedSubset : charged ⊆ residual)
    (hchargedCard : charged.card ≤ chargeCap)
    (hstructuredSubset :
      residual \ charged ⊆
        (tailDiagonalBad N).filter
          (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms))
    (hdiagonal :
      (((tailDiagonalBad N).filter
        (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card : Rat) /
          N ≤ diagonalEnvelope) :
    (residual.card : Rat) / N ≤
      diagonalEnvelope + chargeCap / lowerBound := by
  have hpartition :
      (residual \ charged).card + charged.card =
        residual.card :=
    Finset.card_sdiff_add_card_eq_card hchargedSubset
  have hstructuredCard :
      (residual \ charged).card ≤
        ((tailDiagonalBad N).filter
          (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card :=
    Finset.card_le_card hstructuredSubset
  have hstructuredCardRat :
      ((residual \ charged).card : Rat) ≤
        ((tailDiagonalBad N).filter
          (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card := by
    exact_mod_cast hstructuredCard
  have hNPositiveRat : (0 : Rat) < N := by
    exact_mod_cast hNPositive
  have hstructuredRatio :
      ((residual \ charged).card : Rat) / N ≤
        diagonalEnvelope := by
    exact
      (div_le_div_of_nonneg_right hstructuredCardRat
        hNPositiveRat.le).trans hdiagonal
  have hchargedCardRat : (charged.card : Rat) ≤ chargeCap := by
    exact_mod_cast hchargedCard
  have hchargedRatio :
      (charged.card : Rat) / N ≤ (chargeCap : Rat) / N :=
    div_le_div_of_nonneg_right hchargedCardRat hNPositiveRat.le
  have hLowerRat : (lowerBound : Rat) ≤ N := by
    exact_mod_cast hLower
  have hLowerPositiveRat : (0 : Rat) < lowerBound := by
    exact_mod_cast hLowerPositive
  have hchargeAtLower :
      (chargeCap : Rat) / N ≤ chargeCap / lowerBound :=
    div_le_div_of_nonneg_left (by positivity)
      hLowerPositiveRat hLowerRat
  calc
    (residual.card : Rat) / N =
        ((residual \ charged).card : Rat) / N +
          (charged.card : Rat) / N := by
      rw [← add_div]
      congr 1
      exact_mod_cast hpartition.symm
    _ ≤ diagonalEnvelope + (chargeCap : Rat) / N :=
      add_le_add hstructuredRatio hchargedRatio
    _ ≤ diagonalEnvelope + chargeCap / lowerBound :=
      add_le_add le_rfl hchargeAtLower

/-- The literal Hall residual, after removing an explicitly charged set,
lands in a paper selection as soon as the branch proof establishes the
selection predicate pointwise.  Diagonal badness itself is not an extra
branch obligation: it follows from compatibility of the alleged Hall
defect. -/
theorem hallResidual_sdiff_subset_paperSelection
    {N : Nat} {B charged : Finset Nat}
    {selection : PaperDiagonalSelection}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (haccept :
      ∀ x ∈ hallResidual N B \ charged,
        truncatedDiagonalAtomOf x ∈ selection.atoms) :
    hallResidual N B \ charged ⊆
      (tailDiagonalBad N).filter
        (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms) := by
  intro x hx
  have hxResidual : x ∈ hallResidual N B :=
    (Finset.mem_sdiff.mp hx).1
  have hxDiagonal :
      x ∈ globalMixedTailDiagonalBad N :=
    hallResidual_subset_globalMixedTailDiagonalBad hBout hBprop
      hxResidual
  have hxTail : x ∈ tailDiagonalBad N := by
    rwa [globalMixedTailDiagonalBad_eq_tailDiagonalBad] at hxDiagonal
  exact Finset.mem_filter.mpr ⟨hxTail, haccept x hx⟩

/-- Hall-specialized charge bound.  A branch now supplies only its charged
subset, its cardinal cap, and a pointwise paper-selection predicate. -/
theorem hallResidual_ratio_le_of_paperSelection
    {N lowerBound chargeCap : Nat}
    {B charged : Finset Nat}
    {selection : PaperDiagonalSelection}
    {diagonalEnvelope : Rat}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hLowerPositive : 0 < lowerBound)
    (hLower : lowerBound ≤ N)
    (hchargedSubset : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card ≤ chargeCap)
    (haccept :
      ∀ x ∈ hallResidual N B \ charged,
        truncatedDiagonalAtomOf x ∈ selection.atoms)
    (hdiagonal :
      (((tailDiagonalBad N).filter
        (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card : Rat) /
          N ≤ diagonalEnvelope) :
    ((hallResidual N B).card : Rat) / N ≤
      diagonalEnvelope + chargeCap / lowerBound := by
  exact hallResidual_ratio_le_of_paperSelection_charge
    (lt_of_lt_of_le hLowerPositive hLower)
    hLowerPositive hLower hchargedSubset hchargedCard
    (hallResidual_sdiff_subset_paperSelection
      hBout hBprop haccept)
    hdiagonal

#print axioms hallResidual_ratio_le_of_paperSelection_charge
#print axioms hallResidual_sdiff_subset_paperSelection
#print axioms hallResidual_ratio_le_of_paperSelection

end Erdos848
