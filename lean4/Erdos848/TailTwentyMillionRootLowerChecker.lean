import Erdos848.TailTwentyMillionRootProfileChecker

namespace Erdos848

/-!
# Isolated kernel checker for the twenty-million lower endpoint

This helper is kept outside the shared jump-profile checker so that changing
the finite lower-endpoint certificate cannot invalidate every prime-jump
module.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/-- Closed lower-endpoint expression with the quotient and its prime count
supplied by a kernel-checked finite witness. Keeping these inputs explicit
prevents the arithmetic checker from recomputing `Nat.primeCounting`. -/
def twentyMillionRootSmoothProfileLowerAt
    (row : TwentyMillionRootRow)
    (supportLength p primeCount : Nat) : Rat :=
  let N := twentyMillionLower
  let height := row.rootFactor * 2 ^ (supportLength + 1)
  let survivors := row.survivorCeiling supportLength
  6 * (((primeCount - Nat.primeCounting row.cutoff : Nat) : Rat) +
      height * survivors) / N +
    3 * height * (4 + (survivors : Rat) / 3026) *
      (1 / 25 + 2 / (N : Rat)) / p

theorem twentyMillionRootSmoothProfile_lower_eq_at
    (row : TwentyMillionRootRow)
    (supportLength p primeCount : Nat)
    (hp : twentyMillionLower / row.split = p)
    (hcount : Nat.primeCounting p = primeCount) :
    twentyMillionRootSmoothProfile row supportLength twentyMillionLower =
      twentyMillionRootSmoothProfileLowerAt
        row supportLength p primeCount := by
  simp [twentyMillionRootSmoothProfile,
    twentyMillionRootSmoothProfileLowerAt, hp, hcount]

#print axioms twentyMillionRootSmoothProfile_lower_eq_at

end Erdos848
