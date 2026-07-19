import Erdos848.TailSupportProfileChecker

namespace Erdos848

/-!
# The `g = 5` transformed-quotient support core

If `5 ∣ pivot * point + 1` but `25 ∤ pivot * point + 1`, the transformed
quotient is the raw complementary quotient divided by five.  Consequently a
support prime `q` requires `5 * m` (not `m`) to be a square modulo `q`.
The raw quotient is at most `2401`, so this branch has `m ≤ 480`.

This file deliberately contains only the reducible predicates used by the
generated kernel certificates.  Keeping the numerical row proof out of this
module prevents an import cycle between certificate leaves and their final
assembly.
-/

def oddRootWordPointAccepts
    (support : List ℕ) (squareCoset : Bool) (m : ℕ) : Bool :=
  modFiveCosetAccepts squareCoset m &&
    support.all fun q =>
      wordMaskTestBit (GeneratedTailSupportCoverage.qrMaskWords q) (m - 1)

def oddRootFiveTwistSupportAccepts
    (support : List ℕ) (squareCoset : Bool) (m : ℕ) : Bool :=
  modFiveCosetAccepts squareCoset m &&
    support.all fun q =>
      wordMaskTestBit (GeneratedTailSupportCoverage.qrMaskWords q)
        (5 * m - 1)

def oddRootFiveTwistSurvivorCount
    (support : List ℕ) (squareCoset : Bool) : ℕ :=
  countNatRange (oddRootFiveTwistSupportAccepts support squareCoset) 1 480

def fiveMillionOddRootFiveTwistProfilePasses
    (bound : ℕ) (support : List ℕ) : Bool :=
  oddRootFiveTwistSurvivorCount support true ≤ bound &&
    oddRootFiveTwistSurvivorCount support false ≤ bound

lemma countNatRange_le_count
    (predicate : ℕ → Bool) (start : ℕ) :
    ∀ count, countNatRange predicate start count ≤ count := by
  intro count
  induction count generalizing start with
  | zero => simp [countNatRange]
  | succ count ih =>
      cases h : predicate start with
      | false =>
          simp only [countNatRange, h, Bool.false_eq_true, ↓reduceIte,
            zero_add]
          exact (ih (start + 1)).trans (Nat.le_succ count)
      | true =>
          simp only [countNatRange, h, ↓reduceIte]
          simpa [Nat.succ_eq_add_one, Nat.add_comm] using
            Nat.succ_le_succ (ih (start + 1))

lemma oddRootFiveTwistSurvivorCount_le_480
    (support : List ℕ) (squareCoset : Bool) :
    oddRootFiveTwistSurvivorCount support squareCoset ≤ 480 := by
  exact countNatRange_le_count _ _ _

end Erdos848
