import Erdos848.TailTwentyMillionRootCheckerCore

namespace Erdos848

/-!
# Bounded-memory decomposition of the twenty-million root mask checker

The combined checker is convenient for small primes, but reducing all three
independent scans in one `rfl` proof retains a large term in the kernel.  These
definitions expose the same scans separately.  Generated heavy leaves certify
each component and use the definitional bridge below to assemble the original
public checker.
-/

def twentyMillionRootNormalPeriodPassesWith
    (lookup : Nat → List Nat) (p : Nat) : Bool :=
  let words := (lookup p).toArray
  let periodicPredicate := fun index =>
    twentyMillionRootArrayMaskTestBit words (index % p)
  globalMixedMaskAllRange
    (fun wordIndex =>
      words.getD wordIndex 0 ==
        twentyMillionRootPackWord periodicPredicate wordIndex)
    0 ((twentyMillionRootMaxBound + 63) / 64)

def twentyMillionRootNormalSquaresPassesWith
    (lookup : Nat → List Nat) (p : Nat) : Bool :=
  let words := (lookup p).toArray
  globalMixedMaskAllRange
    (fun root => decide (
      root % p = 0 ∨
      twentyMillionRootArrayMaskTestBit words
        ((root * root + (p - 1)) % p) = true))
    1 (p - 1)

def twentyMillionRootTwistPeriodPassesWith
    (normalLookup twistLookup : Nat → List Nat) (p : Nat) : Bool :=
  let twistWords := (twistLookup p).toArray
  let twistPredicate :=
    twentyMillionRootTwistMaskTestBit normalLookup p
  globalMixedMaskAllRange
    (fun wordIndex =>
      twistWords.getD wordIndex 0 ==
        twentyMillionRootPackWord twistPredicate wordIndex)
    0 ((twentyMillionRootMaxBound + 63) / 64)

theorem twentyMillionRootMaskPassesWith_eq_split
    (normalLookup twistLookup : Nat → List Nat) (p : Nat) :
    twentyMillionRootMaskPassesWith normalLookup twistLookup p =
      ((decide (0 < p) &&
          twentyMillionRootNormalPeriodPassesWith normalLookup p &&
          twentyMillionRootNormalSquaresPassesWith normalLookup p) &&
        (decide (0 < p) &&
          twentyMillionRootTwistPeriodPassesWith normalLookup twistLookup p)) := by
  rfl

theorem twentyMillionRootMaskPassesWith_of_split
    {normalLookup twistLookup : Nat → List Nat} {p : Nat}
    (hp : decide (0 < p) = true)
    (hnormalPeriod :
      twentyMillionRootNormalPeriodPassesWith normalLookup p = true)
    (hnormalSquares :
      twentyMillionRootNormalSquaresPassesWith normalLookup p = true)
    (htwistPeriod :
      twentyMillionRootTwistPeriodPassesWith normalLookup twistLookup p = true) :
    twentyMillionRootMaskPassesWith normalLookup twistLookup p = true := by
  rw [twentyMillionRootMaskPassesWith_eq_split, hp, hnormalPeriod,
    hnormalSquares, htwistPeriod]
  rfl

end Erdos848
