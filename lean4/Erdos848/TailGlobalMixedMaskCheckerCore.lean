import Mathlib.Data.Nat.Bits

namespace Erdos848

/-! Lightweight kernel checker for one local mixed QR mask group. -/

def globalMixedMaskAllRange
    (predicate : ℕ → Bool) (start : ℕ) : ℕ → Bool
  | 0 => true
  | count + 1 =>
      predicate start && globalMixedMaskAllRange predicate (start + 1) count

def globalMixedMaskTestBit (words : List ℕ) (index : ℕ) : Bool :=
  (words.getD (index / 64) 0).testBit (index % 64)

/-- Soundness checker for the ordinary table: periodicity plus the image of
every nonzero square root.  False positives are allowed, which is exactly what
an upper-bound sieve needs. -/
def globalMixedNormalMaskPassesWith
    (lookup : ℕ → List ℕ) (p : ℕ) : Bool :=
  decide (0 < p) &&
    globalMixedMaskAllRange
      (fun index =>
        globalMixedMaskTestBit (lookup p) index ==
          globalMixedMaskTestBit (lookup p) (index % p)) 0 3025 &&
    globalMixedMaskAllRange
      (fun root => decide (
        root % p = 0 ∨
        3025 ≤ (root * root + (p - 1)) % p ∨
        globalMixedMaskTestBit (lookup p)
          ((root * root + (p - 1)) % p) = true)) 1 (p - 1)

/-- The compressed five-twist word at `m` is the ordinary word at `5m`. -/
def globalMixedTwistMaskPassesWith
    (normalLookup twistLookup : ℕ → List ℕ) (p : ℕ) : Bool :=
  globalMixedMaskAllRange
    (fun index =>
      globalMixedMaskTestBit (twistLookup p) index ==
        globalMixedMaskTestBit (normalLookup p) (5 * (index + 1) - 1))
    0 605

def globalMixedMaskPassesWith
    (normalLookup twistLookup : ℕ → List ℕ) (p : ℕ) : Bool :=
  globalMixedNormalMaskPassesWith normalLookup p &&
    globalMixedTwistMaskPassesWith normalLookup twistLookup p

end Erdos848
