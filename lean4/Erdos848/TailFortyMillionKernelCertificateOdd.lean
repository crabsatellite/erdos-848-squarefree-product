import Erdos848.TailFortyMillionKernelCertificateCore
import Erdos848.TailFortyMillionActualTail
import Erdos848.TailTwentyMillionOddFinite19Payment

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def FortyMillionKernelBuilder.isOdd : TwentyMillionBranch → Prop
  | .evenOneGeneric | .evenOneCommonThree
  | .evenTwoGeneric | .evenTwoCommonThree
  | .evenThreeGeneric | .evenThreeCommonThree => False
  | .oddTwoGeneric | .oddTwoCommonThree
  | .oddOneGeneric | .oddOneCommonThree => True

noncomputable def FortyMillionKernelBuilder.ofOddBranch
    {block : FortyMillionTenBranchBlock}
    {N : Nat} {B : Finset Nat} {branch : TwentyMillionBranch}
    (hodd : FortyMillionKernelBuilder.isOdd branch)
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
  | evenOneGeneric => simp [FortyMillionKernelBuilder.isOdd] at hodd
  | evenOneCommonThree => simp [FortyMillionKernelBuilder.isOdd] at hodd
  | evenTwoGeneric => simp [FortyMillionKernelBuilder.isOdd] at hodd
  | evenTwoCommonThree => simp [FortyMillionKernelBuilder.isOdd] at hodd
  | evenThreeGeneric => simp [FortyMillionKernelBuilder.isOdd] at hodd
  | evenThreeCommonThree => simp [FortyMillionKernelBuilder.isOdd] at hodd
  | oddTwoGeneric =>
      obtain ⟨hchargeOne, hchargeTwo, hchargeThree, parity, triple,
        hnonconstant⟩ := hbranch
      have hresidual := fortyMillionOddTwoTriple_subset_residual triple
      refine ⟨
        { branch := .oddTwoGeneric
          branchApplies :=
            ⟨hchargeOne, hchargeTwo, hchargeThree, parity, triple,
              hnonconstant⟩
          pivots := triple.pivots
          pivotsCard := triple.card
          pivotsCompletion :=
            fun _ hp => (Finset.mem_sdiff.mp (hresidual hp)).1
          finiteBound := ?_
          tailBound := ?_ }⟩
      · simpa [fortyMillionKernelBranchCutoff,
          fortyMillionTenBranchFinitePayment] using
          (twentyMillionOddTwoFinite19Payment_ratio_le_generic
            hLowerNat hBout triple hnonconstant)
      · simpa [fortyMillionKernelBranchCutoff,
          fortyMillionTenBranchTailPayment] using
          (hallBaseTailSquarePayment_threeTwo_fortyMillion_odd_ratio_le
            hcover hBout hresidual
              (fortyMillionOddTwoTriple_all_odd triple) triple.card)
  | oddTwoCommonThree =>
      obtain ⟨hchargeOne, hchargeTwo, hchargeThree, parity, cell, triple,
        hcommon, hconstant⟩ := hbranch
      have hresidual := fortyMillionOddTwoTriple_subset_residual triple
      refine ⟨
        { branch := .oddTwoCommonThree
          branchApplies :=
            ⟨hchargeOne, hchargeTwo, hchargeThree, parity, cell, triple,
              hcommon, hconstant⟩
          pivots := triple.pivots
          pivotsCard := triple.card
          pivotsCompletion :=
            fun _ hp => (Finset.mem_sdiff.mp (hresidual hp)).1
          finiteBound := ?_
          tailBound := ?_ }⟩
      · simpa [fortyMillionKernelBranchCutoff,
          fortyMillionTenBranchFinitePayment] using
          (twentyMillionOddTwoFinite19Payment_ratio_le_common
            hLowerNat hBout triple hcommon)
      · simpa [fortyMillionKernelBranchCutoff,
          fortyMillionTenBranchTailPayment] using
          (hallBaseTailSquarePayment_threeTwo_fortyMillion_odd_ratio_le
            hcover hBout hresidual
              (fortyMillionOddTwoTriple_all_odd triple) triple.card)
  | oddOneGeneric =>
      obtain ⟨hchargeOne, hchargeTwo, hchargeThree, parity, hother,
        triple, hnonconstant⟩ := hbranch
      have hresidual := fortyMillionOddOneTriple_subset_residual triple
      refine ⟨
        { branch := .oddOneGeneric
          branchApplies :=
            ⟨hchargeOne, hchargeTwo, hchargeThree, parity, hother,
              triple, hnonconstant⟩
          pivots := triple.pivots
          pivotsCard := triple.card
          pivotsCompletion :=
            fun _ hp => (Finset.mem_sdiff.mp (hresidual hp)).1
          finiteBound := ?_
          tailBound := ?_ }⟩
      · simpa [fortyMillionKernelBranchCutoff,
          fortyMillionTenBranchFinitePayment] using
          (twentyMillionOddOneFinite19Payment_ratio_le_generic
            hLowerNat hBout triple hnonconstant)
      · simpa [fortyMillionKernelBranchCutoff,
          fortyMillionTenBranchTailPayment] using
          (hallBaseTailSquarePayment_threeTwo_fortyMillion_odd_ratio_le
            hcover hBout hresidual
              (fortyMillionOddOneTriple_all_odd triple) triple.card)
  | oddOneCommonThree =>
      obtain ⟨hchargeOne, hchargeTwo, hchargeThree, parity, hother, cell,
        triple, hcommon, hconstant⟩ := hbranch
      have hresidual := fortyMillionOddOneTriple_subset_residual triple
      refine ⟨
        { branch := .oddOneCommonThree
          branchApplies :=
            ⟨hchargeOne, hchargeTwo, hchargeThree, parity, hother, cell,
              triple, hcommon, hconstant⟩
          pivots := triple.pivots
          pivotsCard := triple.card
          pivotsCompletion :=
            fun _ hp => (Finset.mem_sdiff.mp (hresidual hp)).1
          finiteBound := ?_
          tailBound := ?_ }⟩
      · simpa [fortyMillionKernelBranchCutoff,
          fortyMillionTenBranchFinitePayment] using
          (twentyMillionOddOneFinite19Payment_ratio_le_common
            hLowerNat hBout triple hcommon)
      · simpa [fortyMillionKernelBranchCutoff,
          fortyMillionTenBranchTailPayment] using
          (hallBaseTailSquarePayment_threeTwo_fortyMillion_odd_ratio_le
            hcover hBout hresidual
              (fortyMillionOddOneTriple_all_odd triple) triple.card)

end Erdos848
