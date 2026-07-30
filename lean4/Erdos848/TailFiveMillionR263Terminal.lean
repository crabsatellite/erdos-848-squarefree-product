import Erdos848.TailGlobalMixedOneOddSevenCell

namespace Erdos848

/-!
# Minimal semantic terminal interface for the R263 five-million cut

The exploratory R263 audit has twenty-seven exhaustive terminal rows.  This
file retains only upward rational row ceilings and the literal Hall component
interface.  A producer may not postulate the final Hall inequality: it must
bound the actual residual, actual base finite-threshold payment, and actual
one-form tail payment for actual Hall pivots.  The kernel performs the final
assembly and target comparison.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

inductive FiveMillionR263Branch where
  | evenOneTwoGood
  | evenOneOneGood
  | evenOneNoGood
  | evenOneOneCellGood
  | evenOneOneCellSeven
  | evenOneOneCellEleven
  | evenOneOneCellBoth
  | evenTwoTwoCells
  | evenTwoOneCell
  | evenThreeCell
  | oddTwoAtMostElevenCells
  | oddTwoOneResidue
  | oddOneOneCellMatch
  | oddOneOneCellFibreOne
  | oddOneOneCellFibreTwo
  | oddOneOneCellFibreThree
  | oddOneTwoCells
  | oddOneThreeCells
  | oddOneFourCells
  | oddOneFiveCells
  | oddOneSixCells
  | oddOneSevenCells
  | oddOneEightCellsMatch
  | oddOneEightCellsFailure
  | oddOneNineCellsMatch
  | oddOneNineCellsFailure
  | oddTwoBalanced
  deriving DecidableEq, Repr

/-! The first seven rows use the public coarse-root implementation.  Their
common umbrella remains strictly below the Hall target at five million.
All other rows retain the upward-rounded independent audit ceilings. -/
@[simp] def fiveMillionR263PublicBudget : Rat := 39_995 / 1_000_000

def fiveMillionR263BranchCeiling : FiveMillionR263Branch -> Rat
  | .evenOneTwoGood => fiveMillionR263PublicBudget
  | .evenOneOneGood => fiveMillionR263PublicBudget
  | .evenOneNoGood => fiveMillionR263PublicBudget
  | .evenOneOneCellGood => fiveMillionR263PublicBudget
  | .evenOneOneCellSeven => fiveMillionR263PublicBudget
  | .evenOneOneCellEleven => fiveMillionR263PublicBudget
  | .evenOneOneCellBoth => fiveMillionR263PublicBudget
  -- The public kernel package reuses the already checked uniform one-form
  -- root envelope in this row.  The resulting literal four-pivot total is
  -- coarser than the exploratory supportwise maximum but remains below the
  -- controlling seven-cell budget.
  | .evenTwoTwoCells => 39000000000000000 / 10^18
  -- The public kernel package uses the uniform three-pivot CRT envelope in
  -- this row.  It is deliberately coarser than the exploratory supportwise
  -- maximum, but still lies below the controlling seven-cell budget.
  | .evenTwoOneCell => 39100000000000000 / 10^18
  -- The cutoff-19 finite certificate plus the cutoff-19 square tail closes
  -- below `.03975`; this remains below the controlling seven-cell budget.
  | .evenThreeCell => 39750000000000000 / 10^18
  | .oddTwoAtMostElevenCells => 37133875656241985 / 10^18
  | .oddTwoOneResidue => 33195079233143762 / 10^18
  | .oddOneOneCellMatch => 38568768024686545 / 10^18
  | .oddOneOneCellFibreOne => 37908700172165084 / 10^18
  | .oddOneOneCellFibreTwo => 38999949151756921 / 10^18
  | .oddOneOneCellFibreThree => 39294725510915599 / 10^18
  | .oddOneTwoCells => 39864435832054442 / 10^18
  | .oddOneThreeCells => 37942015200709102 / 10^18
  | .oddOneFourCells => 38372337366019709 / 10^18
  | .oddOneFiveCells => 38801969125105583 / 10^18
  | .oddOneSixCells => 39230062336597158 / 10^18
  | .oddOneSevenCells => globalMixedOneOddSevenCellBudget
  | .oddOneEightCellsMatch => 38999484992203130 / 10^18
  | .oddOneEightCellsFailure => 38575216981036138 / 10^18
  | .oddOneNineCellsMatch => 39700089897857242 / 10^18
  | .oddOneNineCellsFailure => 38590417967026595 / 10^18
  -- Reusing the already checked full nine-cell envelope independently in the
  -- two odd mod-four classes gives a slightly coarser public total than the
  -- exploratory joint odd-union marker, but still leaves ample controlling
  -- slack and avoids another generated certificate family.
  | .oddTwoBalanced => 39400000000000000 / 10^18

theorem fiveMillionR263PublicBudget_lt_fiveMillionTarget :
    fiveMillionR263PublicBudget < tailHallTarget 5_000_000 := by
  norm_num [fiveMillionR263PublicBudget, tailHallTarget]

theorem fiveMillionR263PublicBudget_lt_target
    {N : Nat} (hLower : 5_000_000 <= N) :
    fiveMillionR263PublicBudget < tailHallTarget N :=
  fiveMillionR263PublicBudget_lt_fiveMillionTarget.trans_le
    (tailHallTarget_mono (by norm_num) hLower)

theorem fiveMillionR263BranchCeiling_le_publicBudget
    (branch : FiveMillionR263Branch) :
    fiveMillionR263BranchCeiling branch <=
      fiveMillionR263PublicBudget := by
  cases branch <;>
    norm_num [fiveMillionR263BranchCeiling,
      fiveMillionR263PublicBudget,
      globalMixedOneOddSevenCellBudget,
      globalMixedOneOddSevenCellDiagonalEnvelope,
      globalMixedOneOddSevenCellFiniteEnvelope,
      globalMixedOneOddSevenCellTailEnvelope,
      fiveMillionOddRoot7Envelope, fiveMillionSquareTail7Envelope]

noncomputable def fiveMillionR263BaseFiniteThresholdPayment
    (N : Nat) (B pivots : Finset Nat) (cutoff k : Nat) : Rat := by
  classical
  exact (((hallBasePart N B).filter fun point =>
    k <= (pivots.filter fun pivot =>
      finiteSquarePrimeEvent cutoff pivot point).card).card : Rat)

theorem hallBasePart_card_le_fiveMillionR263FiniteTail
    {N cutoff k : Nat} {B pivots : Finset Nat}
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B)
    (hk : k <= pivots.card) :
    ((hallBasePart N B).card : Rat) <=
      fiveMillionR263BaseFiniteThresholdPayment N B pivots cutoff k +
        hallBaseTailSquarePayment N B pivots cutoff k := by
  classical
  have hraw := card_le_finite_threshold_add_tail_sum
    (points := hallBasePart N B) (indices := pivots)
    (finite := finiteSquarePrimeEvent cutoff)
    (tail := tailSquarePrimeEvent cutoff) hk (by
      intro point hpoint pivot hpivot
      exact hallCompletion_finite_or_tail hBprop hpivots point
        (Finset.mem_inter.mp hpoint).1 pivot hpivot)
  have hden : (((pivots.card - k : Nat) : Rat) + 1) =
      (pivots.card : Rat) - (k : Rat) + 1 := by
    rw [Nat.cast_sub hk]
  simpa [fiveMillionR263BaseFiniteThresholdPayment,
    hallBaseTailSquarePayment, hallBaseTailSquareCount, hden] using hraw

theorem hallCompletion_card_le_fiveMillionR263Components
    {N cutoff k : Nat} {B pivots : Finset Nat}
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B)
    (hk : k <= pivots.card) :
    ((hallCompletion N B).card : Rat) <=
      (hallResidual N B).card +
        fiveMillionR263BaseFiniteThresholdPayment N B pivots cutoff k +
          hallBaseTailSquarePayment N B pivots cutoff k := by
  have hbase := hallBasePart_card_le_fiveMillionR263FiniteTail
    (cutoff := cutoff) (k := k) hBprop hpivots hk
  have hpartitionQ :
      ((hallCompletion N B).card : Rat) =
        (hallResidual N B).card + (hallBasePart N B).card := by
    exact_mod_cast (hallCompletion_card_partition N B).symm
  rw [hpartitionQ]
  linarith

/-- A terminal certificate exposes real Hall components.  In particular, the
field `componentTotalBound` contains only arithmetic between separately proved
component envelopes; it is not a premise asserting the desired Hall bound. -/
structure FiveMillionR263TerminalCertificate
    (N : Nat) (B : Finset Nat) : Type where
  branch : FiveMillionR263Branch
  pivots : Finset Nat
  cutoff : Nat
  threshold : Nat
  thresholdPositive : 0 < threshold
  thresholdCard : threshold <= pivots.card
  pivotsCompletion : pivots ⊆ hallCompletion N B
  residualEnvelope : Rat
  finiteEnvelope : Rat
  tailEnvelope : Rat
  residualBound : ((hallResidual N B).card : Rat) / N <= residualEnvelope
  finiteBound :
    fiveMillionR263BaseFiniteThresholdPayment N B pivots cutoff threshold / N <=
      finiteEnvelope
  tailBound :
    hallBaseTailSquarePayment N B pivots cutoff threshold / N <= tailEnvelope
  componentTotalBound :
    residualEnvelope + finiteEnvelope + tailEnvelope <=
      fiveMillionR263BranchCeiling branch

/-- The already closed one-odd-class six/seven-cell mechanism is a genuine
producer for the semantic R263 interface.  It supplies real pivots and all
three literal component bounds; no final Hall-ratio premise is reused. -/
noncomputable def GlobalMixedOneOddSevenCellCertificate.toR263Terminal
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (certificate : GlobalMixedOneOddSevenCellCertificate N B) :
    FiveMillionR263TerminalCertificate N B := by
  classical
  let produced := fiveMillionSixPivotPatternWithStructuredOfActiveCells
    certificate.parity certificate.cells certificate.cellsCardLower
      certificate.activeCells certificate.structuredClass
  let pivots : Finset Nat := produced.1
  let pattern : FiveMillionSixPivotPattern N B pivots := produced.2.1
  have hpivotsStructured :
      pivots ⊆ fiveMillionStructuredResidual N B certificate.charged :=
    produced.2.2
  have hpivotsCompletion : pivots ⊆ hallCompletion N B := by
    intro pivot hpivot
    exact (Finset.mem_sdiff.mp (pattern.pivotsResidual hpivot)).1
  have hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot := by
    intro pivot hpivot
    have hstructured := hpivotsStructured hpivot
    have hmod := certificate.structuredClass pivot hstructured
    have oddOfModFour (h : pivot % 4 = 1 ∨ pivot % 4 = 3) : Odd pivot := by
      have hmodTwo : pivot % 2 = 1 := (Nat.odd_mod_four_iff).2 h
      refine ⟨pivot / 2, ?_⟩
      have hdecomp := Nat.mod_add_div pivot 2
      omega
    cases hparity : certificate.parity with
    | false =>
        exact oddOfModFour
          (Or.inl (by simpa [hparity] using hmod))
    | true =>
        exact oddOfModFour
          (Or.inr (by simpa [hparity] using hmod))
  let tailCertificate := globalMixedBaseTailCertificate_actual
    hLower hBout pattern.pivotsCard pattern.pivotsResidual hpivotsOdd
  have hfiniteOriginal := globalMixedOneOddSevenCellFinitePayment_ratio_le
    hLower (pattern.toPeriodicCertificate hBout)
  have hfinite :
      fiveMillionR263BaseFiniteThresholdPayment N B pivots 7 3 / N <=
        globalMixedOneOddSevenCellFiniteEnvelope := by
    simpa [fiveMillionR263BaseFiniteThresholdPayment,
      globalMixedOneOddSevenCellFinitePayment] using hfiniteOriginal
  have htail : hallBaseTailSquarePayment N B pivots 7 3 / N <=
      globalMixedOneOddSevenCellTailEnvelope := by
    simpa [globalMixedOneOddSevenCellTailEnvelope] using
      hallBaseTailSquarePayment_sixThree_ratio_le tailCertificate
  have hchargeRatio : (certificate.charged.card : Rat) / N <= 128 / N := by
    apply div_le_div_of_nonneg_right _ (by positivity)
    exact_mod_cast certificate.chargedCard
  have hresidualPartition :
      (fiveMillionStructuredResidual N B certificate.charged).card +
          certificate.charged.card = (hallResidual N B).card := by
    simpa [fiveMillionStructuredResidual] using
      Finset.card_sdiff_add_card_eq_card certificate.chargedSubset
  have hresidualN : ((hallResidual N B).card : Rat) / N <=
      globalMixedOneOddSevenCellDiagonalEnvelope + 128 / N := by
    calc
      ((hallResidual N B).card : Rat) / N =
          ((fiveMillionStructuredResidual N B certificate.charged).card : Rat) / N +
            (certificate.charged.card : Rat) / N := by
        rw [← add_div]
        congr 1
        exact_mod_cast hresidualPartition.symm
      _ <= globalMixedOneOddSevenCellDiagonalEnvelope + 128 / N :=
        add_le_add certificate.structuredDiagonal hchargeRatio
  have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
  have hchargeAtCut : (128 : Rat) / N <= 128 / 5_000_000 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hLowerQ
  have hresidual : ((hallResidual N B).card : Rat) / N <=
      globalMixedOneOddSevenCellDiagonalEnvelope + 128 / 5_000_000 := by
    linarith
  refine
    { branch := .oddOneSevenCells
      pivots := pivots
      cutoff := 7
      threshold := 3
      thresholdPositive := by norm_num
      thresholdCard := by simpa [pattern.pivotsCard]
      pivotsCompletion := hpivotsCompletion
      residualEnvelope :=
        globalMixedOneOddSevenCellDiagonalEnvelope + 128 / 5_000_000
      finiteEnvelope := globalMixedOneOddSevenCellFiniteEnvelope
      tailEnvelope := globalMixedOneOddSevenCellTailEnvelope
      residualBound := hresidual
      finiteBound := hfinite
      tailBound := htail
      componentTotalBound := ?_ }
  simp only [fiveMillionR263BranchCeiling]
  unfold globalMixedOneOddSevenCellBudget
  ring_nf
  exact le_rfl

theorem FiveMillionR263TerminalCertificate.completion_ratio_lt_target
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBprop : NonSquarefreeProductProp B)
    (certificate : FiveMillionR263TerminalCertificate N B) :
    ((hallCompletion N B).card : Rat) / N < tailHallTarget N := by
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 5_000_000) hLower)
  have hraw := hallCompletion_card_le_fiveMillionR263Components
    (cutoff := certificate.cutoff) (k := certificate.threshold)
      hBprop certificate.pivotsCompletion certificate.thresholdCard
  have hratio := div_le_div_of_nonneg_right hraw hNpos.le
  calc
    ((hallCompletion N B).card : Rat) / N <=
        ((hallResidual N B).card +
          fiveMillionR263BaseFiniteThresholdPayment N B certificate.pivots
            certificate.cutoff certificate.threshold +
          hallBaseTailSquarePayment N B certificate.pivots
            certificate.cutoff certificate.threshold) / N := hratio
    _ = ((hallResidual N B).card : Rat) / N +
        fiveMillionR263BaseFiniteThresholdPayment N B certificate.pivots
          certificate.cutoff certificate.threshold / N +
        hallBaseTailSquarePayment N B certificate.pivots
          certificate.cutoff certificate.threshold / N := by ring
    _ <= certificate.residualEnvelope + certificate.finiteEnvelope +
        certificate.tailEnvelope :=
      add_le_add (add_le_add certificate.residualBound
        certificate.finiteBound) certificate.tailBound
    _ <= fiveMillionR263BranchCeiling certificate.branch :=
      certificate.componentTotalBound
    _ <= fiveMillionR263PublicBudget :=
      fiveMillionR263BranchCeiling_le_publicBudget certificate.branch
    _ < tailHallTarget N :=
      fiveMillionR263PublicBudget_lt_target hLower

def FiveMillionR263BranchExhaustion : Prop :=
  ∀ N, 5_000_000 <= N -> N < 10_000_000 ->
    ∀ B : Finset Nat, Erdos848OutsideSet N B ->
      NonSquarefreeProductProp B ->
      (OriginalA7 N).card < B.card + (hallNonNeighbours N B).card ->
      Nonempty (FiveMillionR263TerminalCertificate N B)

theorem erdos848FiveToTenMillionClose_of_R263BranchExhaustion
    (hexhaustive : FiveMillionR263BranchExhaustion) :
    ∀ N, 5_000_000 <= N -> N < 10_000_000 ->
      OriginalProblem848Statement N := by
  intro N hLower hUpper
  apply originalProblem_of_hallStatement
  intro B hBout hBprop
  by_contra hnotHall
  have hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card := by omega
  obtain ⟨certificate⟩ :=
    hexhaustive N hLower hUpper B hBout hBprop hdefect
  have hcompletion := certificate.completion_ratio_lt_target hLower hBprop
  have hHall := hall_bound_of_completion_ratio_le_tailTarget
    (lt_of_lt_of_le (by norm_num) hLower) hBout hcompletion.le
  omega

#print axioms fiveMillionR263BranchCeiling_le_publicBudget
#print axioms hallCompletion_card_le_fiveMillionR263Components
#print axioms GlobalMixedOneOddSevenCellCertificate.toR263Terminal
#print axioms FiveMillionR263TerminalCertificate.completion_ratio_lt_target
#print axioms erdos848FiveToTenMillionClose_of_R263BranchExhaustion

end Erdos848
