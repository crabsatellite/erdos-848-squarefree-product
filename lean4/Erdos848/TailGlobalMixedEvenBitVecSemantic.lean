import Erdos848.TailGlobalMixedEvenBitVecCheckerCore
import Erdos848.TailGlobalMixedSupportWordsSound
import Mathlib.Data.List.Fold

namespace Erdos848

/-!
# Semantic bridge for the generated `BitVec 64` rows

The generated leaves prove equalities between literal bit-vector rows.  This
module connects those rows to the natural-number population counter already
used by the survivor-finset soundness theorem.  All additions are shown to be
far below `2^64`; no modular-wrap assumption is left implicit.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem globalMixedBitVecIntersect_map_ofNat
    (left right : List Nat) :
    globalMixedBitVecIntersect
        (left.map (BitVec.ofNat 64)) (right.map (BitVec.ofNat 64)) =
      (globalMixedCoreIntersectWords left right).map (BitVec.ofNat 64) := by
  induction left generalizing right with
  | nil => simp [globalMixedBitVecIntersect, globalMixedCoreIntersectWords]
  | cons word words ih =>
      cases right with
      | nil => simp [globalMixedBitVecIntersect, globalMixedCoreIntersectWords]
      | cons other others =>
          simp [globalMixedBitVecIntersect, globalMixedCoreIntersectWords,
            BitVec.ofNat_and, ih]

theorem globalMixedCoreIntersectWords_length_le_right
    (left right : List Nat) :
    (globalMixedCoreIntersectWords left right).length <= right.length := by
  induction left generalizing right with
  | nil => simp [globalMixedCoreIntersectWords]
  | cons word words ih =>
      cases right with
      | nil => simp [globalMixedCoreIntersectWords]
      | cons other others =>
          simp only [globalMixedCoreIntersectWords, List.length_cons]
          exact Nat.succ_le_succ (ih others)

theorem globalMixedCoreCountWords_le_wordSize
    (words : List Nat)
    (hwords : forall word, word ∈ words -> word < 2 ^ 64) :
    globalMixedCoreCountWords words <= 64 * words.length := by
  induction words with
  | nil => simp [globalMixedCoreCountWords]
  | cons word words ih =>
      have hword : word < 2 ^ 64 := hwords word (by simp)
      have htail : forall value, value ∈ words -> value < 2 ^ 64 := by
        intro value hvalue
        exact hwords value (by simp [hvalue])
      have hpop := BitVec.toNat_cpop_le (BitVec.ofNat 64 word)
      have hrest := ih htail
      rw [globalMixedCoreCountWords,
        globalMixedCoreWordCount_eq_cpop_toNat hword]
      simpa [Nat.mul_succ, Nat.add_comm, Nat.add_left_comm, Nat.add_assoc]
        using Nat.add_le_add hpop hrest

theorem globalMixedCoreCountWords_eq_bitVecCount_toNat
    (words : List Nat)
    (hwords : forall word, word ∈ words -> word < 2 ^ 64)
    (hlength : words.length <= 1000) :
    globalMixedCoreCountWords words =
      (globalMixedBitVecCount (words.map (BitVec.ofNat 64))).toNat := by
  induction words with
  | nil => rfl
  | cons word words ih =>
      have hword : word < 2 ^ 64 := hwords word (by simp)
      have htail : forall value, value ∈ words -> value < 2 ^ 64 := by
        intro value hvalue
        exact hwords value (by simp [hvalue])
      have htailLength : words.length <= 1000 := by
        simp only [List.length_cons] at hlength
        omega
      have htailEq := ih htail htailLength
      have htailBound := globalMixedCoreCountWords_le_wordSize words htail
      have hpop := BitVec.toNat_cpop_le (BitVec.ofNat 64 word)
      have hsum :
          (BitVec.ofNat 64 word).cpop.toNat +
              (globalMixedBitVecCount
                (words.map (BitVec.ofNat 64))).toNat <
            2 ^ 64 := by
        rw [← htailEq]
        have hbound :
            (BitVec.ofNat 64 word).cpop.toNat +
                globalMixedCoreCountWords words <=
              64 * (word :: words).length := by
          simpa [Nat.mul_succ, Nat.add_comm, Nat.add_left_comm,
            Nat.add_assoc] using Nat.add_le_add hpop htailBound
        have hsmall := hbound.trans (Nat.mul_le_mul_left 64 hlength)
        norm_num at hsmall ⊢
        omega
      calc
        globalMixedCoreCountWords (word :: words) =
            globalMixedCoreWordCount word +
              globalMixedCoreCountWords words := rfl
        _ = (BitVec.ofNat 64 word).cpop.toNat +
              (globalMixedBitVecCount
                (words.map (BitVec.ofNat 64))).toNat := by
            rw [globalMixedCoreWordCount_eq_cpop_toNat hword, htailEq]
        _ = ((BitVec.ofNat 64 word).cpop +
              globalMixedBitVecCount
                (words.map (BitVec.ofNat 64))).toNat := by
            rw [BitVec.toNat_add, Nat.mod_eq_of_lt hsum]
        _ = (globalMixedBitVecCount
              ((word :: words).map (BitVec.ofNat 64))).toNat := rfl

theorem globalMixedCoreEvenRestrictedCount_eq_bitVec_toNat
    (supportWords valuationWords : List Nat)
    (hvaluation : forall word, word ∈ valuationWords -> word < 2 ^ 64)
    (hlength : valuationWords.length <= 1000) :
    globalMixedCoreEvenRestrictedCount supportWords valuationWords =
      (globalMixedBitVecRestrictedCount
        (supportWords.map (BitVec.ofNat 64))
        (valuationWords.map (BitVec.ofNat 64))).toNat := by
  unfold globalMixedCoreEvenRestrictedCount
  unfold globalMixedBitVecRestrictedCount
  rw [globalMixedBitVecIntersect_map_ofNat]
  apply globalMixedCoreCountWords_eq_bitVecCount_toNat
  · exact globalMixedCoreIntersectWords_lt supportWords valuationWords hvaluation
  · exact (globalMixedCoreIntersectWords_length_le_right
      supportWords valuationWords).trans hlength

theorem globalMixedBitVecIntersect_assoc
    (left middle right : List GlobalMixedWord) :
    globalMixedBitVecIntersect left
        (globalMixedBitVecIntersect middle right) =
      globalMixedBitVecIntersect
        (globalMixedBitVecIntersect left middle) right := by
  induction left generalizing middle right with
  | nil => simp [globalMixedBitVecIntersect]
  | cons word words ih =>
      cases middle with
      | nil => simp [globalMixedBitVecIntersect]
      | cons other others =>
          cases right with
          | nil => simp [globalMixedBitVecIntersect]
          | cons last lasts =>
              simp [globalMixedBitVecIntersect, ih, BitVec.and_assoc]

theorem globalMixedBitVecIntersect_comm
    (left right : List GlobalMixedWord) :
    globalMixedBitVecIntersect left right =
      globalMixedBitVecIntersect right left := by
  induction left generalizing right with
  | nil => cases right <;> simp [globalMixedBitVecIntersect]
  | cons word words ih =>
      cases right with
      | nil => simp [globalMixedBitVecIntersect]
      | cons other others =>
          simp [globalMixedBitVecIntersect, ih, BitVec.and_comm]

theorem globalMixedBitVecSupportWords_eq_map_core
    (lookup : Nat -> List Nat) (support cosetWords : List Nat) :
    globalMixedBitVecSupportWords lookup support cosetWords =
      (globalMixedCoreSupportWords lookup support cosetWords).map
        (BitVec.ofNat 64) := by
  letI : Std.Commutative globalMixedBitVecIntersect :=
    ⟨globalMixedBitVecIntersect_comm⟩
  letI : Std.Associative globalMixedBitVecIntersect :=
    ⟨fun left middle right =>
      (globalMixedBitVecIntersect_assoc left middle right).symm⟩
  unfold globalMixedBitVecSupportWords
  rw [← List.foldl_map
    (f := fun p => (lookup p).map (BitVec.ofNat 64))
    (g := fun current mask => globalMixedBitVecIntersect mask current)]
  have hflip :
      (fun current mask : List GlobalMixedWord =>
        globalMixedBitVecIntersect mask current) =
        globalMixedBitVecIntersect := by
    funext current mask
    exact globalMixedBitVecIntersect_comm mask current
  rw [hflip, List.foldl_eq_foldr, List.foldr_map]
  induction support with
  | nil => rfl
  | cons p support ih =>
      simp only [List.foldr_cons, globalMixedCoreSupportWords, List.map_cons]
      rw [ih]
      exact globalMixedBitVecIntersect_map_ofNat _ _

def globalMixedEmptyEvenBitVecRows : GlobalMixedEvenBitVecRows :=
  { normalFalseTwo := []
    normalTrueTwo := []
    twistFalseTwo := []
    twistTrueTwo := []
    normalFalseThree := []
    normalTrueThree := []
    twistFalseThree := []
    twistTrueThree := [] }

def GlobalMixedEvenBitVecRows.normalTwoWords
    (rows : GlobalMixedEvenBitVecRows) (squareCoset : Bool) :
    List GlobalMixedWord :=
  if squareCoset then rows.normalTrueTwo else rows.normalFalseTwo

def GlobalMixedEvenBitVecRows.twistTwoWords
    (rows : GlobalMixedEvenBitVecRows) (squareCoset : Bool) :
    List GlobalMixedWord :=
  if squareCoset then rows.twistTrueTwo else rows.twistFalseTwo

def GlobalMixedEvenBitVecRows.normalThreeWords
    (rows : GlobalMixedEvenBitVecRows) (squareCoset : Bool) :
    List GlobalMixedWord :=
  if squareCoset then rows.normalTrueThree else rows.normalFalseThree

def GlobalMixedEvenBitVecRows.twistThreeWords
    (rows : GlobalMixedEvenBitVecRows) (squareCoset : Bool) :
    List GlobalMixedWord :=
  if squareCoset then rows.twistTrueThree else rows.twistFalseThree

theorem globalMixedBitVecContinueWords_intersect
    (lookup : Nat -> List Nat) (suffix : List Nat)
    (words valuationWords : List GlobalMixedWord) :
    globalMixedBitVecContinueWords lookup suffix
        (globalMixedBitVecIntersect words valuationWords) =
      globalMixedBitVecIntersect
        (globalMixedBitVecContinueWords lookup suffix words)
        valuationWords := by
  induction suffix generalizing words with
  | nil => rfl
  | cons p suffix ih =>
      simp only [globalMixedBitVecContinueWords, List.foldl_cons]
      rw [globalMixedBitVecIntersect_assoc]
      exact ih _

theorem globalMixedBitVecContinueWords_support_append
    (lookup : Nat -> List Nat) (initial suffix cosetWords : List Nat) :
    globalMixedBitVecContinueWords lookup suffix
        (globalMixedBitVecSupportWords lookup initial cosetWords) =
      globalMixedBitVecSupportWords lookup (initial ++ suffix) cosetWords := by
  simp [globalMixedBitVecContinueWords, globalMixedBitVecSupportWords,
    List.foldl_append]

@[ext] theorem GlobalMixedEvenBitVecRows.ext
    {left right : GlobalMixedEvenBitVecRows}
    (hNormalFalseTwo : left.normalFalseTwo = right.normalFalseTwo)
    (hNormalTrueTwo : left.normalTrueTwo = right.normalTrueTwo)
    (hTwistFalseTwo : left.twistFalseTwo = right.twistFalseTwo)
    (hTwistTrueTwo : left.twistTrueTwo = right.twistTrueTwo)
    (hNormalFalseThree : left.normalFalseThree = right.normalFalseThree)
    (hNormalTrueThree : left.normalTrueThree = right.normalTrueThree)
    (hTwistFalseThree : left.twistFalseThree = right.twistFalseThree)
    (hTwistTrueThree : left.twistTrueThree = right.twistTrueThree) :
    left = right := by
  cases left
  cases right
  simp_all

theorem globalMixedBitVecContinueRows_restrictedRows_append
    (normalLookup twistLookup : Nat -> List Nat)
    (initial suffix : List Nat) :
    globalMixedBitVecContinueRows normalLookup twistLookup suffix
        (globalMixedBitVecRestrictedRows normalLookup twistLookup initial) =
      globalMixedBitVecRestrictedRows normalLookup twistLookup
        (initial ++ suffix) := by
  apply GlobalMixedEvenBitVecRows.ext <;>
    simp only [globalMixedBitVecContinueRows,
      globalMixedBitVecRestrictedRows]
  all_goals
    rw [globalMixedBitVecContinueWords_intersect,
      globalMixedBitVecContinueWords_support_append]

private theorem globalMixedBitVecFoldLookup_congr
    {leftLookup rightLookup : Nat -> List Nat}
    (support : List Nat)
    (hlookup : forall p, p ∈ support -> leftLookup p = rightLookup p)
    (words : List GlobalMixedWord) :
    support.foldl
        (fun current p => globalMixedBitVecIntersect
          ((leftLookup p).map (BitVec.ofNat 64)) current) words =
      support.foldl
        (fun current p => globalMixedBitVecIntersect
          ((rightLookup p).map (BitVec.ofNat 64)) current) words := by
  induction support generalizing words with
  | nil => rfl
  | cons p support ih =>
      simp only [List.foldl_cons]
      rw [hlookup p (by simp)]
      apply ih
      intro q hq
      exact hlookup q (by simp [hq])

theorem globalMixedBitVecSupportWords_congr_lookup
    {leftLookup rightLookup : Nat -> List Nat}
    (support cosetWords : List Nat)
    (hlookup : forall p, p ∈ support -> leftLookup p = rightLookup p) :
    globalMixedBitVecSupportWords leftLookup support cosetWords =
      globalMixedBitVecSupportWords rightLookup support cosetWords := by
  unfold globalMixedBitVecSupportWords
  exact globalMixedBitVecFoldLookup_congr support hlookup _

theorem globalMixedBitVecRestrictedRows_congr_lookup
    {normalLeft normalRight twistLeft twistRight : Nat -> List Nat}
    (support : List Nat)
    (hnormal : forall p, p ∈ support -> normalLeft p = normalRight p)
    (htwist : forall p, p ∈ support -> twistLeft p = twistRight p) :
    globalMixedBitVecRestrictedRows normalLeft twistLeft support =
      globalMixedBitVecRestrictedRows normalRight twistRight support := by
  apply GlobalMixedEvenBitVecRows.ext <;>
    simp only [globalMixedBitVecRestrictedRows]
  · rw [globalMixedBitVecSupportWords_congr_lookup support _ hnormal]
  · rw [globalMixedBitVecSupportWords_congr_lookup support _ hnormal]
  · rw [globalMixedBitVecSupportWords_congr_lookup support _ htwist]
  · rw [globalMixedBitVecSupportWords_congr_lookup support _ htwist]
  · rw [globalMixedBitVecSupportWords_congr_lookup support _ hnormal]
  · rw [globalMixedBitVecSupportWords_congr_lookup support _ hnormal]
  · rw [globalMixedBitVecSupportWords_congr_lookup support _ htwist]
  · rw [globalMixedBitVecSupportWords_congr_lookup support _ htwist]

#print axioms globalMixedCoreCountWords_eq_bitVecCount_toNat
#print axioms globalMixedCoreEvenRestrictedCount_eq_bitVec_toNat
#print axioms globalMixedBitVecContinueRows_restrictedRows_append
#print axioms globalMixedBitVecRestrictedRows_congr_lookup

end Erdos848
