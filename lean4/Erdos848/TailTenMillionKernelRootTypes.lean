import Erdos848.TailTenMillionBudget
import Erdos848.TailGlobalMixedSupportCheckerCore
import Erdos848.TailGlobalMixedFeasiblePrefixes

namespace Erdos848

/-!
# Exact row data for the ten-million transformed-root certificate

The rows use the paper splits `78, 78, 70, 62`.  Both the ordinary
quadratic-residue mask and the five-twist mask are checked.  The envelopes
are upward decimal ceilings of the corrected smooth profile, including the
reciprocal-mass term proved in `TailTenMillionKernelRootReciprocal`.
-/

inductive TenMillionKernelRootRow where
  | v1
  | v1Twist
  | v2
  | v2Twist
  | v3
  | v3Twist
  | odd7
  | odd7Twist
  deriving DecidableEq, Repr

def TenMillionKernelRootRow.split : TenMillionKernelRootRow → Nat
  | .v1 | .v1Twist | .v2 | .v2Twist => 78
  | .v3 | .v3Twist => 70
  | .odd7 | .odd7Twist => 62

def TenMillionKernelRootRow.bound (row : TenMillionKernelRootRow) : Nat :=
  row.split ^ 2

def TenMillionKernelRootRow.cutoff : TenMillionKernelRootRow → Nat
  | _ => 7

def TenMillionKernelRootRow.rootFactor : TenMillionKernelRootRow → Nat
  | .v1 | .v1Twist | .odd7 | .odd7Twist => 1
  | .v2 | .v2Twist => 2
  | .v3 | .v3Twist => 4

def tenMillionKernelRootV1 : Rat := tenMillionRootV1
def tenMillionKernelRootV2 : Rat := tenMillionRootV2
def tenMillionKernelRootV3 : Rat := tenMillionRootV3
def tenMillionKernelRootOdd7 : Rat := tenMillionRootOdd7

def TenMillionKernelRootRow.envelope : TenMillionKernelRootRow → Rat
  | .v1 | .v1Twist => tenMillionKernelRootV1
  | .v2 | .v2Twist => tenMillionKernelRootV2
  | .v3 | .v3Twist => tenMillionKernelRootV3
  | .odd7 | .odd7Twist => tenMillionKernelRootOdd7

def TenMillionKernelRootRow.isTwist : TenMillionKernelRootRow → Bool
  | .v1Twist | .v2Twist | .v3Twist | .odd7Twist => true
  | _ => false

def TenMillionKernelRootRow.quotientAccepts
    (row : TenMillionKernelRootRow) (m : Nat) : Bool :=
  match row with
  | .v1 | .v1Twist => decide (m % 2 = 1)
  | .v2 | .v2Twist => decide (m % 4 = 1)
  | .v3 => decide (m % 8 = 1)
  | .v3Twist => decide (m % 8 = 5)
  | .odd7 | .odd7Twist => true

/-- Exact maxima of both nonzero mod-five cosets after intersecting every
feasible support prefix.  The support length includes the deliberately
dropped final extension prime. -/
def TenMillionKernelRootRow.survivorCeiling
    (row : TenMillionKernelRootRow) (supportLength : Nat) : Nat :=
  match row, supportLength with
  | .v1, 0 | .v1, 1 => 1217
  | .v1, 2 => 654
  | .v1, 3 => 342
  | .v1, 4 => 168
  | .v1, 5 => 80
  | .v1, 6 => 34
  | .v1Twist, 0 | .v1Twist, 1 => 1217
  | .v1Twist, 2 => 641
  | .v1Twist, 3 => 327
  | .v1Twist, 4 => 163
  | .v1Twist, 5 => 74
  | .v1Twist, 6 => 28
  | .v2, 0 | .v2, 1 => 609
  | .v2, 2 => 339
  | .v2, 3 => 181
  | .v2, 4 => 98
  | .v2, 5 => 51
  | .v2, 6 => 24
  | .v2Twist, 0 | .v2Twist, 1 => 609
  | .v2Twist, 2 => 339
  | .v2Twist, 3 => 172
  | .v2Twist, 4 => 89
  | .v2Twist, 5 => 41
  | .v2Twist, 6 => 13
  | .v3, 0 | .v3, 1 => 246
  | .v3, 2 => 152
  | .v3, 3 => 87
  | .v3, 4 => 52
  | .v3, 5 => 30
  | .v3, 6 => 17
  | .v3Twist, 0 | .v3Twist, 1 => 245
  | .v3Twist, 2 => 133
  | .v3Twist, 3 => 73
  | .v3Twist, 4 => 35
  | .v3Twist, 5 => 18
  | .v3Twist, 6 => 6
  | .odd7, 0 | .odd7, 1 => 1538
  | .odd7, 2 => 826
  | .odd7, 3 => 431
  | .odd7, 4 => 222
  | .odd7, 5 => 108
  | .odd7, 6 => 49
  | .odd7Twist, 0 | .odd7Twist, 1 => 1538
  | .odd7Twist, 2 => 827
  | .odd7Twist, 3 => 430
  | .odd7Twist, 4 => 210
  | .odd7Twist, 5 => 94
  | .odd7Twist, 6 => 36
  | _, _ => 0

def tenMillionKernelRootRows : List TenMillionKernelRootRow :=
  [.v1, .v1Twist, .v2, .v2Twist,
    .v3, .v3Twist, .odd7, .odd7Twist]

/-- The fixed finite support domain for the whole interval
`10_000_000 ≤ N < 20_000_000`.  As in the global mixed certificate, the
last support prime is kept only as an extension witness; the QR checker sees
the preceding `k - 1` primes. -/
def tenMillionKernelRootFeasiblePrefixes (k : Nat) : List (List Nat) :=
  if _hk : k = 0 then [[]]
  else
    feasibleSupportPrefixes 20_000_000 (k - 1) 1
      globalMixedKernelSupportPrimes

theorem tenMillionKernelRootRows_complete (row : TenMillionKernelRootRow) :
    row ∈ tenMillionKernelRootRows := by
  cases row <;> simp [tenMillionKernelRootRows]

def tenMillionKernelRootMaxBound : Nat := 6084

/-- The ordinary QR table only needs one complete period for every possible
support prime; actual survivor words still stop at `6084`. -/
def tenMillionKernelRootNormalMaskBound : Nat := 9161

theorem TenMillionKernelRootRow.bound_le_max
    (row : TenMillionKernelRootRow) :
    row.bound ≤ tenMillionKernelRootMaxBound := by
  cases row <;> norm_num [TenMillionKernelRootRow.bound,
    TenMillionKernelRootRow.split, tenMillionKernelRootMaxBound]

#print axioms TenMillionKernelRootRow.bound_le_max

end Erdos848
