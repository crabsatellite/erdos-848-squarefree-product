import Erdos848.TailGlobalMixedEvenFinite95

namespace Erdos848

/-!
# Optimized three-pivot terminal reduction

The fixed Hall cut supplies three residual pivots in a window of span below
`2627`.  With `n = 3`, `k = 2`, and finite cutoff `7`, the even finite alphabet
is literally `{3, 7}`.  Common tail primes are handled separately up to `51`;
above `51` the two witnesses on a pivot pair are forced to be distinct.  The
tail term is the exact set on which at least two pivots have a tail witness;
it is not the multiplicity-weighted sum over the three pivot pairs.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def globalMixedEvenFinitePrimes7 : Finset Nat :=
  (Finset.Icc 2 7).filter fun p =>
    Nat.Prime p ∧ p ≠ 2 ∧ p ≠ 5

@[simp] theorem mem_globalMixedEvenFinitePrimes7 {p : Nat} :
    p ∈ globalMixedEvenFinitePrimes7 ↔
      Nat.Prime p ∧ p ≤ 7 ∧ p ≠ 2 ∧ p ≠ 5 := by
  constructor
  · intro hp
    have hparts := Finset.mem_filter.mp hp
    exact ⟨hparts.2.1, (Finset.mem_Icc.mp hparts.1).2,
      hparts.2.2.1, hparts.2.2.2⟩
  · rintro ⟨hpPrime, hpUpper, hpTwo, hpFive⟩
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_Icc.mpr ⟨hpPrime.two_le, hpUpper⟩,
        hpPrime, hpTwo, hpFive⟩

theorem globalMixedEvenFinitePrimes7_eq :
    globalMixedEvenFinitePrimes7 = {3, 7} := by
  decide

theorem globalMixedEvenFinitePrimes7_card :
    globalMixedEvenFinitePrimes7.card = 2 := by
  decide

theorem finiteSquarePrimeEvent_iff_evenValuationPrime7
    {N pivot point : Nat} {B : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivot : pivot ∈ fiveMillionValuationPart N B valuation)
    (hpoint : point ∈ lowBaseSet N) :
    finiteSquarePrimeEvent 7 pivot point ↔
      ∃ p ∈ globalMixedEvenFinitePrimes7,
        p ^ 2 ∣ pivot * point + 1 := by
  have hpivotResidual : pivot ∈ hallResidual N B :=
    fiveMillionValuationPart_subset_residual N B valuation hpivot
  have hpivotEven : Even pivot :=
    even_of_mem_evenValuationPart hvaluation hpivot
  constructor
  · rintro ⟨p, hpPrime, hpCutoff, hpDiv⟩
    have hpNotTwo : p ≠ 2 := by
      intro hp
      subst p
      exact two_square_not_dvd_even_form hpivotEven hpDiv
    have hpNotFive : p ≠ 5 := by
      intro hp
      subst p
      exact five_square_not_dvd_residual_base
        hBout hpivotResidual hpoint hpDiv
    exact ⟨p, mem_globalMixedEvenFinitePrimes7.mpr
      ⟨hpPrime, hpCutoff, hpNotTwo, hpNotFive⟩, hpDiv⟩
  · rintro ⟨p, hpFinite, hpDiv⟩
    have hpParts := mem_globalMixedEvenFinitePrimes7.mp hpFinite
    exact ⟨p, hpParts.1, hpParts.2.1, hpDiv⟩

def GlobalMixedThreePivotTailThresholdReduction
    (N : Nat) (B : Finset Nat) : Prop :=
  ∃ valuation : FiveMillionValuationClass,
    ∃ pivots : Finset Nat,
      pivots ⊆ fiveMillionValuationPart N B valuation ∧
      pivots.card = 3 ∧
      (∀ x ∈ pivots, ∀ y ∈ pivots, x < y → y - x < 2627) ∧
      ((hallCompletion N B).card : Rat) <=
        (globalMixedTailDiagonalBad N).card +
          globalMixedBaseFiniteThresholdPayment N pivots 7 2 +
            globalMixedBaseTailThresholdPayment N pivots 7 2

theorem globalMixedThreePivotTailThresholdReduction_of_defect
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card) :
    GlobalMixedThreePivotTailThresholdReduction N B := by
  classical
  obtain ⟨valuation, pivots, hpivots, hpivotsCard, hspan⟩ :=
    exists_sameValuation_threePivotCluster_of_defect
      hLower hBout hBprop hdefect
  have hpivotsCompletion : pivots ⊆ hallCompletion N B := by
    intro pivot hpivot
    have hpivotResidual := fiveMillionValuationPart_subset_residual
      N B valuation (hpivots hpivot)
    exact (Finset.mem_sdiff.mp hpivotResidual).1
  exact ⟨valuation, pivots, hpivots, hpivotsCard, hspan,
    hallCompletion_card_le_globalMixedDiagonalBaseTailThreshold
      hBout hBprop hpivotsCompletion (by omega)⟩

def Erdos848GlobalMixedThreePivotTerminalBound : Prop :=
  ∀ N : Nat, 5_000_000 <= N →
    ∀ B : Finset Nat,
      Erdos848OutsideSet N B →
      NonSquarefreeProductProp B →
      (OriginalA7 N).card <
        B.card + (hallNonNeighbours N B).card →
      ∀ valuation : FiveMillionValuationClass,
      ∀ pivots : Finset Nat,
        pivots ⊆ fiveMillionValuationPart N B valuation →
        pivots.card = 3 →
        (∀ x ∈ pivots, ∀ y ∈ pivots, x < y → y - x < 2627) →
        ((globalMixedTailDiagonalBad N).card +
          globalMixedBaseFiniteThresholdPayment N pivots 7 2 +
            globalMixedBaseTailThresholdPayment N pivots 7 2) / N <
              tailHallTarget N

def GlobalMixedEvenThreePivotTerminalBound : Prop :=
  ∀ N : Nat, 5_000_000 <= N →
    ∀ B : Finset Nat,
      Erdos848OutsideSet N B →
      NonSquarefreeProductProp B →
      (OriginalA7 N).card <
        B.card + (hallNonNeighbours N B).card →
      ∀ valuation : FiveMillionValuationClass,
      IsGlobalMixedEvenValuationClass valuation →
      ∀ pivots : Finset Nat,
        pivots ⊆ fiveMillionValuationPart N B valuation →
        pivots.card = 3 →
        (∀ x ∈ pivots, ∀ y ∈ pivots, x < y → y - x < 2627) →
        ((globalMixedTailDiagonalBad N).card +
          globalMixedBaseFiniteThresholdPayment N pivots 7 2 +
            globalMixedBaseTailThresholdPayment N pivots 7 2) / N <
              tailHallTarget N

theorem erdos848GlobalMixedTailClose_of_threePivotTerminalBound
    (hterminal : Erdos848GlobalMixedThreePivotTerminalBound) :
    Erdos848GlobalMixedTailClose := by
  intro N hLower
  apply originalProblem_of_hallStatement
  intro B hBout hBprop
  by_contra hnotHall
  have hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card := by omega
  obtain ⟨valuation, pivots, hpivots, hpivotsCard, hspan, hpayment⟩ :=
    globalMixedThreePivotTailThresholdReduction_of_defect
      hLower hBout hBprop hdefect
  have hNpos : 0 < N := by omega
  have hNposQ : (0 : Rat) < N := by exact_mod_cast hNpos
  have hcompletionRatio : ((hallCompletion N B).card : Rat) / N <
      tailHallTarget N := by
    exact (div_le_div_of_nonneg_right hpayment hNposQ.le).trans_lt
      (hterminal N hLower B hBout hBprop hdefect
        valuation pivots hpivots hpivotsCard hspan)
  have hHall := hall_bound_of_completion_ratio_le_tailTarget
    hNpos hBout hcompletionRatio.le
  omega

#print axioms globalMixedEvenFinitePrimes7_eq
#print axioms globalMixedEvenFinitePrimes7_card
#print axioms finiteSquarePrimeEvent_iff_evenValuationPrime7
#print axioms globalMixedThreePivotTailThresholdReduction_of_defect
#print axioms erdos848GlobalMixedTailClose_of_threePivotTerminalBound

end Erdos848
