import Erdos848.TailTwentyMillionRootTypes
import Erdos848.TailGlobalMixedMaskCheckerCore
import Batteries.Data.BitVec.Lemmas
import Mathlib.Data.List.GetD

namespace Erdos848

/-!
# Lightweight checker core for the twenty-million root profile

Generated modules supply QR words and the eight fixed
row/coset words.  This file contains only small generic computations, so the
untrusted producer never contributes a theorem.
-/

def twentyMillionRootBaseAccepts
    (row : TwentyMillionRootRow) (squareCoset : Bool) (m : Nat) : Bool :=
  decide (m ≤ row.bound) &&
    row.quotientAccepts m &&
    modFiveCosetAccepts squareCoset m

/-- Constant-time word lookup for the compact residue tables. -/
def twentyMillionRootArrayMaskTestBit
    (words : Array Nat) (index : Nat) : Bool :=
  (words.getD (index / 64) 0).testBit (index % 64)

theorem twentyMillionRootArrayMaskTestBit_toArray
    (words : List Nat) (index : Nat) :
    twentyMillionRootArrayMaskTestBit words.toArray index =
      globalMixedMaskTestBit words index := by
  simp [twentyMillionRootArrayMaskTestBit, globalMixedMaskTestBit]

def twentyMillionRootBaseWordsPassesWith
    (baseWords : TwentyMillionRootRow → Bool → List Nat)
    (row : TwentyMillionRootRow) (squareCoset : Bool) : Bool :=
  globalMixedMaskAllRange
    (fun index =>
      globalMixedMaskTestBit (baseWords row squareCoset) index ==
        twentyMillionRootBaseAccepts row squareCoset (index + 1))
    0 twentyMillionRootMaxBound

/-- Query one compact `p`-bit residue table at an arbitrary periodic index. -/
def twentyMillionRootCompactMaskTestBit
    (lookup : Nat → List Nat) (p index : Nat) : Bool :=
  twentyMillionRootArrayMaskTestBit (lookup p).toArray (index % p)

/-- Pack one computed predicate into a kernel-native 64-bit word. -/
def twentyMillionRootPackWord
    (predicate : Nat → Bool) (wordIndex : Nat) : Nat :=
  (BitVec.ofFnLE fun bit : Fin 64 =>
    predicate (64 * wordIndex + bit.val)).toNat

/-- One derived bit in the five-twist row. -/
def twentyMillionRootTwistMaskTestBit
    (normalLookup : Nat → List Nat) (p index : Nat) : Bool :=
  let residue := (5 * (index + 1)) % p
  decide (residue ≠ 0) &&
    twentyMillionRootCompactMaskTestBit normalLookup p (residue - 1)

/-- The untrusted producer supplies only one `p`-bit period.  The kernel scans
the possible nonzero square roots once and checks that every square residue is
present.  False positives remain harmless for the upper-bound sieve. -/
def twentyMillionRootNormalMaskPassesWith
    (lookup : Nat → List Nat) (p : Nat) : Bool :=
  let words := (lookup p).toArray
  let periodicPredicate := fun index =>
    twentyMillionRootArrayMaskTestBit words (index % p)
  decide (0 < p) &&
    globalMixedMaskAllRange
      (fun wordIndex =>
        words.getD wordIndex 0 ==
          twentyMillionRootPackWord periodicPredicate wordIndex)
      0 ((twentyMillionRootMaxBound + 63) / 64) &&
    globalMixedMaskAllRange
      (fun root => decide (
        root % p = 0 ∨
        twentyMillionRootArrayMaskTestBit words
          ((root * root + (p - 1)) % p) = true))
      1 (p - 1)

/-- Twist tables are derived from the ordinary compact table, so the second
lookup is retained only to keep the public certificate interface stable. -/
def twentyMillionRootTwistMaskPassesWith
    (normalLookup twistLookup : Nat → List Nat) (p : Nat) : Bool :=
  let twistWords := (twistLookup p).toArray
  let twistPredicate :=
    twentyMillionRootTwistMaskTestBit normalLookup p
  decide (0 < p) &&
    globalMixedMaskAllRange
      (fun wordIndex =>
        twistWords.getD wordIndex 0 ==
          twentyMillionRootPackWord twistPredicate wordIndex)
      0 ((twentyMillionRootMaxBound + 63) / 64)

def twentyMillionRootMaskPassesWith
    (normalLookup twistLookup : Nat → List Nat) (p : Nat) : Bool :=
  twentyMillionRootNormalMaskPassesWith normalLookup p &&
    twentyMillionRootTwistMaskPassesWith normalLookup twistLookup p

/-- One derived QR bit in the normal or five-twist row. -/
def twentyMillionRootRowMaskTestBit
    (normalLookup : Nat → List Nat)
    (row : TwentyMillionRootRow) (p index : Nat) : Bool :=
  if row.isTwist then
    twentyMillionRootTwistMaskTestBit normalLookup p index
  else
    twentyMillionRootCompactMaskTestBit normalLookup p index

/-- Materialize the 5776-bit operational mask only when a survivor leaf uses
the prime.  Its semantics are forced by construction from the compact table. -/
def twentyMillionRootPackWords
    (predicate : Nat → Bool) (bound : Nat) : List Nat :=
  (List.range ((bound + 63) / 64)).map
    (twentyMillionRootPackWord predicate)

theorem twentyMillionRootPackWord_testBit
    (predicate : Nat → Bool) (wordIndex bitIndex : Nat)
    (hbit : bitIndex < 64) :
    (twentyMillionRootPackWord predicate wordIndex).testBit bitIndex =
      predicate (64 * wordIndex + bitIndex) := by
  rw [twentyMillionRootPackWord, BitVec.testBit_toNat,
    BitVec.getLsbD_ofFnLE]
  simp [hbit]

theorem twentyMillionRootPackWords_testBit
    (predicate : Nat → Bool) (bound index : Nat)
    (hindex : index < bound) :
    wordMaskTestBit
        (twentyMillionRootPackWords predicate bound) index =
      predicate index := by
  have hwords : index / 64 < (bound + 63) / 64 := by
    omega
  have hlist :
      index / 64 <
        ((List.range ((bound + 63) / 64)).map
          (twentyMillionRootPackWord predicate)).length := by
    simpa using hwords
  unfold wordMaskTestBit
  rw [twentyMillionRootPackWords,
    List.getD_eq_getElem _ _ hlist]
  simp only [List.getElem_map, List.getElem_range]
  rw [twentyMillionRootPackWord_testBit _ _ _
    (Nat.mod_lt _ (by norm_num))]
  congr 1
  omega

def twentyMillionRootExpandedMaskWords
    (normalLookup : Nat → List Nat)
    (row : TwentyMillionRootRow) (p : Nat) : List Nat :=
  twentyMillionRootPackWords
    (twentyMillionRootRowMaskTestBit normalLookup row p)
    twentyMillionRootMaxBound

theorem twentyMillionRootExpandedMaskWords_testBit
    (normalLookup : Nat → List Nat)
    (row : TwentyMillionRootRow) (p index : Nat)
    (hindex : index < twentyMillionRootMaxBound) :
    wordMaskTestBit
        (twentyMillionRootExpandedMaskWords normalLookup row p) index =
      twentyMillionRootRowMaskTestBit normalLookup row p index := by
  exact twentyMillionRootPackWords_testBit _ _ _ hindex

def twentyMillionRootRowLookup
    (normalLookup twistLookup : Nat → List Nat)
    (row : TwentyMillionRootRow) (p : Nat) : List Nat :=
  if row.isTwist then twistLookup p else normalLookup p

def twentyMillionRootCoreCount
    (normalLookup twistLookup : Nat → List Nat)
    (baseWords : TwentyMillionRootRow → Bool → List Nat)
    (row : TwentyMillionRootRow) (support : List Nat)
    (squareCoset : Bool) : Nat :=
  globalMixedCoreSurvivorCount
    (twentyMillionRootRowLookup normalLookup twistLookup row)
    (baseWords row squareCoset) support

def twentyMillionRootCoreRowPasses
    (normalLookup twistLookup : Nat → List Nat)
    (baseWords : TwentyMillionRootRow → Bool → List Nat)
    (supportLength : Nat) (support : List Nat)
    (row : TwentyMillionRootRow) : Bool :=
  decide (
    twentyMillionRootCoreCount
      normalLookup twistLookup baseWords row support false ≤
      row.survivorCeiling supportLength) &&
  decide (
    twentyMillionRootCoreCount
      normalLookup twistLookup baseWords row support true ≤
      row.survivorCeiling supportLength)

def twentyMillionRootCorePrefixPasses
    (normalLookup twistLookup : Nat → List Nat)
    (baseWords : TwentyMillionRootRow → Bool → List Nat)
    (supportLength : Nat) (support : List Nat) : Bool :=
  twentyMillionRootRows.all
    (twentyMillionRootCoreRowPasses
      normalLookup twistLookup baseWords supportLength support)

theorem twentyMillionRootCorePrefixPasses_row
    {normalLookup twistLookup : Nat → List Nat}
    {baseWords : TwentyMillionRootRow → Bool → List Nat}
    {supportLength : Nat} {support : List Nat}
    (hpass :
      twentyMillionRootCorePrefixPasses
        normalLookup twistLookup baseWords supportLength support = true)
    (row : TwentyMillionRootRow) :
    twentyMillionRootCoreCount
        normalLookup twistLookup baseWords row support false ≤
      row.survivorCeiling supportLength ∧
      twentyMillionRootCoreCount
        normalLookup twistLookup baseWords row support true ≤
        row.survivorCeiling supportLength := by
  have hrow := (List.all_eq_true.mp hpass) row
    (twentyMillionRootRows_complete row)
  exact ⟨of_decide_eq_true (Bool.and_eq_true_iff.mp hrow).1,
    of_decide_eq_true (Bool.and_eq_true_iff.mp hrow).2⟩

#print axioms twentyMillionRootCorePrefixPasses_row

end Erdos848
