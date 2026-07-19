import Erdos848.TailGlobalMixedBitsetCard
import Erdos848.TailGlobalMixedMaskBridge
import Erdos848.TailFiveMillionReciprocal
import Erdos848.TailGlobalMixedPrimeCheckerDefs

namespace Erdos848

/-!
# Semantic survivor sets for the fixed-cut global mixed rows

The generated support checker counts population bits in recursively
intersected word lists.  This file turns those bits back into finite sets of
actual positive parameters, proves that their cardinalities are bounded by
the checker counts, and recovers the mathematical mod-five coset condition.

No ambient value of `N` is enumerated here.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem globalMixedIntersectWords_getD
    (left right : List ℕ) (wordIndex : ℕ) :
    (globalMixedIntersectWords left right).getD wordIndex 0 =
      left.getD wordIndex 0 &&& right.getD wordIndex 0 := by
  induction left generalizing right wordIndex with
  | nil => simp [globalMixedIntersectWords]
  | cons left lefts ih =>
      cases right with
      | nil => simp [globalMixedIntersectWords]
      | cons right rights =>
          cases wordIndex with
          | zero => simp [globalMixedIntersectWords]
          | succ wordIndex =>
              change (globalMixedIntersectWords lefts rights).getD wordIndex 0 =
                lefts.getD wordIndex 0 &&& rights.getD wordIndex 0
              exact ih rights wordIndex

theorem globalMixedIntersectWords_testBit
    (left right : List ℕ) (index : ℕ) :
    wordMaskTestBit (globalMixedIntersectWords left right) index =
      (wordMaskTestBit left index && wordMaskTestBit right index) := by
  unfold wordMaskTestBit
  rw [globalMixedIntersectWords_getD]
  exact Nat.testBit_land _ _ _

theorem globalMixedNormalSupportWords_testBit
    (support : List ℕ) (squareCoset : Bool) (index : ℕ) :
    wordMaskTestBit
        (globalMixedNormalSupportWords support squareCoset) index =
      ((support.all fun p =>
          wordMaskTestBit
            (GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords p)
            index) &&
        wordMaskTestBit
          (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords
            squareCoset) index) := by
  induction support with
  | nil => simp [globalMixedNormalSupportWords]
  | cons p support ih =>
      simp only [globalMixedNormalSupportWords, List.all_cons,
        globalMixedIntersectWords_testBit, ih]
      simp only [Bool.and_assoc]

theorem globalMixedTwistSupportWords_testBit
    (support : List ℕ) (squareCoset : Bool) (index : ℕ) :
    wordMaskTestBit
        (globalMixedTwistSupportWords support squareCoset) index =
      ((support.all fun p =>
          wordMaskTestBit
            (GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords p)
            index) &&
        wordMaskTestBit
          (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords
            squareCoset) index) := by
  induction support with
  | nil => simp [globalMixedTwistSupportWords]
  | cons p support ih =>
      simp only [globalMixedTwistSupportWords, List.all_cons,
        globalMixedIntersectWords_testBit, ih]
      simp only [Bool.and_assoc]

theorem globalMixedNormalCoset_certificate (squareCoset : Bool) :
    CosetWordMaskCertificate globalMixedNormalBound
      (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords squareCoset)
      squareCoset := by
  cases squareCoset <;> constructor <;> decide

theorem globalMixedTwistCoset_certificate (squareCoset : Bool) :
    CosetWordMaskCertificate globalMixedTwistBound
      (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords squareCoset)
      squareCoset := by
  cases squareCoset <;> constructor <;> decide

def globalMixedNormalSurvivorFinset
    (support : List ℕ) (squareCoset : Bool) : Finset ℕ :=
  (Finset.Ico 1 (globalMixedNormalBound + 1)).filter fun m =>
    wordMaskTestBit
      (globalMixedNormalSupportWords support squareCoset) (m - 1)

def globalMixedTwistSurvivorFinset
    (support : List ℕ) (squareCoset : Bool) : Finset ℕ :=
  (Finset.Ico 1 (globalMixedTwistBound + 1)).filter fun m =>
    wordMaskTestBit
      (globalMixedTwistSupportWords support squareCoset) (m - 1)

theorem globalMixedNormalSurvivorFinset_card_le
    (support : List ℕ) (squareCoset : Bool) :
    (globalMixedNormalSurvivorFinset support squareCoset).card ≤
      globalMixedNormalSurvivorCount support squareCoset := by
  apply card_le_globalMixedNormalSurvivorCount
  · intro m hm
    exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1
  · intro m hm
    exact (Finset.mem_filter.mp hm).2

theorem globalMixedTwistSurvivorFinset_card_le
    (support : List ℕ) (squareCoset : Bool) :
    (globalMixedTwistSurvivorFinset support squareCoset).card ≤
      globalMixedTwistSurvivorCount support squareCoset := by
  apply card_le_globalMixedTwistSurvivorCount
  · intro m hm
    exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1
  · intro m hm
    exact (Finset.mem_filter.mp hm).2

theorem globalMixedNormalSurvivorFinset_subset_coset
    (support : List ℕ) (squareCoset : Bool) :
    globalMixedNormalSurvivorFinset support squareCoset ⊆
      modFiveCosetBlock squareCoset 1 globalMixedNormalBound := by
  intro m hm
  have hparts := Finset.mem_filter.mp hm
  have hmIco := Finset.mem_Ico.mp hparts.1
  have hbit := hparts.2
  rw [globalMixedNormalSupportWords_testBit] at hbit
  have hcosetBit := (Bool.and_eq_true_iff.mp hbit).2
  apply Finset.mem_filter.mpr
  refine ⟨?_, ?_⟩
  · simpa [globalMixedNormalBound] using hmIco
  · have hcertificate :=
        (globalMixedNormalCoset_certificate squareCoset).testBit_eq
          (index := m - 1) (by
            dsimp [globalMixedNormalBound] at hmIco
            dsimp [globalMixedNormalBound]
            omega)
    calc
      modFiveCosetAccepts squareCoset m =
          wordMaskTestBit
            (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords
              squareCoset) (m - 1) := by
            symm
            simpa [show m - 1 + 1 = m by omega] using hcertificate
      _ = true := hcosetBit

theorem globalMixedTwistSurvivorFinset_subset_coset
    (support : List ℕ) (squareCoset : Bool) :
    globalMixedTwistSurvivorFinset support squareCoset ⊆
      modFiveCosetBlock squareCoset 1 globalMixedTwistBound := by
  intro m hm
  have hparts := Finset.mem_filter.mp hm
  have hmIco := Finset.mem_Ico.mp hparts.1
  have hbit := hparts.2
  rw [globalMixedTwistSupportWords_testBit] at hbit
  have hcosetBit := (Bool.and_eq_true_iff.mp hbit).2
  apply Finset.mem_filter.mpr
  refine ⟨?_, ?_⟩
  · simpa [globalMixedTwistBound] using hmIco
  · have hcertificate :=
        (globalMixedTwistCoset_certificate squareCoset).testBit_eq
          (index := m - 1) (by
            dsimp [globalMixedTwistBound] at hmIco
            dsimp [globalMixedTwistBound]
            omega)
    calc
      modFiveCosetAccepts squareCoset m =
          wordMaskTestBit
            (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords
              squareCoset) (m - 1) := by
            symm
            simpa [show m - 1 + 1 = m by omega] using hcertificate
      _ = true := hcosetBit

#print axioms globalMixedNormalSupportWords_testBit
#print axioms globalMixedTwistSupportWords_testBit
#print axioms globalMixedNormalSurvivorFinset_card_le
#print axioms globalMixedTwistSurvivorFinset_card_le
#print axioms globalMixedNormalSurvivorFinset_subset_coset
#print axioms globalMixedTwistSurvivorFinset_subset_coset

end Erdos848
