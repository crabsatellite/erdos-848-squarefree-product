import Erdos848.TailFortyMillionKernelCertificateCore
import Erdos848.TailFortyMillionActualTail
import Erdos848.TailTwentyMillionFinite23

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def FortyMillionKernelBuilder.isEvenTwo : TwentyMillionBranch → Prop
  | .evenTwoGeneric | .evenTwoCommonThree => True
  | _ => False

noncomputable def FortyMillionKernelBuilder.ofEvenTwoBranch
    {block : FortyMillionTenBranchBlock}
    {N : Nat} {B : Finset Nat} {branch : TwentyMillionBranch}
    (heven : FortyMillionKernelBuilder.isEvenTwo branch)
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
  | evenOneGeneric => simp [FortyMillionKernelBuilder.isEvenTwo] at heven
  | evenOneCommonThree => simp [FortyMillionKernelBuilder.isEvenTwo] at heven
  | evenTwoGeneric =>
      obtain ⟨hcharge, triple, hnonconstant⟩ := hbranch
      refine ⟨
        { branch := .evenTwoGeneric
          branchApplies := ⟨hcharge, triple, hnonconstant⟩
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
            hLowerNat hBout (Or.inr (Or.inl rfl)) triple hnonconstant)
      · simpa [fortyMillionKernelBranchCutoff,
          fortyMillionTenBranchTailPayment] using
          (hallBaseTailSquarePayment_threeTwo_fortyMillion_evenTwo23_ratio_le
            hcover hBout triple.subsetPart triple.card)
  | evenTwoCommonThree =>
      obtain ⟨hcharge, cell, triple, hcommon, hconstant⟩ := hbranch
      refine ⟨
        { branch := .evenTwoCommonThree
          branchApplies := ⟨hcharge, cell, triple, hcommon, hconstant⟩
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
            hLowerNat hBout (Or.inr (Or.inl rfl)) triple hcommon)
      · simpa [fortyMillionKernelBranchCutoff,
          fortyMillionTenBranchTailPayment] using
          (hallBaseTailSquarePayment_threeTwo_fortyMillion_evenTwo23_ratio_le
            hcover hBout triple.subsetPart triple.card)
  | evenThreeGeneric => simp [FortyMillionKernelBuilder.isEvenTwo] at heven
  | evenThreeCommonThree => simp [FortyMillionKernelBuilder.isEvenTwo] at heven
  | oddTwoGeneric => simp [FortyMillionKernelBuilder.isEvenTwo] at heven
  | oddTwoCommonThree => simp [FortyMillionKernelBuilder.isEvenTwo] at heven
  | oddOneGeneric => simp [FortyMillionKernelBuilder.isEvenTwo] at heven
  | oddOneCommonThree => simp [FortyMillionKernelBuilder.isEvenTwo] at heven

end Erdos848
