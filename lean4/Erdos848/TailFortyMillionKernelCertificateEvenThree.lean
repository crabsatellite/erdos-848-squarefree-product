import Erdos848.TailFortyMillionKernelCertificateCore
import Erdos848.TailFortyMillionActualTail
import Erdos848.TailTwentyMillionFinite23

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def FortyMillionKernelBuilder.isEvenThree : TwentyMillionBranch → Prop
  | .evenThreeGeneric | .evenThreeCommonThree => True
  | _ => False

noncomputable def FortyMillionKernelBuilder.ofEvenThreeBranch
    {block : FortyMillionTenBranchBlock}
    {N : Nat} {B : Finset Nat} {branch : TwentyMillionBranch}
    (heven : FortyMillionKernelBuilder.isEvenThree branch)
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
  | evenOneGeneric => simp [FortyMillionKernelBuilder.isEvenThree] at heven
  | evenOneCommonThree => simp [FortyMillionKernelBuilder.isEvenThree] at heven
  | evenTwoGeneric => simp [FortyMillionKernelBuilder.isEvenThree] at heven
  | evenTwoCommonThree => simp [FortyMillionKernelBuilder.isEvenThree] at heven
  | evenThreeGeneric =>
      obtain ⟨hchargeOne, hchargeTwo, triple, hnonconstant⟩ := hbranch
      refine ⟨
        { branch := .evenThreeGeneric
          branchApplies :=
            ⟨hchargeOne, hchargeTwo, triple, hnonconstant⟩
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
            hLowerNat hBout (Or.inr (Or.inr rfl)) triple hnonconstant)
      · simpa [fortyMillionKernelBranchCutoff,
          fortyMillionTenBranchTailPayment] using
          (hallBaseTailSquarePayment_threeTwo_fortyMillion_evenThree23_ratio_le
            hcover hBout triple.subsetPart triple.card)
  | evenThreeCommonThree =>
      obtain ⟨hchargeOne, hchargeTwo, cell, triple, hcommon,
        hconstant⟩ := hbranch
      refine ⟨
        { branch := .evenThreeCommonThree
          branchApplies :=
            ⟨hchargeOne, hchargeTwo, cell, triple, hcommon, hconstant⟩
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
            hLowerNat hBout (Or.inr (Or.inr rfl)) triple hcommon)
      · simpa [fortyMillionKernelBranchCutoff,
          fortyMillionTenBranchTailPayment] using
          (hallBaseTailSquarePayment_threeTwo_fortyMillion_evenThree23_ratio_le
            hcover hBout triple.subsetPart triple.card)
  | oddTwoGeneric => simp [FortyMillionKernelBuilder.isEvenThree] at heven
  | oddTwoCommonThree => simp [FortyMillionKernelBuilder.isEvenThree] at heven
  | oddOneGeneric => simp [FortyMillionKernelBuilder.isEvenThree] at heven
  | oddOneCommonThree => simp [FortyMillionKernelBuilder.isEvenThree] at heven

end Erdos848
