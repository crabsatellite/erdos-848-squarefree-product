import Erdos848.TailTwentyMillionArithmetic
import Erdos848.TailGlobalMixedSupportCheckerCore
import Erdos848.TailGlobalMixedFeasiblePrefixes

namespace Erdos848

/-!
# Exact row data for the twenty-million transformed-root certificate

The original exploratory producer used four independently optimized splits.
For the public kernel certificate we use the slightly more uniform choice
`76, 76, 70, 76`.  This keeps every QR word below `5776` bits and remains
strictly inside the terminal Hall budget after accounting for the rigorous
reciprocal-mass correction in `TailTwentyMillionRootReciprocal`.
-/

inductive TwentyMillionRootRow where
  | evenOne
  | evenOneTwist
  | evenTwo
  | evenTwoTwist
  | evenThree
  | evenThreeTwist
  | odd
  | oddTwist
  deriving DecidableEq, Repr

def TwentyMillionRootRow.split : TwentyMillionRootRow → Nat
  | .evenOne | .evenOneTwist
  | .evenTwo | .evenTwoTwist
  | .odd | .oddTwist => 76
  | .evenThree | .evenThreeTwist => 70

def TwentyMillionRootRow.bound (row : TwentyMillionRootRow) : Nat :=
  row.split ^ 2

def TwentyMillionRootRow.cutoff : TwentyMillionRootRow → Nat
  | _ => 19

def TwentyMillionRootRow.rootFactor : TwentyMillionRootRow → Nat
  | .evenOne | .evenOneTwist | .odd | .oddTwist => 1
  | .evenTwo | .evenTwoTwist => 2
  | .evenThree | .evenThreeTwist => 4

def TwentyMillionRootRow.envelope : TwentyMillionRootRow → Rat
  | .evenOne | .evenOneTwist => twentyMillionRootEvenOne
  | .evenTwo | .evenTwoTwist => twentyMillionRootEvenTwo
  | .evenThree | .evenThreeTwist => twentyMillionRootEvenThree
  | .odd | .oddTwist => twentyMillionRootOdd

def TwentyMillionRootRow.isTwist : TwentyMillionRootRow → Bool
  | .evenOneTwist | .evenTwoTwist | .evenThreeTwist | .oddTwist => true
  | _ => false

def TwentyMillionRootRow.quotientAccepts
    (row : TwentyMillionRootRow) (m : Nat) : Bool :=
  match row with
  | .evenOne | .evenOneTwist => decide (m % 2 = 1)
  | .evenTwo | .evenTwoTwist => decide (m % 4 = 1)
  | .evenThree => decide (m % 8 = 1)
  | .evenThreeTwist => decide (m % 8 = 5)
  | .odd | .oddTwist => true

/-- Exact maxima of both nonzero mod-five cosets after intersecting every
feasible support prefix.  The support length includes the deliberately
dropped final extension prime. -/
def TwentyMillionRootRow.survivorCeiling
    (row : TwentyMillionRootRow) (supportLength : Nat) : Nat :=
  match row, supportLength with
  | .evenOne, 0 | .evenOne, 1 => 1155
  | .evenOne, 2 => 623
  | .evenOne, 3 => 326
  | .evenOne, 4 => 171
  | .evenOne, 5 => 80
  | .evenOne, 6 => 38
  | .evenOne, 7 => 16
  | .evenOneTwist, 0 | .evenOneTwist, 1 => 1155
  | .evenOneTwist, 2 => 609
  | .evenOneTwist, 3 => 316
  | .evenOneTwist, 4 => 158
  | .evenOneTwist, 5 => 76
  | .evenOneTwist, 6 => 30
  | .evenOneTwist, 7 => 9
  | .evenTwo, 0 | .evenTwo, 1 => 578
  | .evenTwo, 2 => 324
  | .evenTwo, 3 => 177
  | .evenTwo, 4 => 98
  | .evenTwo, 5 => 50
  | .evenTwo, 6 => 26
  | .evenTwo, 7 => 14
  | .evenTwoTwist, 0 | .evenTwoTwist, 1 => 578
  | .evenTwoTwist, 2 => 323
  | .evenTwoTwist, 3 => 167
  | .evenTwoTwist, 4 => 89
  | .evenTwoTwist, 5 => 45
  | .evenTwoTwist, 6 => 16
  | .evenTwoTwist, 7 => 5
  | .evenThree, 0 | .evenThree, 1 => 246
  | .evenThree, 2 => 152
  | .evenThree, 3 => 87
  | .evenThree, 4 => 53
  | .evenThree, 5 => 32
  | .evenThree, 6 => 19
  | .evenThree, 7 => 12
  | .evenThreeTwist, 0 | .evenThreeTwist, 1 => 245
  | .evenThreeTwist, 2 => 139
  | .evenThreeTwist, 3 => 74
  | .evenThreeTwist, 4 => 39
  | .evenThreeTwist, 5 => 18
  | .evenThreeTwist, 6 => 7
  | .evenThreeTwist, 7 => 1
  | .odd, 0 | .odd, 1 => 2311
  | .odd, 2 => 1224
  | .odd, 3 => 638
  | .odd, 4 => 333
  | .odd, 5 => 158
  | .odd, 6 => 71
  | .odd, 7 => 28
  | .oddTwist, 0 | .oddTwist, 1 => 2311
  | .oddTwist, 2 => 1224
  | .oddTwist, 3 => 632
  | .oddTwist, 4 => 315
  | .oddTwist, 5 => 148
  | .oddTwist, 6 => 57
  | .oddTwist, 7 => 16
  | _, _ => 0

def twentyMillionRootRows : List TwentyMillionRootRow :=
  [.evenOne, .evenOneTwist, .evenTwo, .evenTwoTwist,
    .evenThree, .evenThreeTwist, .odd, .oddTwist]

/-- The fixed finite support domain for the whole interval
`20_000_000 ≤ N < 40_000_000`.  As in the global mixed certificate, the
last support prime is kept only as an extension witness; the QR checker sees
the preceding `k - 1` primes. -/
def twentyMillionRootFeasiblePrefixes (k : Nat) : List (List Nat) :=
  if _hk : k = 0 then [[]]
  else
    feasibleSupportPrefixes 40_000_000 (k - 1) 1
      globalMixedKernelSupportPrimes

theorem twentyMillionRootRows_complete (row : TwentyMillionRootRow) :
    row ∈ twentyMillionRootRows := by
  cases row <;> simp [twentyMillionRootRows]

def twentyMillionRootMaxBound : Nat := 5776

/-- The ordinary QR table only needs one complete period for every possible
support prime; actual survivor words still stop at `5776`. -/
def twentyMillionRootNormalMaskBound : Nat := 9161

theorem TwentyMillionRootRow.bound_le_max
    (row : TwentyMillionRootRow) :
    row.bound ≤ twentyMillionRootMaxBound := by
  cases row <;> norm_num [TwentyMillionRootRow.bound,
    TwentyMillionRootRow.split, twentyMillionRootMaxBound]

#print axioms TwentyMillionRootRow.bound_le_max

end Erdos848
