import Erdos848.TailHighVariableActualTail
import Erdos848.TailHighKernelCloseCore
import Erdos848.TailTwentyMillionFinite23
import Erdos848.TailTwentyMillionOddFinite19Payment

namespace Erdos848

/-!
# Unbounded high-range terminal certificate builder

This is the ten-branch consumer for a checked variable-split root terminal.
It contains no interval theorem and no numerical certificate field.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem highVariableKernelTerminal_of_bounds
    (budget : HighTenBranchBudget)
    {N : Nat} {B : Finset Nat}
    {branch : TwentyMillionBranch} {pivots : Finset Nat}
    (hbranch : TwentyMillionBranchApplies N B branch)
    (hpivotsCard : pivots.card = 3)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hfinite :
      fiveMillionR263BaseMixedHalfPayment N B pivots
          (highKernelBranchCutoff branch) / N ≤
        hybridTenBranchFinitePayment branch)
    (htail :
      hallBaseTailSquarePayment N B pivots
          (highKernelBranchCutoff branch) 2 / N ≤
        budget.tailPayment branch) :
    HighKernelTerminalCertificate budget N B := by
  exact
    ⟨branch, pivots, hbranch, hpivotsCard,
      (fun _ hp => (Finset.mem_sdiff.mp (hpivotsResidual hp)).1),
      hfinite, htail⟩

private theorem highOddTwoTriple_classified
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (triple : TwentyMillionOddTwoCloseTriple N B parity) :
    ∀ pivot ∈ triple.pivots,
      ∃ valuation : FiveMillionValuationClass,
        (valuation = .oddOne ∨ valuation = .oddThree) ∧
          pivot ∈ fiveMillionValuationPart N B valuation := by
  intro pivot hpivot
  rw [triple.pivots_eq] at hpivot
  simp only [Finset.mem_insert, Finset.mem_singleton] at hpivot
  rcases hpivot with rfl | rfl | rfl
  · refine ⟨paperOddValuationClass parity, ?_, triple.leftMem⟩
    cases parity <;>
      simp [paperOddValuationClass]
  · refine ⟨paperOddValuationClass parity, ?_, triple.rightMem⟩
    cases parity <;>
      simp [paperOddValuationClass]
  · refine
      ⟨paperOddValuationClass (oppositeOddParity parity),
        ?_, triple.thirdMem⟩
    cases parity <;>
      simp [paperOddValuationClass, oppositeOddParity]

private theorem highOddOneTriple_classified
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (triple : TwentyMillionOddOneCloseTriple N B parity) :
    ∀ pivot ∈ triple.pivots,
      ∃ valuation : FiveMillionValuationClass,
        (valuation = .oddOne ∨ valuation = .oddThree) ∧
          pivot ∈ fiveMillionValuationPart N B valuation := by
  intro pivot hpivot
  refine
    ⟨paperOddValuationClass parity, ?_,
      triple.subsetPart hpivot⟩
  cases parity <;>
    simp [paperOddValuationClass]

theorem highKernelTerminalCertificate_of_tail_bounds
    (budget : HighTenBranchBudget)
    {N : Nat} {B : Finset Nat} {branch : TwentyMillionBranch}
    (hTwenty : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hbranch : TwentyMillionBranchApplies N B branch)
    (hEvenOneTail :
      ∀ {pivots : Finset Nat},
        pivots ⊆
          fiveMillionValuationPart N B .evenOne →
        pivots.card = 3 →
        hallBaseTailSquarePayment N B pivots 23 2 / N ≤
          3 * fiveMillionSquareTail23Envelope / 25 +
            budget.evenOneRootEnvelope / 2)
    (hEvenTwoTail :
      ∀ {pivots : Finset Nat},
        pivots ⊆
          fiveMillionValuationPart N B .evenTwo →
        pivots.card = 3 →
        hallBaseTailSquarePayment N B pivots 23 2 / N ≤
          3 * fiveMillionSquareTail23Envelope / 25 +
            budget.evenTwoRootEnvelope / 2)
    (hEvenThreeTail :
      ∀ {pivots : Finset Nat},
        pivots ⊆
          fiveMillionValuationPart N B .evenThree →
        pivots.card = 3 →
        hallBaseTailSquarePayment N B pivots 23 2 / N ≤
          3 * fiveMillionSquareTail23Envelope / 25 +
            budget.rootEnvelope / 2)
    (hOddTail :
      ∀ {pivots : Finset Nat},
        (∀ pivot ∈ pivots,
          ∃ valuation : FiveMillionValuationClass,
            (valuation = .oddOne ∨
              valuation = .oddThree) ∧
            pivot ∈
              fiveMillionValuationPart N B valuation) →
        pivots.card = 3 →
        hallBaseTailSquarePayment N B pivots 19 2 / N ≤
          twentyMillionSquareOdd + budget.oddRootEnvelope / 2) :
    HighKernelTerminalCertificate budget N B := by
  cases branch with
  | evenOneGeneric =>
      obtain ⟨triple, hnonconstant⟩ := hbranch
      have hresidual := highCloseTriple_subset_residual triple
      refine highVariableKernelTerminal_of_bounds
        (branch := .evenOneGeneric) budget
        ⟨triple, hnonconstant⟩ triple.card hresidual ?_ ?_
      · change
          fiveMillionR263BaseMixedHalfPayment
              N B triple.pivots 23 / N ≤
            twentyMillionFiniteEvenGeneric23
        exact twentyMillionEvenFinite23Payment_ratio_le_generic
          hTwenty hBout (Or.inl rfl) triple hnonconstant
      · change
          hallBaseTailSquarePayment N B triple.pivots 23 2 / N ≤
            3 * fiveMillionSquareTail23Envelope / 25 +
              budget.evenOneRootEnvelope / 2
        exact hEvenOneTail triple.subsetPart triple.card
  | evenOneCommonThree =>
      obtain ⟨cell, triple, hcommon, hconstant⟩ := hbranch
      have hresidual := highCloseTriple_subset_residual triple
      refine highVariableKernelTerminal_of_bounds
        (branch := .evenOneCommonThree) budget
        ⟨cell, triple, hcommon, hconstant⟩ triple.card hresidual ?_ ?_
      · change
          fiveMillionR263BaseMixedHalfPayment
              N B triple.pivots 23 / N ≤
            12_616 / 1_000_000
        exact twentyMillionEvenFinite23Payment_ratio_le_common
          hTwenty hBout (Or.inl rfl) triple hcommon
      · change
          hallBaseTailSquarePayment N B triple.pivots 23 2 / N ≤
            3 * fiveMillionSquareTail23Envelope / 25 +
              budget.evenOneRootEnvelope / 2
        exact hEvenOneTail triple.subsetPart triple.card
  | evenTwoGeneric =>
      obtain ⟨charge, triple, hnonconstant⟩ := hbranch
      have hresidual := highCloseTriple_subset_residual triple
      refine highVariableKernelTerminal_of_bounds
        (branch := .evenTwoGeneric) budget
        ⟨charge, triple, hnonconstant⟩ triple.card hresidual ?_ ?_
      · change
          fiveMillionR263BaseMixedHalfPayment
              N B triple.pivots 23 / N ≤
            twentyMillionFiniteEvenGeneric23
        exact twentyMillionEvenFinite23Payment_ratio_le_generic
          hTwenty hBout (Or.inr (Or.inl rfl)) triple hnonconstant
      · change
          hallBaseTailSquarePayment N B triple.pivots 23 2 / N ≤
            3 * fiveMillionSquareTail23Envelope / 25 +
              budget.evenTwoRootEnvelope / 2
        exact hEvenTwoTail triple.subsetPart triple.card
  | evenTwoCommonThree =>
      obtain ⟨charge, cell, triple, hcommon, hconstant⟩ := hbranch
      have hresidual := highCloseTriple_subset_residual triple
      refine highVariableKernelTerminal_of_bounds
        (branch := .evenTwoCommonThree) budget
        ⟨charge, cell, triple, hcommon, hconstant⟩
        triple.card hresidual ?_ ?_
      · change
          fiveMillionR263BaseMixedHalfPayment
              N B triple.pivots 23 / N ≤
            12_616 / 1_000_000
        exact twentyMillionEvenFinite23Payment_ratio_le_common
          hTwenty hBout (Or.inr (Or.inl rfl)) triple hcommon
      · change
          hallBaseTailSquarePayment N B triple.pivots 23 2 / N ≤
            3 * fiveMillionSquareTail23Envelope / 25 +
              budget.evenTwoRootEnvelope / 2
        exact hEvenTwoTail triple.subsetPart triple.card
  | evenThreeGeneric =>
      obtain ⟨chargeOne, chargeTwo, triple, hnonconstant⟩ := hbranch
      have hresidual := highCloseTriple_subset_residual triple
      refine highVariableKernelTerminal_of_bounds
        (branch := .evenThreeGeneric) budget
        ⟨chargeOne, chargeTwo, triple, hnonconstant⟩
        triple.card hresidual ?_ ?_
      · change
          fiveMillionR263BaseMixedHalfPayment
              N B triple.pivots 23 / N ≤
            twentyMillionFiniteEvenGeneric23
        exact twentyMillionEvenFinite23Payment_ratio_le_generic
          hTwenty hBout (Or.inr (Or.inr rfl)) triple hnonconstant
      · change
          hallBaseTailSquarePayment N B triple.pivots 23 2 / N ≤
            3 * fiveMillionSquareTail23Envelope / 25 +
              budget.rootEnvelope / 2
        exact hEvenThreeTail triple.subsetPart triple.card
  | evenThreeCommonThree =>
      obtain ⟨chargeOne, chargeTwo, cell, triple, hcommon,
        hconstant⟩ := hbranch
      have hresidual := highCloseTriple_subset_residual triple
      refine highVariableKernelTerminal_of_bounds
        (branch := .evenThreeCommonThree) budget
        ⟨chargeOne, chargeTwo, cell, triple, hcommon, hconstant⟩
        triple.card hresidual ?_ ?_
      · change
          fiveMillionR263BaseMixedHalfPayment
              N B triple.pivots 23 / N ≤
            12_616 / 1_000_000
        exact twentyMillionEvenFinite23Payment_ratio_le_common
          hTwenty hBout (Or.inr (Or.inr rfl)) triple hcommon
      · change
          hallBaseTailSquarePayment N B triple.pivots 23 2 / N ≤
            3 * fiveMillionSquareTail23Envelope / 25 +
              budget.rootEnvelope / 2
        exact hEvenThreeTail triple.subsetPart triple.card
  | oddTwoGeneric =>
      obtain ⟨chargeOne, chargeTwo, chargeThree, parity, triple,
        hnonconstant⟩ := hbranch
      have hresidual := highOddTwoTriple_subset_residual triple
      refine highVariableKernelTerminal_of_bounds
        (branch := .oddTwoGeneric) budget
        ⟨chargeOne, chargeTwo, chargeThree, parity, triple, hnonconstant⟩
        triple.card hresidual ?_ ?_
      · change
          fiveMillionR263BaseMixedHalfPayment
              N B triple.pivots 19 / N ≤
            19_420 / 1_000_000
        exact twentyMillionOddTwoFinite19Payment_ratio_le_generic
          hTwenty hBout triple hnonconstant
      · change
          hallBaseTailSquarePayment N B triple.pivots 19 2 / N ≤
            twentyMillionSquareOdd + budget.oddRootEnvelope / 2
        exact hOddTail
          (highOddTwoTriple_classified triple) triple.card
  | oddTwoCommonThree =>
      obtain ⟨chargeOne, chargeTwo, chargeThree, parity, cell, triple,
        hcommon, hconstant⟩ := hbranch
      have hresidual := highOddTwoTriple_subset_residual triple
      refine highVariableKernelTerminal_of_bounds
        (branch := .oddTwoCommonThree) budget
        ⟨chargeOne, chargeTwo, chargeThree, parity, cell, triple,
          hcommon, hconstant⟩ triple.card hresidual ?_ ?_
      · change
          fiveMillionR263BaseMixedHalfPayment
              N B triple.pivots 19 / N ≤
            20_878 / 1_000_000
        exact twentyMillionOddTwoFinite19Payment_ratio_le_common
          hTwenty hBout triple hcommon
      · change
          hallBaseTailSquarePayment N B triple.pivots 19 2 / N ≤
            twentyMillionSquareOdd + budget.oddRootEnvelope / 2
        exact hOddTail
          (highOddTwoTriple_classified triple) triple.card
  | oddOneGeneric =>
      obtain ⟨chargeOne, chargeTwo, chargeThree, parity, otherEmpty,
        triple, hnonconstant⟩ := hbranch
      have hresidual := highOddOneTriple_subset_residual triple
      refine highVariableKernelTerminal_of_bounds
        (branch := .oddOneGeneric) budget
        ⟨chargeOne, chargeTwo, chargeThree, parity, otherEmpty,
          triple, hnonconstant⟩ triple.card hresidual ?_ ?_
      · change
          fiveMillionR263BaseMixedHalfPayment
              N B triple.pivots 19 / N ≤
            26_643 / 1_000_000
        exact twentyMillionOddOneFinite19Payment_ratio_le_generic
          hTwenty hBout triple hnonconstant
      · change
          hallBaseTailSquarePayment N B triple.pivots 19 2 / N ≤
            twentyMillionSquareOdd + budget.oddRootEnvelope / 2
        exact hOddTail
          (highOddOneTriple_classified triple) triple.card
  | oddOneCommonThree =>
      obtain ⟨chargeOne, chargeTwo, chargeThree, parity, otherEmpty, cell,
        triple, hcommon, hconstant⟩ := hbranch
      have hresidual := highOddOneTriple_subset_residual triple
      refine highVariableKernelTerminal_of_bounds
        (branch := .oddOneCommonThree) budget
        ⟨chargeOne, chargeTwo, chargeThree, parity, otherEmpty, cell,
          triple, hcommon, hconstant⟩ triple.card hresidual ?_ ?_
      · change
          fiveMillionR263BaseMixedHalfPayment
              N B triple.pivots 19 / N ≤
            29_459 / 1_000_000
        exact twentyMillionOddOneFinite19Payment_ratio_le_common
          hTwenty hBout triple hcommon
      · change
          hallBaseTailSquarePayment N B triple.pivots 19 2 / N ≤
            twentyMillionSquareOdd + budget.oddRootEnvelope / 2
        exact hOddTail
          (highOddOneTriple_classified triple) triple.card

theorem highVariableKernelTerminalCertificate_of_branch
    (root : HighVariableRootTerminal)
    (budget : HighTenBranchBudget)
    {N : Nat} {B : Finset Nat} {branch : TwentyMillionBranch}
    (hRootCheck : root.check = true)
    (hLower : root.lower ≤ N)
    (hTwenty : 20_000_000 ≤ N)
    (hRootEnvelopes :
      ∀ branch : TwentyMillionBranch,
        budget.branchRootEnvelope branch =
          root.rootEnvelope)
    (hBout : Erdos848OutsideSet N B)
    (hbranch : TwentyMillionBranchApplies N B branch) :
    HighKernelTerminalCertificate budget N B := by
  apply highKernelTerminalCertificate_of_tail_bounds
    budget hTwenty hBout hbranch
  · intro pivots hpivotsPart hpivotsCard
    have hpivotsResidual : pivots ⊆ hallResidual N B :=
      fun pivot hpivot =>
        fiveMillionValuationPart_subset_residual
          N B .evenOne (hpivotsPart hpivot)
    rw [show budget.evenOneRootEnvelope =
        root.rootEnvelope by
      simpa [HighTenBranchBudget.branchRootEnvelope] using
        hRootEnvelopes .evenOneGeneric]
    exact hallBaseTailSquarePayment_threeTwo_variable_even23_ratio_le
      root hRootCheck hLower hBout hpivotsResidual hpivotsCard
  · intro pivots hpivotsPart hpivotsCard
    have hpivotsResidual : pivots ⊆ hallResidual N B :=
      fun pivot hpivot =>
        fiveMillionValuationPart_subset_residual
          N B .evenTwo (hpivotsPart hpivot)
    rw [show budget.evenTwoRootEnvelope =
        root.rootEnvelope by
      simpa [HighTenBranchBudget.branchRootEnvelope] using
        hRootEnvelopes .evenTwoGeneric]
    exact hallBaseTailSquarePayment_threeTwo_variable_even23_ratio_le
      root hRootCheck hLower hBout hpivotsResidual hpivotsCard
  · intro pivots hpivotsPart hpivotsCard
    have hpivotsResidual : pivots ⊆ hallResidual N B :=
      fun pivot hpivot =>
        fiveMillionValuationPart_subset_residual
          N B .evenThree (hpivotsPart hpivot)
    rw [show budget.rootEnvelope =
        root.rootEnvelope by
      simpa [HighTenBranchBudget.branchRootEnvelope] using
        hRootEnvelopes .evenThreeGeneric]
    exact hallBaseTailSquarePayment_threeTwo_variable_even23_ratio_le
      root hRootCheck hLower hBout hpivotsResidual hpivotsCard
  · intro pivots hpivotsClass hpivotsCard
    have hpivotsResidual : pivots ⊆ hallResidual N B := by
      intro pivot hpivot
      obtain ⟨valuation, _hOdd, hpivotPart⟩ :=
        hpivotsClass pivot hpivot
      exact fiveMillionValuationPart_subset_residual
        N B valuation hpivotPart
    rw [show budget.oddRootEnvelope =
        root.rootEnvelope by
      simpa [HighTenBranchBudget.branchRootEnvelope] using
        hRootEnvelopes .oddTwoGeneric]
    exact hallBaseTailSquarePayment_threeTwo_variable_odd19_ratio_le
      root hRootCheck hLower hBout hpivotsResidual hpivotsCard

#print axioms highKernelTerminalCertificate_of_tail_bounds
#print axioms highVariableKernelTerminalCertificate_of_branch

end Erdos848
