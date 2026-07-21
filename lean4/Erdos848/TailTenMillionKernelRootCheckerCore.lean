import Erdos848.TailTenMillionKernelRootTypes
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

def tenMillionKernelRootBaseAccepts
    (row : TenMillionKernelRootRow) (squareCoset : Bool) (m : Nat) : Bool :=
  decide (m ≤ row.bound) &&
    row.quotientAccepts m &&
    modFiveCosetAccepts squareCoset m

/-- Constant-time word lookup for the compact residue tables. -/
def tenMillionKernelRootArrayMaskTestBit
    (words : Array Nat) (index : Nat) : Bool :=
  (words.getD (index / 64) 0).testBit (index % 64)

theorem tenMillionKernelRootArrayMaskTestBit_toArray
    (words : List Nat) (index : Nat) :
    tenMillionKernelRootArrayMaskTestBit words.toArray index =
      globalMixedMaskTestBit words index := by
  simp [tenMillionKernelRootArrayMaskTestBit, globalMixedMaskTestBit]

def tenMillionKernelRootBaseWordsPassesWith
    (baseWords : TenMillionKernelRootRow → Bool → List Nat)
    (row : TenMillionKernelRootRow) (squareCoset : Bool) : Bool :=
  globalMixedMaskAllRange
    (fun index =>
      globalMixedMaskTestBit (baseWords row squareCoset) index ==
        tenMillionKernelRootBaseAccepts row squareCoset (index + 1))
    0 tenMillionKernelRootMaxBound

/-- Query one compact `p`-bit residue table at an arbitrary periodic index. -/
def tenMillionKernelRootCompactMaskTestBit
    (lookup : Nat → List Nat) (p index : Nat) : Bool :=
  tenMillionKernelRootArrayMaskTestBit (lookup p).toArray (index % p)

/-- Pack one computed predicate into a kernel-native 64-bit word. -/
def tenMillionKernelRootPackWord
    (predicate : Nat → Bool) (wordIndex : Nat) : Nat :=
  (BitVec.ofFnLE fun bit : Fin 64 =>
    predicate (64 * wordIndex + bit.val)).toNat

/-- One derived bit in the five-twist row. -/
def tenMillionKernelRootTwistMaskTestBit
    (normalLookup : Nat → List Nat) (p index : Nat) : Bool :=
  let residue := (5 * (index + 1)) % p
  decide (residue ≠ 0) &&
    tenMillionKernelRootCompactMaskTestBit normalLookup p (residue - 1)

/-- The untrusted producer supplies only one `p`-bit period.  The kernel scans
the possible nonzero square roots once and checks that every square residue is
present.  False positives remain harmless for the upper-bound sieve. -/
def tenMillionKernelRootNormalMaskPassesWith
    (lookup : Nat → List Nat) (p : Nat) : Bool :=
  let words := (lookup p).toArray
  let periodicPredicate := fun index =>
    tenMillionKernelRootArrayMaskTestBit words (index % p)
  decide (0 < p) &&
    globalMixedMaskAllRange
      (fun wordIndex =>
        words.getD wordIndex 0 ==
          tenMillionKernelRootPackWord periodicPredicate wordIndex)
      0 ((tenMillionKernelRootMaxBound + 63) / 64) &&
    globalMixedMaskAllRange
      (fun root => decide (
        root % p = 0 ∨
        tenMillionKernelRootArrayMaskTestBit words
          ((root * root + (p - 1)) % p) = true))
      1 (p - 1)

/-- Twist tables are derived from the ordinary compact table, so the second
lookup is retained only to keep the public certificate interface stable. -/
def tenMillionKernelRootTwistMaskPassesWith
    (normalLookup twistLookup : Nat → List Nat) (p : Nat) : Bool :=
  let twistWords := (twistLookup p).toArray
  let twistPredicate :=
    tenMillionKernelRootTwistMaskTestBit normalLookup p
  decide (0 < p) &&
    globalMixedMaskAllRange
      (fun wordIndex =>
        twistWords.getD wordIndex 0 ==
          tenMillionKernelRootPackWord twistPredicate wordIndex)
      0 ((tenMillionKernelRootMaxBound + 63) / 64)

def tenMillionKernelRootMaskPassesWith
    (normalLookup twistLookup : Nat → List Nat) (p : Nat) : Bool :=
  tenMillionKernelRootNormalMaskPassesWith normalLookup p &&
    tenMillionKernelRootTwistMaskPassesWith normalLookup twistLookup p

/-- One derived QR bit in the normal or five-twist row. -/
def tenMillionKernelRootRowMaskTestBit
    (normalLookup : Nat → List Nat)
    (row : TenMillionKernelRootRow) (p index : Nat) : Bool :=
  if row.isTwist then
    tenMillionKernelRootTwistMaskTestBit normalLookup p index
  else
    tenMillionKernelRootCompactMaskTestBit normalLookup p index

/-- Materialize the 6084-bit operational mask only when a survivor leaf uses
the prime.  Its semantics are forced by construction from the compact table. -/
def tenMillionKernelRootPackWords
    (predicate : Nat → Bool) (bound : Nat) : List Nat :=
  (List.range ((bound + 63) / 64)).map
    (tenMillionKernelRootPackWord predicate)

theorem tenMillionKernelRootPackWord_testBit
    (predicate : Nat → Bool) (wordIndex bitIndex : Nat)
    (hbit : bitIndex < 64) :
    (tenMillionKernelRootPackWord predicate wordIndex).testBit bitIndex =
      predicate (64 * wordIndex + bitIndex) := by
  rw [tenMillionKernelRootPackWord, BitVec.testBit_toNat,
    BitVec.getLsbD_ofFnLE]
  simp [hbit]

theorem tenMillionKernelRootPackWords_testBit
    (predicate : Nat → Bool) (bound index : Nat)
    (hindex : index < bound) :
    wordMaskTestBit
        (tenMillionKernelRootPackWords predicate bound) index =
      predicate index := by
  have hwords : index / 64 < (bound + 63) / 64 := by
    omega
  have hlist :
      index / 64 <
        ((List.range ((bound + 63) / 64)).map
          (tenMillionKernelRootPackWord predicate)).length := by
    simpa using hwords
  unfold wordMaskTestBit
  rw [tenMillionKernelRootPackWords,
    List.getD_eq_getElem _ _ hlist]
  simp only [List.getElem_map, List.getElem_range]
  rw [tenMillionKernelRootPackWord_testBit _ _ _
    (Nat.mod_lt _ (by norm_num))]
  congr 1
  omega

def tenMillionKernelRootExpandedMaskWords
    (normalLookup : Nat → List Nat)
    (row : TenMillionKernelRootRow) (p : Nat) : List Nat :=
  tenMillionKernelRootPackWords
    (tenMillionKernelRootRowMaskTestBit normalLookup row p)
    tenMillionKernelRootMaxBound

theorem tenMillionKernelRootExpandedMaskWords_testBit
    (normalLookup : Nat → List Nat)
    (row : TenMillionKernelRootRow) (p index : Nat)
    (hindex : index < tenMillionKernelRootMaxBound) :
    wordMaskTestBit
        (tenMillionKernelRootExpandedMaskWords normalLookup row p) index =
      tenMillionKernelRootRowMaskTestBit normalLookup row p index := by
  exact tenMillionKernelRootPackWords_testBit _ _ _ hindex

def tenMillionKernelRootRowLookup
    (normalLookup twistLookup : Nat → List Nat)
    (row : TenMillionKernelRootRow) (p : Nat) : List Nat :=
  if row.isTwist then twistLookup p else normalLookup p

def tenMillionKernelRootCoreCount
    (normalLookup twistLookup : Nat → List Nat)
    (baseWords : TenMillionKernelRootRow → Bool → List Nat)
    (row : TenMillionKernelRootRow) (support : List Nat)
    (squareCoset : Bool) : Nat :=
  globalMixedCoreSurvivorCount
    (tenMillionKernelRootRowLookup normalLookup twistLookup row)
    (baseWords row squareCoset) support

def tenMillionKernelRootCoreRowPasses
    (normalLookup twistLookup : Nat → List Nat)
    (baseWords : TenMillionKernelRootRow → Bool → List Nat)
    (supportLength : Nat) (support : List Nat)
    (row : TenMillionKernelRootRow) : Bool :=
  decide (
    tenMillionKernelRootCoreCount
      normalLookup twistLookup baseWords row support false ≤
      row.survivorCeiling supportLength) &&
  decide (
    tenMillionKernelRootCoreCount
      normalLookup twistLookup baseWords row support true ≤
      row.survivorCeiling supportLength)

def tenMillionKernelRootCorePrefixPasses
    (normalLookup twistLookup : Nat → List Nat)
    (baseWords : TenMillionKernelRootRow → Bool → List Nat)
    (supportLength : Nat) (support : List Nat) : Bool :=
  tenMillionKernelRootRows.all
    (tenMillionKernelRootCoreRowPasses
      normalLookup twistLookup baseWords supportLength support)

theorem tenMillionKernelRootCorePrefixPasses_row
    {normalLookup twistLookup : Nat → List Nat}
    {baseWords : TenMillionKernelRootRow → Bool → List Nat}
    {supportLength : Nat} {support : List Nat}
    (hpass :
      tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup baseWords supportLength support = true)
    (row : TenMillionKernelRootRow) :
    tenMillionKernelRootCoreCount
        normalLookup twistLookup baseWords row support false ≤
      row.survivorCeiling supportLength ∧
      tenMillionKernelRootCoreCount
        normalLookup twistLookup baseWords row support true ≤
        row.survivorCeiling supportLength := by
  have hrow := (List.all_eq_true.mp hpass) row
    (tenMillionKernelRootRows_complete row)
  exact ⟨of_decide_eq_true (Bool.and_eq_true_iff.mp hrow).1,
    of_decide_eq_true (Bool.and_eq_true_iff.mp hrow).2⟩

#print axioms tenMillionKernelRootCorePrefixPasses_row

end Erdos848
