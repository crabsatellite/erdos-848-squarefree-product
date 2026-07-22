import Erdos848.TailTwentyMillionRootHighCount
import Erdos848.TailPrimeRankBoundaryChecker

namespace Erdos848

/-!
# Kernel checker for the twenty-million root profile

The exact high-point coefficient contains `⌊N / 25⌋`.  Replacing its
quotient by `N / 25` gives a slightly larger expression whose only upward
jumps occur when `N / row.split` becomes prime.  This is the expression
checked at every certified prime leaf by the generated jump certificate.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def twentyMillionRootProfileRows : List TwentyMillionRootRow :=
  [.evenOne, .evenTwo, .evenThree, .odd]

def twentyMillionRootSmoothProfileAt
    (row : TwentyMillionRootRow) (supportLength p primeCount : Nat) : Rat :=
  let N := row.split * p
  let height := row.rootFactor * 2 ^ (supportLength + 1)
  let survivors := row.survivorCeiling supportLength
  6 * (((primeCount - Nat.primeCounting row.cutoff : Nat) : Rat) +
      height * survivors) / N +
    3 * height * (4 + (survivors : Rat) / 3026) *
      (1 / 25 + 2 / (N : Rat)) / p

def twentyMillionRootSmoothProfile
    (row : TwentyMillionRootRow) (supportLength N : Nat) : Rat :=
  let p := N / row.split
  let height := row.rootFactor * 2 ^ (supportLength + 1)
  let survivors := row.survivorCeiling supportLength
  6 * (((Nat.primeCounting p -
        Nat.primeCounting row.cutoff : Nat) : Rat) +
      height * survivors) / N +
    3 * height * (4 + (survivors : Rat) / 3026) *
      (1 / 25 + 2 / (N : Rat)) / p

def twentyMillionRootActualProfile
    (row : TwentyMillionRootRow) (supportLength N : Nat) : Rat :=
  6 * (((Nat.primeCounting (N / row.split) -
      Nat.primeCounting row.cutoff : Nat) : Rat) +
    twentyMillionRootHighCoefficient row supportLength N) / N

def twentyMillionRootPrimeJumpPasses
    (p primeCount : Nat) : Bool :=
  twentyMillionRootProfileRows.all fun row =>
    if twentyMillionLower ≤ row.split * p ∧
        row.split * p < twentyMillionUpper then
      (List.range 8).all fun supportLength =>
        decide (twentyMillionRootSmoothProfileAt
          row supportLength p primeCount ≤ row.envelope)
    else
      true

theorem twentyMillionRootPrimeJumpPasses_sound
    {row : TwentyMillionRootRow} {supportLength p primeCount : Nat}
    (hpass : twentyMillionRootPrimeJumpPasses p primeCount = true)
    (hrow : row ∈ twentyMillionRootProfileRows)
    (hLength : supportLength < 8)
    (hLower : twentyMillionLower ≤ row.split * p)
    (hUpper : row.split * p < twentyMillionUpper) :
    twentyMillionRootSmoothProfileAt
        row supportLength p primeCount ≤ row.envelope := by
  have hrowPass :=
    (List.all_eq_true.mp hpass) row hrow
  simp only [hLower, hUpper, and_self, if_true] at hrowPass
  exact of_decide_eq_true
    ((List.all_eq_true.mp hrowPass) supportLength
      (List.mem_range.mpr hLength))

theorem twentyMillionRootProfileRows_complete_normal
    (row : TwentyMillionRootRow)
    (hrow : row = .evenOne ∨ row = .evenTwo ∨
      row = .evenThree ∨ row = .odd) :
    row ∈ twentyMillionRootProfileRows := by
  rcases hrow with rfl | rfl | rfl | rfl <;>
    simp [twentyMillionRootProfileRows]

#print axioms twentyMillionRootPrimeJumpPasses_sound
#print axioms twentyMillionRootProfileRows_complete_normal

end Erdos848
