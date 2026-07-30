import Erdos848.TailHighTenBranchResidual
import Erdos848.TailR263EvenOneMixedHalfTerminal

namespace Erdos848

/-!
# Generic high-range terminal consumer

This interface contains no high-range theorem field.  It records one of the
ten already proved structural branches together with the finite and
transformed-root numerical bounds consumed by that branch.
-/

def highKernelBranchCutoff : TwentyMillionBranch → Nat
  | .evenOneGeneric | .evenOneCommonThree
  | .evenTwoGeneric | .evenTwoCommonThree
  | .evenThreeGeneric | .evenThreeCommonThree => 23
  | .oddTwoGeneric | .oddTwoCommonThree
  | .oddOneGeneric | .oddOneCommonThree => 19

theorem highValuationPart_subset_completion
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass} :
    fiveMillionValuationPart N B cls ⊆ hallCompletion N B := by
  intro pivot hpivot
  exact (Finset.mem_sdiff.mp
    (fiveMillionValuationPart_subset_residual N B cls hpivot)).1

theorem highCloseTriple_subset_residual
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    (triple : TwentyMillionCloseTriple N B cls) :
    triple.pivots ⊆ hallResidual N B := by
  intro pivot hpivot
  exact fiveMillionValuationPart_subset_residual
    N B cls (triple.subsetPart hpivot)

theorem highOddTwoTriple_subset_residual
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (triple : TwentyMillionOddTwoCloseTriple N B parity) :
    triple.pivots ⊆ hallResidual N B := by
  intro pivot hpivot
  rw [triple.pivots_eq] at hpivot
  simp only [Finset.mem_insert, Finset.mem_singleton] at hpivot
  rcases hpivot with rfl | rfl | rfl
  · exact fiveMillionValuationPart_subset_residual
      N B (paperOddValuationClass parity) triple.leftMem
  · exact fiveMillionValuationPart_subset_residual
      N B (paperOddValuationClass parity) triple.rightMem
  · exact fiveMillionValuationPart_subset_residual
      N B (paperOddValuationClass (oppositeOddParity parity))
        triple.thirdMem

theorem highOddOneTriple_subset_residual
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (triple : TwentyMillionOddOneCloseTriple N B parity) :
    triple.pivots ⊆ hallResidual N B := by
  intro pivot hpivot
  exact fiveMillionValuationPart_subset_residual
    N B (paperOddValuationClass parity)
      (triple.subsetPart hpivot)

def HighKernelTerminalCertificate
    (budget : HighTenBranchBudget)
    (N : Nat) (B : Finset Nat) : Prop :=
  ∃ branch : TwentyMillionBranch,
    ∃ pivots : Finset Nat,
      TwentyMillionBranchApplies N B branch ∧
      pivots.card = 3 ∧
      pivots ⊆ hallCompletion N B ∧
      fiveMillionR263BaseMixedHalfPayment N B pivots
          (highKernelBranchCutoff branch) / N ≤
        hybridTenBranchFinitePayment branch ∧
      hallBaseTailSquarePayment N B pivots
          (highKernelBranchCutoff branch) 2 / N ≤
        budget.tailPayment branch

theorem HighKernelTerminalCertificate.completion_ratio_le_total
    {budget : HighTenBranchBudget}
    {N : Nat} {B : Finset Nat}
    (hlowerPositive : 0 < budget.lower)
    (hN : budget.lower ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hdiagonal :
      ∀ selection : PaperDiagonalSelection,
        paperDiagonalRatio N selection ≤ budget.diagonal selection)
    (certificate : HighKernelTerminalCertificate budget N B) :
    ∃ branch : TwentyMillionBranch,
      ((hallCompletion N B).card : Rat) / N ≤
        budget.total branch := by
  rcases certificate with
    ⟨branch, pivots, hbranch, hpivotsCard, hpivotsCompletion,
      hfinite, htail⟩
  refine ⟨branch, ?_⟩
  have hNposNat : 0 < N := hlowerPositive.trans_le hN
  have hNposRat : (0 : Rat) < N := by exact_mod_cast hNposNat
  have hraw :=
    hallCompletion_card_le_fiveMillionR263MixedHalfComponents
      (cutoff := highKernelBranchCutoff branch)
      hBprop hpivotsCompletion hpivotsCard
  have hratio := div_le_div_of_nonneg_right hraw hNposRat.le
  have hresidual := highTenBranch_residual_ratio_le
    hlowerPositive hN hBout hBprop hbranch hdiagonal
  calc
    ((hallCompletion N B).card : Rat) / N ≤
      ((hallResidual N B).card +
          fiveMillionR263BaseMixedHalfPayment N B pivots
            (highKernelBranchCutoff branch) +
          hallBaseTailSquarePayment N B pivots
            (highKernelBranchCutoff branch) 2) / N :=
      hratio
    _ = ((hallResidual N B).card : Rat) / N +
        fiveMillionR263BaseMixedHalfPayment N B pivots
          (highKernelBranchCutoff branch) / N +
        hallBaseTailSquarePayment N B pivots
          (highKernelBranchCutoff branch) 2 / N := by
      ring
    _ ≤ budget.residualPayment branch +
        hybridTenBranchFinitePayment branch +
        budget.tailPayment branch :=
      add_le_add
        (add_le_add hresidual hfinite)
        htail
    _ = budget.total branch := by rfl

#print axioms
  HighKernelTerminalCertificate.completion_ratio_le_total

end Erdos848
