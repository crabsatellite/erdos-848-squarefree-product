import Erdos848.TailTenMillionEvenOneCellTerminals
import Erdos848.TailTenMillionEvenTwoCellTerminals
import Erdos848.TailTenMillionOddAllocation
import Erdos848.TailGlobalMixedResidual

namespace Erdos848

/-!
# Complete kernel allocation on `10M ≤ N < 20M`

Each even valuation is tested for two dense cells, then one dense cell, then
charged in full.  If all three even valuations are charged, the already
kernelized periodic odd dispatcher finishes the branch.  Four-pivot and
three-pivot terminals remain distinct because their literal Boolean
decompositions are different.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

inductive TenMillionKernelTerminal
    (N : Nat) (B : Finset Nat) : Type
  | threePivot (certificate : TenMillionR263TerminalCertificate N B)
  | fourPivot
      (certificate : TenMillionR263FourPivotTerminalCertificate N B)

theorem TenMillionKernelTerminal.completion_ratio_lt_target
    {N : Nat} {B : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hBprop : NonSquarefreeProductProp B)
    (terminal : TenMillionKernelTerminal N B) :
    ((hallCompletion N B).card : Rat) / N <
      tenMillionHallTarget N := by
  cases terminal with
  | threePivot certificate =>
      exact certificate.completion_ratio_lt_target hLower hBprop
  | fourPivot certificate =>
      exact certificate.completion_ratio_lt_target hLower hBprop

private theorem tenMillionEvenCharge_ratio_le
    {N : Nat} {B : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hOne :
      (fiveMillionValuationPart N B .evenOne).card ≤
        9 * tenMillionClosePairBucketCap N)
    (hTwo :
      (fiveMillionValuationPart N B .evenTwo).card ≤
        9 * tenMillionClosePairBucketCap N)
    (hThree :
      (fiveMillionValuationPart N B .evenThree).card ≤
        9 * tenMillionClosePairBucketCap N) :
    ((fiveMillionR263EvenCharge N B).card : Rat) / N ≤
      27 * tenMillionCellCharge := by
  have hcard :
      (fiveMillionR263EvenCharge N B).card ≤
        27 * tenMillionClosePairBucketCap N := by
    calc
      (fiveMillionR263EvenCharge N B).card ≤
          (fiveMillionValuationPart N B .evenOne).card +
            (fiveMillionValuationPart N B .evenTwo).card +
              (fiveMillionValuationPart N B .evenThree).card := by
        unfold fiveMillionR263EvenCharge
        exact (Finset.card_union_le _ _).trans
          (add_le_add (Finset.card_union_le _ _) le_rfl)
      _ ≤ 27 * tenMillionClosePairBucketCap N := by omega
  have hNposNat : 0 < N := by
    exact lt_of_lt_of_le (by norm_num [tenMillionLower]) hLower
  have hNpos : (0 : Rat) < N := by exact_mod_cast hNposNat
  have hcardQ :
      ((fiveMillionR263EvenCharge N B).card : Rat) ≤
        (27 * tenMillionClosePairBucketCap N : Nat) := by
    exact_mod_cast hcard
  have hcap :=
    tenMillionClosePairBucketCap_ratio_le_cellCharge hLower
  have hscaled :=
    mul_le_mul_of_nonneg_left hcap (by norm_num : (0 : Rat) ≤ 27)
  calc
    ((fiveMillionR263EvenCharge N B).card : Rat) / N ≤
        ((27 * tenMillionClosePairBucketCap N : Nat) : Rat) / N :=
      div_le_div_of_nonneg_right hcardQ hNpos.le
    _ = 27 * ((tenMillionClosePairBucketCap N : Rat) / N) := by
      push_cast
      ring
    _ ≤ 27 * tenMillionCellCharge := hscaled

private theorem tenMillionOddMass_of_residual
    {N : Nat} {B : Finset Nat}
    (hUpper : N < tenMillionUpper)
    (hOne :
      (fiveMillionValuationPart N B .evenOne).card ≤
        9 * tenMillionClosePairBucketCap N)
    (hTwo :
      (fiveMillionValuationPart N B .evenTwo).card ≤
        9 * tenMillionClosePairBucketCap N)
    (hThree :
      (fiveMillionValuationPart N B .evenThree).card ≤
        9 * tenMillionClosePairBucketCap N)
    (hresidual : 19_046 < (hallResidual N B).card) :
    91 ≤
      (fiveMillionValuationPart N B .oddOne).card +
        (fiveMillionValuationPart N B .oddThree).card := by
  have hcap :=
    tenMillionClosePairBucketCap_le_twenty hUpper
  have hparts := fiveMillionValuationParts_card_sum N B
  rw [show (Finset.univ : Finset FiveMillionValuationClass) =
      {.evenOne, .evenTwo, .evenThree, .oddOne, .oddThree} by decide] at hparts
  simp at hparts
  omega

theorem tenMillionEvenAllocationTerminal
    {N : Nat} {B : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hresidual : 19_046 < (hallResidual N B).card) :
    Nonempty (TenMillionKernelTerminal N B) := by
  classical
  let cap := tenMillionClosePairBucketCap N
  by_cases hOneTwo :
      ∃ left right : Fin 9, left ≠ right ∧
        cap <
          (cellFibre (fiveMillionValuationPart N B .evenOne)
            oddModNineResidue left).card ∧
        cap <
          (cellFibre (fiveMillionValuationPart N B .evenOne)
            oddModNineResidue right).card
  · obtain ⟨left, right, hne, hleft, hright⟩ := hOneTwo
    let selection := Classical.choice
      (tenMillionEvenTwoCellSelection_nonempty
        hBout hne (by simpa [cap] using hleft)
          (by simpa [cap] using hright))
    exact ⟨.fourPivot
      (tenMillionEvenOneTwoCellTerminalCertificate
        hLower hUpper hBout hBprop selection)⟩
  by_cases hOneDense :
      ∃ cell : Fin 9,
        cap <
          (cellFibre (fiveMillionValuationPart N B .evenOne)
            oddModNineResidue cell).card
  · obtain ⟨cell, hdense⟩ := hOneDense
    have hsparse :
        ∀ other : Fin 9, other ≠ cell →
          (cellFibre (fiveMillionValuationPart N B .evenOne)
            oddModNineResidue other).card ≤ cap := by
      intro other hne
      exact Nat.le_of_not_gt fun hother =>
        hOneTwo ⟨cell, other, hne.symm, hdense, hother⟩
    exact ⟨.threePivot
      (tenMillionEvenOneOneDenseCellTerminal
        hLower hUpper hBout hBprop
          (by simpa [cap] using hdense)
          (by simpa [cap] using hsparse))⟩
  have hOneSparse :
      ∀ cell : Fin 9,
        (cellFibre (fiveMillionValuationPart N B .evenOne)
          oddModNineResidue cell).card ≤ cap := by
    intro cell
    exact Nat.le_of_not_gt fun hdense => hOneDense ⟨cell, hdense⟩
  have hOneCard :
      (fiveMillionValuationPart N B .evenOne).card ≤ 9 * cap :=
    valuationPart_card_le_nine_cap_of_no_dense
      (by simpa [cap] using hOneSparse)
  by_cases hTwoTwo :
      ∃ left right : Fin 9, left ≠ right ∧
        cap <
          (cellFibre (fiveMillionValuationPart N B .evenTwo)
            oddModNineResidue left).card ∧
        cap <
          (cellFibre (fiveMillionValuationPart N B .evenTwo)
            oddModNineResidue right).card
  · obtain ⟨left, right, hne, hleft, hright⟩ := hTwoTwo
    let selection := Classical.choice
      (tenMillionEvenTwoCellSelection_nonempty
        hBout hne (by simpa [cap] using hleft)
          (by simpa [cap] using hright))
    exact ⟨.fourPivot
      (tenMillionEvenTwoTwoCellTerminalCertificate
        hLower hUpper hBout hBprop selection)⟩
  by_cases hTwoDense :
      ∃ cell : Fin 9,
        cap <
          (cellFibre (fiveMillionValuationPart N B .evenTwo)
            oddModNineResidue cell).card
  · obtain ⟨cell, hdense⟩ := hTwoDense
    have hsparse :
        ∀ other : Fin 9, other ≠ cell →
          (cellFibre (fiveMillionValuationPart N B .evenTwo)
            oddModNineResidue other).card ≤ cap := by
      intro other hne
      exact Nat.le_of_not_gt fun hother =>
        hTwoTwo ⟨cell, other, hne.symm, hdense, hother⟩
    exact ⟨.threePivot
      (tenMillionEvenTwoOneDenseCellTerminal
        hLower hUpper hBout hBprop
          (by simpa [cap] using hOneCard)
          (by simpa [cap] using hdense)
          (by simpa [cap] using hsparse))⟩
  have hTwoSparse :
      ∀ cell : Fin 9,
        (cellFibre (fiveMillionValuationPart N B .evenTwo)
          oddModNineResidue cell).card ≤ cap := by
    intro cell
    exact Nat.le_of_not_gt fun hdense => hTwoDense ⟨cell, hdense⟩
  have hTwoCard :
      (fiveMillionValuationPart N B .evenTwo).card ≤ 9 * cap :=
    valuationPart_card_le_nine_cap_of_no_dense
      (by simpa [cap] using hTwoSparse)
  by_cases hThreeDense :
      ∃ cell : Fin 9,
        cap <
          (cellFibre (fiveMillionValuationPart N B .evenThree)
            oddModNineResidue cell).card
  · obtain ⟨cell, hdense⟩ := hThreeDense
    exact ⟨.threePivot
      (tenMillionEvenThreeDenseCellTerminal
        hLower hUpper hBout hBprop
          (by simpa [cap] using hOneCard)
          (by simpa [cap] using hTwoCard)
          (by simpa [cap] using hdense))⟩
  have hThreeSparse :
      ∀ cell : Fin 9,
        (cellFibre (fiveMillionValuationPart N B .evenThree)
          oddModNineResidue cell).card ≤ cap := by
    intro cell
    exact Nat.le_of_not_gt fun hdense => hThreeDense ⟨cell, hdense⟩
  have hThreeCard :
      (fiveMillionValuationPart N B .evenThree).card ≤ 9 * cap :=
    valuationPart_card_le_nine_cap_of_no_dense
      (by simpa [cap] using hThreeSparse)
  have hEvenCharge := tenMillionEvenCharge_ratio_le
    hLower
      (by simpa [cap] using hOneCard)
      (by simpa [cap] using hTwoCard)
      (by simpa [cap] using hThreeCard)
  have hOddMass := tenMillionOddMass_of_residual
    hUpper
      (by simpa [cap] using hOneCard)
      (by simpa [cap] using hTwoCard)
      (by simpa [cap] using hThreeCard)
      hresidual
  obtain ⟨certificate⟩ :=
    tenMillionR263OddAllocationTerminal
      hLower hUpper hBout hBprop
        tenMillionCompactDiagonalCertificates_kernel.oneOddCell
        hEvenCharge hOddMass
  exact ⟨.threePivot certificate⟩

def TenMillionKernelBranchExhaustion : Prop :=
  ∀ N, tenMillionLower ≤ N → N < tenMillionUpper →
    ∀ B : Finset Nat, Erdos848OutsideSet N B →
      NonSquarefreeProductProp B →
      (OriginalA7 N).card <
        B.card + (hallNonNeighbours N B).card →
      Nonempty (TenMillionKernelTerminal N B)

theorem tenMillionKernelBranchExhaustion :
    TenMillionKernelBranchExhaustion := by
  intro N hLower hUpper B hBout hBprop hdefect
  have hresidual :
      19_046 < (hallResidual N B).card :=
    globalMixedHallResidual_card_gt_19046_of_defect
      (le_trans (by norm_num [tenMillionLower]) hLower)
        hBout hBprop hdefect
  exact tenMillionEvenAllocationTerminal
    hLower hUpper hBout hBprop hresidual

theorem erdos848TenToTwentyMillionClose :
    ∀ N, tenMillionLower ≤ N → N < tenMillionUpper →
      OriginalProblem848Statement N := by
  intro N hLower hUpper
  apply originalProblem_of_hallStatement
  intro B hBout hBprop
  by_contra hnotHall
  have hdefect :
      (OriginalA7 N).card <
        B.card + (hallNonNeighbours N B).card := by
    omega
  obtain ⟨terminal⟩ :=
    tenMillionKernelBranchExhaustion
      N hLower hUpper B hBout hBprop hdefect
  have hcompletion :=
    terminal.completion_ratio_lt_target hLower hBprop
  have hHall := hallCompletion_card_le_of_ratio_le_target
    (lt_of_lt_of_le (by norm_num [tenMillionLower]) hLower)
      hBout hcompletion.le
  omega

#print axioms erdos848TenToTwentyMillionClose

end Erdos848
