import Erdos848.TailFortyMillionKernelCertificateCore
import Erdos848.TailFortyMillionActualTail
import Erdos848.TailTwentyMillionFinite23

namespace Erdos848

/-! Build the literal terminal certificate from each reused degree-19 branch. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def FortyMillionKernelBuilder.isEvenOne : TwentyMillionBranch → Prop
  | .evenOneGeneric | .evenOneCommonThree => True
  | _ => False

private def fortyMillionOddBranch : TwentyMillionBranch → Prop
  | .evenOneGeneric | .evenOneCommonThree
  | .evenTwoGeneric | .evenTwoCommonThree
  | .evenThreeGeneric | .evenThreeCommonThree => False
  | .oddTwoGeneric | .oddTwoCommonThree
  | .oddOneGeneric | .oddOneCommonThree => True

noncomputable def FortyMillionKernelBuilder.ofEvenOneBranch
    {block : FortyMillionTenBranchBlock}
    {N : Nat} {B : Finset Nat} {branch : TwentyMillionBranch}
    (heven : FortyMillionKernelBuilder.isEvenOne branch)
    (hcover : block.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hbranch : TwentyMillionBranchApplies N B branch) :
    FortyMillionKernelTerminalCertificate block N B := by
  apply Classical.choice
  have hLowerNat : 20_000_000 ≤ N := by
    cases block <;>
      simp [FortyMillionTenBranchBlock.Covers,
        FortyMillionTenBranchBlock.lower] at hcover <;> omega
  cases branch with
  | evenOneGeneric =>
      obtain ⟨triple, hnonconstant⟩ := hbranch
      refine ⟨
        { branch := .evenOneGeneric
          branchApplies := ⟨triple, hnonconstant⟩
          pivots := triple.pivots
          pivotsCard := triple.card
          pivotsCompletion :=
            fun _ hp => fortyMillionValuationPart_subset_completion
              (triple.subsetPart hp)
          finiteBound := ?_
          tailBound := ?_ }⟩
      · simpa [fortyMillionKernelBranchCutoff,
          fortyMillionTenBranchFinitePayment] using
          (twentyMillionEvenFinite23Payment_ratio_le_generic
            hLowerNat hBout (Or.inl rfl) triple hnonconstant)
      · simpa [fortyMillionKernelBranchCutoff,
          fortyMillionTenBranchTailPayment] using
          (hallBaseTailSquarePayment_threeTwo_fortyMillion_evenOne23_ratio_le
            hcover hBout triple.subsetPart triple.card)
  | evenOneCommonThree =>
      obtain ⟨cell, triple, hcommon, hconstant⟩ := hbranch
      refine ⟨
        { branch := .evenOneCommonThree
          branchApplies := ⟨cell, triple, hcommon, hconstant⟩
          pivots := triple.pivots
          pivotsCard := triple.card
          pivotsCompletion :=
            fun _ hp => fortyMillionValuationPart_subset_completion
              (triple.subsetPart hp)
          finiteBound := ?_
          tailBound := ?_ }⟩
      · simpa [fortyMillionKernelBranchCutoff,
          fortyMillionTenBranchFinitePayment] using
          (twentyMillionEvenFinite23Payment_ratio_le_common
            hLowerNat hBout (Or.inl rfl) triple hcommon)
      · simpa [fortyMillionKernelBranchCutoff,
          fortyMillionTenBranchTailPayment] using
          (hallBaseTailSquarePayment_threeTwo_fortyMillion_evenOne23_ratio_le
            hcover hBout triple.subsetPart triple.card)
  | evenTwoGeneric => simp [FortyMillionKernelBuilder.isEvenOne] at heven
  | evenTwoCommonThree => simp [FortyMillionKernelBuilder.isEvenOne] at heven
  | evenThreeGeneric => simp [FortyMillionKernelBuilder.isEvenOne] at heven
  | evenThreeCommonThree => simp [FortyMillionKernelBuilder.isEvenOne] at heven
  | oddTwoGeneric => simp [FortyMillionKernelBuilder.isEvenOne] at heven
  | oddTwoCommonThree => simp [FortyMillionKernelBuilder.isEvenOne] at heven
  | oddOneGeneric => simp [FortyMillionKernelBuilder.isEvenOne] at heven
  | oddOneCommonThree => simp [FortyMillionKernelBuilder.isEvenOne] at heven

end Erdos848
