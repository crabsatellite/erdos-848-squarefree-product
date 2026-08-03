import Erdos848.TailGlobalMixedThreePivot
import Erdos848.TailFiveMillionSquareTailCore

namespace Erdos848

/-!
# Exact numerical budget for the three-pivot route

These constants separate the already finite `p = 3, 7` contribution, the
coarse contribution of at most three common primes in `(7, 51]`, and the main
term for two distinct primes above `7`.  The latter uses the kernel-proved
prime reciprocal-square envelope.  The remaining semantic work is isolated as
the diagonal count plus the endpoint term for distinct-prime intersections.
-/

def globalMixedThreePivotFinite7Envelope : Rat := 58 / 441

def globalMixedThreePivotCommonTail51Envelope : Rat :=
  1 / 11 ^ 2 + 1 / 13 ^ 2 + 1 / 17 ^ 2

def globalMixedThreePivotDistinctTailMainEnvelope : Rat :=
  3 * fiveMillionSquareTail7Envelope ^ 2

def globalMixedThreePivotBaseMainEnvelope : Rat :=
  2 / 25 *
    (globalMixedThreePivotFinite7Envelope +
      globalMixedThreePivotCommonTail51Envelope +
        globalMixedThreePivotDistinctTailMainEnvelope)

/-- Two base progressions cost at most `116` finite residue endpoints and six
common-prime endpoints in the coarse three-common-prime allocation. -/
def globalMixedThreePivotFiniteCommonEndpoint (N : Nat) : Rat :=
  122 / N

theorem globalMixedThreePivotBaseMainEnvelope_lt :
    globalMixedThreePivotBaseMainEnvelope < 12160 / 1000000 := by
  norm_num [globalMixedThreePivotBaseMainEnvelope,
    globalMixedThreePivotFinite7Envelope,
    globalMixedThreePivotCommonTail51Envelope,
    globalMixedThreePivotDistinctTailMainEnvelope,
    fiveMillionSquareTail7Envelope]

theorem globalMixedThreePivotBase_atFiveMillion_lt :
    globalMixedThreePivotBaseMainEnvelope +
        globalMixedThreePivotFiniteCommonEndpoint 5_000_000 <
      12185 / 1000000 := by
  norm_num [globalMixedThreePivotBaseMainEnvelope,
    globalMixedThreePivotFinite7Envelope,
    globalMixedThreePivotCommonTail51Envelope,
    globalMixedThreePivotDistinctTailMainEnvelope,
    globalMixedThreePivotFiniteCommonEndpoint,
    fiveMillionSquareTail7Envelope]

/-- At the global endpoint, a bound of `0.027815 N` for the diagonal together
with the distinct-prime endpoint term closes the Hall target. -/
theorem globalMixedThreePivot_endpoint_budget :
    globalMixedThreePivotBaseMainEnvelope +
        globalMixedThreePivotFiniteCommonEndpoint 5_000_000 +
          27815 / 1000000 <
      tailHallTarget 5_000_000 := by
  norm_num [globalMixedThreePivotBaseMainEnvelope,
    globalMixedThreePivotFinite7Envelope,
    globalMixedThreePivotCommonTail51Envelope,
    globalMixedThreePivotDistinctTailMainEnvelope,
    globalMixedThreePivotFiniteCommonEndpoint,
    fiveMillionSquareTail7Envelope, tailHallTarget]

#print axioms globalMixedThreePivotBaseMainEnvelope_lt
#print axioms globalMixedThreePivotBase_atFiveMillion_lt
#print axioms globalMixedThreePivot_endpoint_budget

end Erdos848
