import Erdos848.TailTwentyMillionTerminal
import Erdos848.TailTwentyMillionDegree19
import Erdos848.TailTwentyMillionFinite23
import Erdos848.TailTwentyMillionOddFinite19Payment
import Erdos848.TailTwentyMillionActualTail
import Erdos848.TailPaperTwentyMillionDiagonal
import Erdos848.TailR263EvenOneMixedHalfTerminal

namespace Erdos848

open TwentyMillion

/-!
# Kernel close of the twenty-million interval

The even finite certificate closes at cutoff 23.  The transformed-root
certificate counts high primes from cutoff 19, so the square-tail bound is
applied directly at cutoff 23 without an endpoint correction.  All ten
rational rows are checked strictly below the Hall target.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def twentyMillionKernelBranchCutoff : TwentyMillionBranch → Nat
  | .evenOneGeneric | .evenOneCommonThree
  | .evenTwoGeneric | .evenTwoCommonThree
  | .evenThreeGeneric | .evenThreeCommonThree => 23
  | .oddTwoGeneric | .oddTwoCommonThree
  | .oddOneGeneric | .oddOneCommonThree => 19

def twentyMillionKernelBranchFinitePayment :
    TwentyMillionBranch → Rat
  | .evenOneGeneric | .evenTwoGeneric | .evenThreeGeneric =>
      8_685 / 1_000_000
  | .evenOneCommonThree | .evenTwoCommonThree
  | .evenThreeCommonThree =>
      12_616 / 1_000_000
  | .oddTwoGeneric => 19_420 / 1_000_000
  | .oddTwoCommonThree => 20_878 / 1_000_000
  | .oddOneGeneric => 26_643 / 1_000_000
  | .oddOneCommonThree => 29_459 / 1_000_000

def twentyMillionKernelBranchTailPayment :
    TwentyMillionBranch → Rat
  | .evenOneGeneric | .evenOneCommonThree =>
      3 * fiveMillionSquareTail23Envelope / 25 +
        twentyMillionRootEvenOne / 2
  | .evenTwoGeneric | .evenTwoCommonThree =>
      3 * fiveMillionSquareTail23Envelope / 25 +
        twentyMillionRootEvenTwo / 2
  | .evenThreeGeneric | .evenThreeCommonThree =>
      3 * fiveMillionSquareTail23Envelope / 25 +
        twentyMillionRootEvenThree / 2
  | .oddTwoGeneric | .oddTwoCommonThree
  | .oddOneGeneric | .oddOneCommonThree =>
      twentyMillionSquareOdd + twentyMillionRootOdd / 2

def twentyMillionKernelBranchTotal
    (branch : TwentyMillionBranch) : Rat :=
  twentyMillionBranchResidualPayment branch +
    twentyMillionKernelBranchFinitePayment branch +
      twentyMillionKernelBranchTailPayment branch

theorem twentyMillionKernelBranchTotal_lt_target
    (branch : TwentyMillionBranch) :
    twentyMillionKernelBranchTotal branch < twentyMillionTarget := by
  cases branch <;>
    norm_num [twentyMillionKernelBranchTotal,
      twentyMillionKernelBranchFinitePayment,
      twentyMillionKernelBranchTailPayment,
      twentyMillionBranchResidualPayment,
      twentyMillionTarget, twentyMillionHallTarget, twentyMillionLower,
      twentyMillionDelta, twentyMillionEvenCharge,
      twentyMillionDiagonalUnrestricted, twentyMillionDiagonalConcentrated,
      twentyMillionDiagonalLowTwoAdic, twentyMillionDiagonalEvenTwoCell,
      twentyMillionDiagonalOddUnion, twentyMillionDiagonalOddPlusCell,
      twentyMillionDiagonalOneOdd, twentyMillionDiagonalOneOddCell,
      fiveMillionSquareTail23Envelope, twentyMillionSquareOdd,
      twentyMillionRootEvenOne,
      twentyMillionRootEvenTwo, twentyMillionRootEvenThree,
      twentyMillionRootOdd]

structure TwentyMillionKernelTerminalCertificate
    (N : Nat) (B : Finset Nat) : Type where
  branch : TwentyMillionBranch
  branchApplies : TwentyMillionBranchApplies N B branch
  pivots : Finset Nat
  pivotsCard : pivots.card = 3
  pivotsCompletion : pivots ⊆ hallCompletion N B
  finiteBound :
    fiveMillionR263BaseMixedHalfPayment N B pivots
        (twentyMillionKernelBranchCutoff branch) / N ≤
      twentyMillionKernelBranchFinitePayment branch
  tailBound :
    hallBaseTailSquarePayment N B pivots
        (twentyMillionKernelBranchCutoff branch) 2 / N ≤
      twentyMillionKernelBranchTailPayment branch

theorem
    TwentyMillionKernelTerminalCertificate.completion_ratio_le_branchTotal
    {N : Nat} {B : Finset Nat}
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hdiagonal : TwentyMillionPaperDiagonalCertificates)
    (certificate : TwentyMillionKernelTerminalCertificate N B) :
    ((hallCompletion N B).card : Rat) / N ≤
      twentyMillionKernelBranchTotal certificate.branch := by
  have hNposNat : 0 < N :=
    lt_of_lt_of_le (by norm_num [twentyMillionLower]) hLower
  have hNposRat : (0 : Rat) < N := by exact_mod_cast hNposNat
  have hraw :=
    hallCompletion_card_le_fiveMillionR263MixedHalfComponents
    (cutoff := twentyMillionKernelBranchCutoff certificate.branch)
      hBprop certificate.pivotsCompletion certificate.pivotsCard
  have hratio := div_le_div_of_nonneg_right hraw hNposRat.le
  have hresidual := twentyMillionBranch_residual_ratio_le
    hLower hUpper hBout hBprop certificate.branchApplies hdiagonal
  calc
    ((hallCompletion N B).card : Rat) / N ≤
        ((hallResidual N B).card +
          fiveMillionR263BaseMixedHalfPayment N B certificate.pivots
            (twentyMillionKernelBranchCutoff certificate.branch) +
          hallBaseTailSquarePayment N B certificate.pivots
            (twentyMillionKernelBranchCutoff certificate.branch) 2) / N :=
      hratio
    _ = ((hallResidual N B).card : Rat) / N +
        fiveMillionR263BaseMixedHalfPayment N B certificate.pivots
          (twentyMillionKernelBranchCutoff certificate.branch) / N +
        hallBaseTailSquarePayment N B certificate.pivots
          (twentyMillionKernelBranchCutoff certificate.branch) 2 / N := by
      ring
    _ ≤ twentyMillionBranchResidualPayment certificate.branch +
        twentyMillionKernelBranchFinitePayment certificate.branch +
        twentyMillionKernelBranchTailPayment certificate.branch :=
      add_le_add
        (add_le_add hresidual certificate.finiteBound)
        certificate.tailBound
    _ = twentyMillionKernelBranchTotal certificate.branch := by
      rfl

private theorem twentyMillionValuationPart_subset_completion
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass} :
    fiveMillionValuationPart N B cls ⊆ hallCompletion N B := by
  intro pivot hpivot
  exact (Finset.mem_sdiff.mp
    (fiveMillionValuationPart_subset_residual N B cls hpivot)).1

private theorem twentyMillionCloseTriple_subset_residual
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    (triple : TwentyMillionCloseTriple N B cls) :
    triple.pivots ⊆ hallResidual N B := by
  intro pivot hpivot
  exact fiveMillionValuationPart_subset_residual
    N B cls (triple.subsetPart hpivot)

private theorem twentyMillionOddTwoTriple_subset_residual
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

private theorem twentyMillionOddOneTriple_subset_residual
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (triple : TwentyMillionOddOneCloseTriple N B parity) :
    triple.pivots ⊆ hallResidual N B := by
  intro pivot hpivot
  exact fiveMillionValuationPart_subset_residual
    N B (paperOddValuationClass parity)
      (triple.subsetPart hpivot)

private theorem odd_of_mem_twentyMillionOddValuationPart
    {N pivot : Nat} {B : Finset Nat} {parity : Bool}
    (hpivot :
      pivot ∈ fiveMillionValuationPart N B
        (paperOddValuationClass parity)) :
    Odd pivot := by
  cases parity
  · exact fiveMillionValuationPart_odd (Or.inl rfl) hpivot
  · exact fiveMillionValuationPart_odd (Or.inr rfl) hpivot

private theorem twentyMillionOddTwoTriple_all_odd
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (triple : TwentyMillionOddTwoCloseTriple N B parity) :
    ∀ pivot ∈ triple.pivots, Odd pivot := by
  intro pivot hpivot
  rw [triple.pivots_eq] at hpivot
  simp only [Finset.mem_insert, Finset.mem_singleton] at hpivot
  rcases hpivot with rfl | rfl | rfl
  · exact odd_of_mem_twentyMillionOddValuationPart triple.leftMem
  · exact odd_of_mem_twentyMillionOddValuationPart triple.rightMem
  · exact odd_of_mem_twentyMillionOddValuationPart triple.thirdMem

private theorem twentyMillionOddOneTriple_all_odd
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (triple : TwentyMillionOddOneCloseTriple N B parity) :
    ∀ pivot ∈ triple.pivots, Odd pivot := by
  intro pivot hpivot
  exact odd_of_mem_twentyMillionOddValuationPart
    (triple.subsetPart hpivot)

noncomputable def twentyMillionKernelTerminalCertificate_of_branch
    {N : Nat} {B : Finset Nat} {branch : TwentyMillionBranch}
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hbranch : TwentyMillionBranchApplies N B branch) :
    TwentyMillionKernelTerminalCertificate N B := by
  apply Classical.choice
  have hLowerNat : 20_000_000 ≤ N := by
    simpa [twentyMillionLower] using hLower
  cases branch with
  | evenOneGeneric =>
      obtain ⟨triple, hnonconstant⟩ := hbranch
      refine ⟨
        { branch := .evenOneGeneric
          branchApplies := ⟨triple, hnonconstant⟩
          pivots := triple.pivots
          pivotsCard := triple.card
          pivotsCompletion :=
            fun _ hp => twentyMillionValuationPart_subset_completion
              (triple.subsetPart hp)
          finiteBound := ?_
          tailBound := ?_ }⟩
      · simpa [twentyMillionKernelBranchCutoff,
          twentyMillionKernelBranchFinitePayment] using
          (twentyMillionEvenFinite23Payment_ratio_le_generic
            hLowerNat hBout (Or.inl rfl) triple hnonconstant)
      · simpa [twentyMillionKernelBranchCutoff,
          twentyMillionKernelBranchTailPayment] using
          (hallBaseTailSquarePayment_threeTwo_twentyMillion_evenOne23_ratio_le
            hLower hUpper hBout triple.subsetPart triple.card)
  | evenOneCommonThree =>
      obtain ⟨cell, triple, hcommon, hconstant⟩ := hbranch
      refine ⟨
        { branch := .evenOneCommonThree
          branchApplies := ⟨cell, triple, hcommon, hconstant⟩
          pivots := triple.pivots
          pivotsCard := triple.card
          pivotsCompletion :=
            fun _ hp => twentyMillionValuationPart_subset_completion
              (triple.subsetPart hp)
          finiteBound := ?_
          tailBound := ?_ }⟩
      · simpa [twentyMillionKernelBranchCutoff,
          twentyMillionKernelBranchFinitePayment] using
          (twentyMillionEvenFinite23Payment_ratio_le_common
            hLowerNat hBout (Or.inl rfl) triple hcommon)
      · simpa [twentyMillionKernelBranchCutoff,
          twentyMillionKernelBranchTailPayment] using
          (hallBaseTailSquarePayment_threeTwo_twentyMillion_evenOne23_ratio_le
            hLower hUpper hBout triple.subsetPart triple.card)
  | evenTwoGeneric =>
      obtain ⟨hcharge, triple, hnonconstant⟩ := hbranch
      refine ⟨
        { branch := .evenTwoGeneric
          branchApplies := ⟨hcharge, triple, hnonconstant⟩
          pivots := triple.pivots
          pivotsCard := triple.card
          pivotsCompletion :=
            fun _ hp => twentyMillionValuationPart_subset_completion
              (triple.subsetPart hp)
          finiteBound := ?_
          tailBound := ?_ }⟩
      · simpa [twentyMillionKernelBranchCutoff,
          twentyMillionKernelBranchFinitePayment] using
          (twentyMillionEvenFinite23Payment_ratio_le_generic
            hLowerNat hBout (Or.inr (Or.inl rfl)) triple hnonconstant)
      · simpa [twentyMillionKernelBranchCutoff,
          twentyMillionKernelBranchTailPayment] using
          (hallBaseTailSquarePayment_threeTwo_twentyMillion_evenTwo23_ratio_le
            hLower hUpper hBout triple.subsetPart triple.card)
  | evenTwoCommonThree =>
      obtain ⟨hcharge, cell, triple, hcommon, hconstant⟩ := hbranch
      refine ⟨
        { branch := .evenTwoCommonThree
          branchApplies := ⟨hcharge, cell, triple, hcommon, hconstant⟩
          pivots := triple.pivots
          pivotsCard := triple.card
          pivotsCompletion :=
            fun _ hp => twentyMillionValuationPart_subset_completion
              (triple.subsetPart hp)
          finiteBound := ?_
          tailBound := ?_ }⟩
      · simpa [twentyMillionKernelBranchCutoff,
          twentyMillionKernelBranchFinitePayment] using
          (twentyMillionEvenFinite23Payment_ratio_le_common
            hLowerNat hBout (Or.inr (Or.inl rfl)) triple hcommon)
      · simpa [twentyMillionKernelBranchCutoff,
          twentyMillionKernelBranchTailPayment] using
          (hallBaseTailSquarePayment_threeTwo_twentyMillion_evenTwo23_ratio_le
            hLower hUpper hBout triple.subsetPart triple.card)
  | evenThreeGeneric =>
      obtain ⟨hchargeOne, hchargeTwo, triple, hnonconstant⟩ := hbranch
      refine ⟨
        { branch := .evenThreeGeneric
          branchApplies :=
            ⟨hchargeOne, hchargeTwo, triple, hnonconstant⟩
          pivots := triple.pivots
          pivotsCard := triple.card
          pivotsCompletion :=
            fun _ hp => twentyMillionValuationPart_subset_completion
              (triple.subsetPart hp)
          finiteBound := ?_
          tailBound := ?_ }⟩
      · simpa [twentyMillionKernelBranchCutoff,
          twentyMillionKernelBranchFinitePayment] using
          (twentyMillionEvenFinite23Payment_ratio_le_generic
            hLowerNat hBout (Or.inr (Or.inr rfl)) triple hnonconstant)
      · simpa [twentyMillionKernelBranchCutoff,
          twentyMillionKernelBranchTailPayment] using
          (hallBaseTailSquarePayment_threeTwo_twentyMillion_evenThree23_ratio_le
            hLower hUpper hBout triple.subsetPart triple.card)
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
            fun _ hp => twentyMillionValuationPart_subset_completion
              (triple.subsetPart hp)
          finiteBound := ?_
          tailBound := ?_ }⟩
      · simpa [twentyMillionKernelBranchCutoff,
          twentyMillionKernelBranchFinitePayment] using
          (twentyMillionEvenFinite23Payment_ratio_le_common
            hLowerNat hBout (Or.inr (Or.inr rfl)) triple hcommon)
      · simpa [twentyMillionKernelBranchCutoff,
          twentyMillionKernelBranchTailPayment] using
          (hallBaseTailSquarePayment_threeTwo_twentyMillion_evenThree23_ratio_le
            hLower hUpper hBout triple.subsetPart triple.card)
  | oddTwoGeneric =>
      obtain ⟨hchargeOne, hchargeTwo, hchargeThree, parity, triple,
        hnonconstant⟩ := hbranch
      have hresidual := twentyMillionOddTwoTriple_subset_residual triple
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
      · simpa [twentyMillionKernelBranchCutoff,
          twentyMillionKernelBranchFinitePayment] using
          (twentyMillionOddTwoFinite19Payment_ratio_le_generic
            hLowerNat hBout triple hnonconstant)
      · simpa [twentyMillionKernelBranchCutoff,
          twentyMillionKernelBranchTailPayment] using
          (hallBaseTailSquarePayment_threeTwo_twentyMillion_odd_of_all_odd_ratio_le
            hLower hUpper hBout hresidual
              (twentyMillionOddTwoTriple_all_odd triple) triple.card)
  | oddTwoCommonThree =>
      obtain ⟨hchargeOne, hchargeTwo, hchargeThree, parity, cell, triple,
        hcommon, hconstant⟩ := hbranch
      have hresidual := twentyMillionOddTwoTriple_subset_residual triple
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
      · simpa [twentyMillionKernelBranchCutoff,
          twentyMillionKernelBranchFinitePayment] using
          (twentyMillionOddTwoFinite19Payment_ratio_le_common
            hLowerNat hBout triple hcommon)
      · simpa [twentyMillionKernelBranchCutoff,
          twentyMillionKernelBranchTailPayment] using
          (hallBaseTailSquarePayment_threeTwo_twentyMillion_odd_of_all_odd_ratio_le
            hLower hUpper hBout hresidual
              (twentyMillionOddTwoTriple_all_odd triple) triple.card)
  | oddOneGeneric =>
      obtain ⟨hchargeOne, hchargeTwo, hchargeThree, parity, hother,
        triple, hnonconstant⟩ := hbranch
      have hresidual := twentyMillionOddOneTriple_subset_residual triple
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
      · simpa [twentyMillionKernelBranchCutoff,
          twentyMillionKernelBranchFinitePayment] using
          (twentyMillionOddOneFinite19Payment_ratio_le_generic
            hLowerNat hBout triple hnonconstant)
      · simpa [twentyMillionKernelBranchCutoff,
          twentyMillionKernelBranchTailPayment] using
          (hallBaseTailSquarePayment_threeTwo_twentyMillion_odd_of_all_odd_ratio_le
            hLower hUpper hBout hresidual
              (twentyMillionOddOneTriple_all_odd triple) triple.card)
  | oddOneCommonThree =>
      obtain ⟨hchargeOne, hchargeTwo, hchargeThree, parity, hother, cell,
        triple, hcommon, hconstant⟩ := hbranch
      have hresidual := twentyMillionOddOneTriple_subset_residual triple
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
      · simpa [twentyMillionKernelBranchCutoff,
          twentyMillionKernelBranchFinitePayment] using
          (twentyMillionOddOneFinite19Payment_ratio_le_common
            hLowerNat hBout triple hcommon)
      · simpa [twentyMillionKernelBranchCutoff,
          twentyMillionKernelBranchTailPayment] using
          (hallBaseTailSquarePayment_threeTwo_twentyMillion_odd_of_all_odd_ratio_le
            hLower hUpper hBout hresidual
              (twentyMillionOddOneTriple_all_odd triple) triple.card)

def Erdos848TwentyMillionKernelTerminalExhaustion : Prop :=
  ∀ N, twentyMillionLower ≤ N → N < twentyMillionUpper →
    ∀ B : Finset Nat, Erdos848OutsideSet N B →
      NonSquarefreeProductProp B →
      (OriginalA7 N).card <
        B.card + (hallNonNeighbours N B).card →
      Nonempty (TwentyMillionKernelTerminalCertificate N B)

theorem erdos848TwentyMillionKernelTerminalExhaustion :
    Erdos848TwentyMillionKernelTerminalExhaustion := by
  intro N hLower hUpper B hBout hBprop hdefect
  obtain ⟨branch, hbranch⟩ :=
    exists_twentyMillionBranchApplies_global19
      (by simpa [twentyMillionLower] using hLower)
      hBout hBprop hdefect
  exact ⟨twentyMillionKernelTerminalCertificate_of_branch
    hLower hUpper hBout hbranch⟩

theorem erdos848TwentyMillionClose_kernel :
    Erdos848TwentyMillionClose := by
  intro N hLower hUpper
  apply originalProblem_of_hallStatement
  intro B hBout hBprop
  by_contra hnotHall
  have hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card := by omega
  obtain ⟨certificate⟩ :=
    erdos848TwentyMillionKernelTerminalExhaustion
      N hLower hUpper B hBout hBprop hdefect
  have hratio :=
    certificate.completion_ratio_le_branchTotal
      hLower hUpper hBout hBprop
        twentyMillionPaperDiagonalCertificates_kernel
  have htarget :
      ((hallCompletion N B).card : Rat) / N ≤
        twentyMillionHallTarget N := by
    exact hratio.trans <|
      (le_of_lt
        (twentyMillionKernelBranchTotal_lt_target certificate.branch)).trans <|
      twentyMillionTarget_le_normalizedTarget
        (by simpa [twentyMillionLower] using hLower)
  have hHall := twentyMillionHall_of_ratio_le_target
    (lt_of_lt_of_le (by norm_num [twentyMillionLower]) hLower)
    hBout htarget
  omega

end Erdos848
