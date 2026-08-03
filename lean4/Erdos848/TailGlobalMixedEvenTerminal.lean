import Erdos848.TailGlobalMixedEvenRescale
import Erdos848.TailGlobalMixedEvenRootCoefficient
import Erdos848.TailGlobalMixedEvenSupportSemantic
import Erdos848.TailGlobalMixedEvenTerminalCountDefs

namespace Erdos848

/-!
# Sound terminal-prefix rows for E2 and E3

A generated leaf checks only a short retained support prefix and one affine
endpoint.  The semantic theorem below turns that Boolean result into the
literal rational row used by the transformed-root count.  Longer supports
are handled separately by the prefix anti-monotonicity theorem.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def globalMixedEvenRowBound
    (valuation : GlobalMixedEvenValuation)
    (k survivors N : Nat) : Prop :=
  let coefficient := globalMixedEvenRootCoefficient100
    (globalMixedEvenRootFactor valuation) k survivors
  match valuation with
  | .one =>
      (((coefficient : Rat) / 100 +
          Nat.primeCounting (N / globalMixedSplit)) / N) <=
        fiveMillionOddRoot7Envelope / 6
  | .two =>
      (((coefficient : Rat) / 100 +
          Nat.primeCounting (N / globalMixedSplit)) / N) <=
        fiveMillionOddRoot7Envelope / 6
  | .three =>
      (((coefficient : Rat) / 100 +
          Nat.primeCounting (N / globalMixedSplit)) / N) <=
        (6 / 5 : Rat) * (fiveMillionOddRoot7Envelope / 6)

def globalMixedEvenTerminalValuationPasses
    (valuation : GlobalMixedEvenValuation)
    (k endpoint : Nat) (support : List Nat) : Bool :=
  let normalFalse := globalMixedEvenTerminalNormalCount
    valuation support false
  let normalTrue := globalMixedEvenTerminalNormalCount
    valuation support true
  let twistFalse := globalMixedEvenTerminalTwistCount
    valuation support false
  let twistTrue := globalMixedEvenTerminalTwistCount
    valuation support true
  globalMixedLinePasses
      (globalMixedEvenCheckerCoefficient100 valuation
        (globalMixedEvenRootCoefficient100
          (globalMixedEvenRootFactor valuation) k normalFalse)) endpoint &&
    globalMixedLinePasses
      (globalMixedEvenCheckerCoefficient100 valuation
        (globalMixedEvenRootCoefficient100
          (globalMixedEvenRootFactor valuation) k normalTrue)) endpoint &&
    globalMixedLinePasses
      (globalMixedEvenCheckerCoefficient100 valuation
        (globalMixedEvenRootCoefficient100
          (globalMixedEvenRootFactor valuation) k twistFalse)) endpoint &&
    globalMixedLinePasses
      (globalMixedEvenCheckerCoefficient100 valuation
        (globalMixedEvenRootCoefficient100
          (globalMixedEvenRootFactor valuation) k twistTrue)) endpoint

def globalMixedEvenTerminalPrefixPasses
    (k endpoint : Nat) (support : List Nat) : Bool :=
  globalMixedEvenTerminalValuationPasses .two k endpoint support &&
    globalMixedEvenTerminalValuationPasses .three k endpoint support

def GlobalMixedEvenValuationRowsBound
    (valuation : GlobalMixedEvenValuation)
    (k : Nat) (support : List Nat) (N : Nat) : Prop :=
  globalMixedEvenRowBound valuation k
      (globalMixedEvenTerminalNormalCount valuation support false) N ∧
    globalMixedEvenRowBound valuation k
      (globalMixedEvenTerminalNormalCount valuation support true) N ∧
    globalMixedEvenRowBound valuation k
      (globalMixedEvenTerminalTwistCount valuation support false) N ∧
    globalMixedEvenRowBound valuation k
      (globalMixedEvenTerminalTwistCount valuation support true) N

theorem globalMixedEvenLinePasses_sound
    {valuation : GlobalMixedEvenValuation}
    {k survivors endpoint N : Nat}
    (hLower : 5_000_000 <= N)
    (hEndpointLower : 5_000_000 <= endpoint)
    (hEndpoint : endpoint <= N)
    (hpass : globalMixedLinePasses
      (globalMixedEvenCheckerCoefficient100 valuation
        (globalMixedEvenRootCoefficient100
          (globalMixedEvenRootFactor valuation) k survivors)) endpoint = true) :
    globalMixedEvenRowBound valuation k survivors N := by
  let coefficient := globalMixedEvenRootCoefficient100
    (globalMixedEvenRootFactor valuation) k survivors
  have hchecked := globalMixedLinePasses_sound hLower hEndpointLower hEndpoint
    hpass
  cases valuation with
  | one =>
      simpa [globalMixedEvenRowBound, coefficient,
        globalMixedEvenCheckerCoefficient100] using hchecked
  | two =>
      simpa [globalMixedEvenRowBound, coefficient,
        globalMixedEvenCheckerCoefficient100] using hchecked
  | three =>
      simpa [globalMixedEvenRowBound, coefficient,
        globalMixedEvenCheckerCoefficient100] using
        (globalMixedEvenThree_row_of_checker hLower hchecked)

theorem globalMixedEvenTerminalValuationPasses_sound
    {valuation : GlobalMixedEvenValuation}
    {k endpoint N : Nat} {support : List Nat}
    (hLower : 5_000_000 <= N)
    (hEndpointLower : 5_000_000 <= endpoint)
    (hEndpoint : endpoint <= N)
    (hpass : globalMixedEvenTerminalValuationPasses
      valuation k endpoint support = true) :
    GlobalMixedEvenValuationRowsBound valuation k support N := by
  unfold globalMixedEvenTerminalValuationPasses at hpass
  dsimp only at hpass
  have hfour := Bool.and_eq_true_iff.mp hpass
  have hthree := Bool.and_eq_true_iff.mp hfour.1
  have htwo := Bool.and_eq_true_iff.mp hthree.1
  exact ⟨
    globalMixedEvenLinePasses_sound hLower hEndpointLower hEndpoint htwo.1,
    globalMixedEvenLinePasses_sound hLower hEndpointLower hEndpoint htwo.2,
    globalMixedEvenLinePasses_sound hLower hEndpointLower hEndpoint hthree.2,
    globalMixedEvenLinePasses_sound hLower hEndpointLower hEndpoint hfour.2⟩

theorem globalMixedEvenTerminalPrefixPasses_sound
    {k endpoint N : Nat} {support : List Nat}
    (hLower : 5_000_000 <= N)
    (hEndpointLower : 5_000_000 <= endpoint)
    (hEndpoint : endpoint <= N)
    (hpass : globalMixedEvenTerminalPrefixPasses
      k endpoint support = true) :
    GlobalMixedEvenValuationRowsBound .two k support N ∧
      GlobalMixedEvenValuationRowsBound .three k support N := by
  have hparts := Bool.and_eq_true_iff.mp hpass
  exact ⟨
    globalMixedEvenTerminalValuationPasses_sound
      hLower hEndpointLower hEndpoint hparts.1,
    globalMixedEvenTerminalValuationPasses_sound
      hLower hEndpointLower hEndpoint hparts.2⟩

theorem globalMixedEvenRootCoefficient100_mono
    {rootFactor k left right : Nat} (h : left <= right) :
    globalMixedEvenRootCoefficient100 rootFactor k left <=
      globalMixedEvenRootCoefficient100 rootFactor k right := by
  unfold globalMixedEvenRootCoefficient100
  gcongr

theorem globalMixedEvenRowBound_mono
    {valuation : GlobalMixedEvenValuation}
    {k left right N : Nat} (h : left <= right)
    (hrow : globalMixedEvenRowBound valuation k right N) :
    globalMixedEvenRowBound valuation k left N := by
  have hcoefficient := globalMixedEvenRootCoefficient100_mono
    (rootFactor := globalMixedEvenRootFactor valuation) (k := k) h
  cases valuation <;>
    simp only [globalMixedEvenRowBound] at hrow ⊢ <;>
    apply le_trans ?_ hrow <;>
    gcongr

#print axioms globalMixedEvenLinePasses_sound
#print axioms globalMixedEvenTerminalPrefixPasses_sound
#print axioms globalMixedEvenRowBound_mono

end Erdos848
