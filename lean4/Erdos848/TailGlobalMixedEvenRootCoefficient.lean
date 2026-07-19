import Erdos848.TailGlobalMixedEvenSupportClass

namespace Erdos848

/-!
# Lightweight even-row root coefficient

This definition is shared by the actual high-count theorem and the generated
terminal checker.  Keeping it in a leaf module prevents the terminal soundness
chain from importing the full high-count dependency graph merely to unfold one
arithmetic expression.
-/

/-- `100` times the transformed-root numerator with an explicit two-adic
root factor. -/
def globalMixedEvenRootCoefficient100
    (rootFactor k survivors : Nat) : Nat :=
  (rootFactor * 2 ^ (k + 1)) * (100 * survivors + 441)

end Erdos848
