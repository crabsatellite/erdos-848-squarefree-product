import Erdos848.Basic

/-!
# Rough square-divisor layer

This layer records the first non-squarefree-to-square-divisor bridge.  The
current definition is only the classical unpacking of `Squarefree`; future
middle-region work should refine it with size/range restrictions before it
becomes a genuine rough-prime ledger.
-/

namespace Erdos848

/-- Rough-square-divisor control needed to keep the Hall defect nonnegative. -/
def RoughSquareDivisorCertificate : Prop :=
  forall a b : Nat,
    Not (Squarefree (a * b + 1)) ->
    Exists fun p : Nat => 2 <= p /\ SquareDivides p (a * b + 1)

/-- Classical unpacking of `Not Squarefree` into an explicit square divisor. -/
theorem roughSquareDivisor : RoughSquareDivisorCertificate := by
  intro a b hNotSquarefree
  classical
  by_cases hExists : Exists fun p : Nat => 2 <= p /\ SquareDivides p (a * b + 1)
  case pos =>
    exact hExists
  case neg =>
    exfalso
    apply hNotSquarefree
    unfold Squarefree
    intro p hp hsq
    apply hExists
    exact Exists.intro p (And.intro hp hsq)

end Erdos848
