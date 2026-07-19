import Erdos848.TailGlobalMixedPrimeFallbackSound

namespace Erdos848

/-! # Arithmetic soundness of one concrete global mixed-support checker row -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/-- Literal rational inequality represented by one concrete checker row. -/
def globalMixedRowBound
    (k : ℕ) (supportPrefix : List ℕ)
    (fiveTwist squareCoset : Bool) (N : ℕ) : Prop :=
  let maskedSupport := supportPrefix.filter fun p => decide (p ≤ 2843)
  let survivors :=
    if fiveTwist then
      globalMixedTwistSurvivorCount maskedSupport squareCoset
    else
      globalMixedNormalSurvivorCount maskedSupport squareCoset
  let coefficient := globalMixedRootCoefficient100 k survivors
  (((coefficient : ℚ) / 100 +
      Nat.primeCounting (N / globalMixedSplit)) / N) ≤
    fiveMillionOddRoot7Envelope / 6

/-- The Boolean row computes its endpoint, masked support, survivor count and
root coefficient, then the generic prime-row theorem supplies the literal
rational bound for every later ambient value. -/
theorem globalMixedOneRowPasses_sound
    {k N : ℕ} {supportPrefix : List ℕ}
    {fiveTwist squareCoset : Bool}
    (hN : 5_000_000 ≤ N)
    (hEndpoint : globalMixedSupportEndpoint supportPrefix ≤ N)
    (hpass :
      globalMixedOneRowPasses k supportPrefix fiveTwist squareCoset = true) :
    globalMixedRowBound k supportPrefix fiveTwist squareCoset N := by
  unfold globalMixedOneRowPasses at hpass
  unfold globalMixedRowBound
  dsimp only at hpass ⊢
  apply globalMixedPrimeRowPasses_sound
    (endpoint := globalMixedSupportEndpoint supportPrefix) hN
  · unfold globalMixedSupportEndpoint
    exact le_max_left _ _
  · exact hEndpoint
  · exact hpass

/-- All four rows of a successful support-prefix checker carry their literal
rational bounds for every later ambient value. -/
theorem globalMixedSupportPrefixPasses_sound
    {k N : ℕ} {supportPrefix : List ℕ}
    (hN : 5_000_000 ≤ N)
    (hEndpoint : globalMixedSupportEndpoint supportPrefix ≤ N)
    (hpass : globalMixedSupportPrefixPasses k supportPrefix = true) :
    globalMixedRowBound k supportPrefix false false N ∧
      globalMixedRowBound k supportPrefix false true N ∧
      globalMixedRowBound k supportPrefix true false N ∧
      globalMixedRowBound k supportPrefix true true N := by
  unfold globalMixedSupportPrefixPasses at hpass
  have hfirst := Bool.and_eq_true_iff.mp hpass
  have hsecond := Bool.and_eq_true_iff.mp hfirst.1
  have hthird := Bool.and_eq_true_iff.mp hsecond.1
  exact ⟨globalMixedOneRowPasses_sound hN hEndpoint hthird.1,
    globalMixedOneRowPasses_sound hN hEndpoint hthird.2,
    globalMixedOneRowPasses_sound hN hEndpoint hsecond.2,
    globalMixedOneRowPasses_sound hN hEndpoint hfirst.2⟩

#print axioms globalMixedOneRowPasses_sound
#print axioms globalMixedSupportPrefixPasses_sound

end Erdos848
