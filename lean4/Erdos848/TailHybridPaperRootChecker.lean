import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.TailGlobalMixedBitsetCard
import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.TailSupportEnumeration
import Erdos848.TailTwentyMillionRootCheckerCore

namespace Erdos848

/-!
# Prunable actual-support root checker for the paper blocks

The untrusted producer supplies word masks and closed Boolean certificates.
The recursive checker follows the same complete support enumeration as
`feasibleSupportPrefixes`, but it stops a whole subtree as soon as the
current QR intersection already has at most the permitted number of bits.
Further intersections can only remove bits.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def hybridPaperRootSupportWords
    (lookup : Nat → List Nat) : List Nat → List Nat → List Nat
  | [], words => words
  | p :: support, words =>
      hybridPaperRootSupportWords lookup support
        (globalMixedCoreIntersectWords (lookup p) words)

/--
Short-circuiting comparison for 64-bit mask words.  When a QR node is over
budget, evaluation stops at the first word that proves it, so the unevaluated
tail of a pending intersection is never materialized.
-/
def hybridPaperCoreCountWordsWithin : Nat → List Nat → Bool
  | _, [] => true
  | budget, word :: words =>
      let count := globalMixedCoreWordCount word
      if count ≤ budget then
        hybridPaperCoreCountWordsWithin (budget - count) words
      else
        false

theorem hybridPaperCoreCountWordsWithin_eq_true_iff
    (budget : Nat) (words : List Nat) :
    hybridPaperCoreCountWordsWithin budget words = true ↔
      globalMixedCoreCountWords words ≤ budget := by
  induction words generalizing budget with
  | nil =>
      simp [hybridPaperCoreCountWordsWithin,
        globalMixedCoreCountWords]
  | cons word words ih =>
      simp only [hybridPaperCoreCountWordsWithin,
        globalMixedCoreCountWords]
      by_cases hword : globalMixedCoreWordCount word ≤ budget
      · simp [hword, ih]
        omega
      · simp [hword]
        omega

def hybridPaperRootScanPasses
    (lookup : Nat → List Nat) (target bound : Nat) :
    Nat → Nat → List Nat → List Nat → Bool
  | 0, product, p :: _, words =>
      if bound < product * p then true
      else hybridPaperCoreCountWordsWithin target words
  | 0, _, [], _ => true
  | need + 1, product, p :: primes, words =>
      let least := product * ((p :: primes).take (need + 2)).prod
      if bound < least then true
      else if hybridPaperCoreCountWordsWithin target words then true
      else
        hybridPaperRootScanPasses lookup target bound need
            (product * p) primes
            (globalMixedCoreIntersectWords (lookup p) words) &&
          hybridPaperRootScanPasses lookup target bound (need + 1)
            product primes words
  | _ + 1, _, [], _ => true

structure FullWordMaskCertificate (M : Nat) (words : List Nat) where
  checked :
    allNatRange (fun index => wordMaskTestBit words index) 0 M = true

/-!
Materialize each lookup result as an array once per prime.  Keeping this
sharing explicit is important for generated tables: the word-period check
queries the same 245-word mask 15,625 times while packing its expected words.
-/
def squareWordMaskTableWordPeriodPasses
    (M : Nat) (primes : List Nat)
    (lookup : Nat → List Nat) : Bool :=
  primes.all fun p =>
    let words := (lookup p).toArray
    allNatRange
      (fun wordIndex =>
        words.getD wordIndex 0 ==
          twentyMillionRootPackWord
            (fun index =>
              decide (index < M) &&
                twentyMillionRootArrayMaskTestBit
                  words (index % p))
            wordIndex)
      0 ((M + 63) / 64)

structure SquareWordMaskTableCertificate
    (M : Nat) (primes : List Nat) (lookup : Nat → List Nat) where
  positiveChecked :
    primes.all (fun p => decide (0 < p)) = true
  wordPeriodChecked :
    squareWordMaskTableWordPeriodPasses
      M primes lookup = true
  squareChecked :
    primes.all (fun p =>
      allNatRange
        (fun root => decide (
          root % p = 0 ∨
          M ≤ (root * root + (p - 1)) % p ∨
          wordMaskTestBit (lookup p)
            ((root * root + (p - 1)) % p) = true))
        1 (p - 1)) = true

theorem SquareWordMaskTableCertificate.entry
    {M p : Nat} {primes : List Nat} {lookup : Nat → List Nat}
    (certificate :
      SquareWordMaskTableCertificate M primes lookup)
    (hp : p ∈ primes) :
    SquareWordMaskCertificate M p (lookup p) := by
  refine ⟨?_, ?_, ?_⟩
  · exact of_decide_eq_true
      ((List.all_eq_true.mp certificate.positiveChecked) p hp)
  · have hperiod := certificate.wordPeriodChecked
    unfold squareWordMaskTableWordPeriodPasses at hperiod
    have hwords :=
      (List.all_eq_true.mp hperiod) p hp
    apply (allNatRange_eq_true_iff _ _ _).mpr
    intro index _hindexLower hindex
    have hwordIndex : index / 64 < (M + 63) / 64 := by
      omega
    have hword := (allNatRange_eq_true_iff _ _ _).mp hwords
      (index / 64) (by omega) (by simpa using hwordIndex)
    have hwordEq := beq_iff_eq.mp hword
    have hindexDecomp :
        64 * (index / 64) + index % 64 = index := by
      omega
    have harray :
        twentyMillionRootArrayMaskTestBit
            (lookup p).toArray index =
          twentyMillionRootArrayMaskTestBit
            (lookup p).toArray (index % p) := by
      unfold twentyMillionRootArrayMaskTestBit
      rw [hwordEq, twentyMillionRootPackWord_testBit _ _ _
        (Nat.mod_lt _ (by norm_num)), hindexDecomp]
      have hindexM : index < M := by omega
      simp [hindexM, twentyMillionRootArrayMaskTestBit]
    exact beq_iff_eq.mpr (by
      simpa [twentyMillionRootArrayMaskTestBit_toArray,
        globalMixedMaskTestBit, wordMaskTestBit] using harray)
  · exact (List.all_eq_true.mp certificate.squareChecked) p hp

theorem FullWordMaskCertificate.testBit_eq_true
    {M index : Nat} {words : List Nat}
    (certificate : FullWordMaskCertificate M words)
    (hindex : index < M) :
    wordMaskTestBit words index = true := by
  exact (allNatRange_eq_true_iff _ _ _).mp certificate.checked
    index (by omega) (by omega)

theorem globalMixedBitPairs_intersect_subset_right
    (left right : List Nat) :
    globalMixedBitPairs (globalMixedCoreIntersectWords left right) ⊆
      globalMixedBitPairs right := by
  have hintersectGetD :
      ∀ wordIndex,
        (globalMixedCoreIntersectWords left right).getD wordIndex 0 =
          left.getD wordIndex 0 &&& right.getD wordIndex 0 := by
    intro wordIndex
    induction left generalizing right wordIndex with
    | nil => simp [globalMixedCoreIntersectWords]
    | cons left lefts ih =>
        cases right with
        | nil => simp [globalMixedCoreIntersectWords]
        | cons right rights =>
            cases wordIndex with
            | zero => simp [globalMixedCoreIntersectWords]
            | succ wordIndex =>
                change
                  (globalMixedCoreIntersectWords lefts rights).getD
                      wordIndex 0 =
                    lefts.getD wordIndex 0 &&& rights.getD wordIndex 0
                exact ih rights wordIndex
  intro pair hpair
  have hparts := Finset.mem_filter.mp hpair
  have hindices := Finset.mem_product.mp hparts.1
  have hword :
      pair.1 < (globalMixedCoreIntersectWords left right).length :=
    Finset.mem_range.mp hindices.1
  have hrightWord : pair.1 < right.length :=
    hword.trans_le (globalMixedCoreIntersectWords_length_le_right left right)
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_product.mpr
    ⟨Finset.mem_range.mpr hrightWord, hindices.2⟩, ?_⟩
  rw [hintersectGetD pair.1] at hparts
  rw [Nat.testBit_land] at hparts
  exact Bool.and_eq_true_iff.mp hparts.2 |>.2

theorem globalMixedCoreCountWords_intersect_le_right
    (left right : List Nat)
    (hright : ∀ word ∈ right, word < 2 ^ 64) :
    globalMixedCoreCountWords
        (globalMixedCoreIntersectWords left right) ≤
      globalMixedCoreCountWords right := by
  have hintersect :
      ∀ word ∈ globalMixedCoreIntersectWords left right, word < 2 ^ 64 :=
    globalMixedCoreIntersectWords_lt left right hright
  rw [globalMixedCoreCountWords_eq_map_bits_count _ hintersect,
    ← globalMixedCountWords_eq_map_bits_count]
  rw [globalMixedCoreCountWords_eq_map_bits_count _ hright,
    ← globalMixedCountWords_eq_map_bits_count]
  rw [← globalMixedBitPairs_card_eq_countWords _ hintersect,
    ← globalMixedBitPairs_card_eq_countWords _ hright]
  exact Finset.card_le_card
    (globalMixedBitPairs_intersect_subset_right left right)

theorem hybridPaperRootSupportWords_count_le
    (lookup : Nat → List Nat) (support words : List Nat)
    (hwords : ∀ word ∈ words, word < 2 ^ 64) :
    globalMixedCoreCountWords
        (hybridPaperRootSupportWords lookup support words) ≤
      globalMixedCoreCountWords words := by
  induction support generalizing words with
  | nil => exact le_rfl
  | cons p support ih =>
      simp only [hybridPaperRootSupportWords]
      have hintersect :
          ∀ word ∈ globalMixedCoreIntersectWords (lookup p) words,
            word < 2 ^ 64 :=
        globalMixedCoreIntersectWords_lt (lookup p) words hwords
      exact (ih _ hintersect).trans
        (globalMixedCoreCountWords_intersect_le_right
          (lookup p) words hwords)

theorem hybridPaperRootScanPasses_sound
    (lookup : Nat → List Nat) (target bound need product : Nat)
    (candidates words : List Nat)
    (hwords : ∀ word ∈ words, word < 2 ^ 64)
    (hpass :
      hybridPaperRootScanPasses lookup target bound need product
        candidates words = true) :
    ∀ supportPrefix ∈
        feasibleSupportPrefixes bound need product candidates,
      globalMixedCoreCountWords
          (hybridPaperRootSupportWords lookup supportPrefix words) ≤
        target := by
  induction candidates generalizing need product words with
  | nil =>
      intro supportPrefix hsupport
      cases need <;>
        simp [feasibleSupportPrefixes] at hsupport
  | cons p candidates ih =>
      by_cases hcount : globalMixedCoreCountWords words ≤ target
      · intro supportPrefix hsupport
        exact (hybridPaperRootSupportWords_count_le
          lookup supportPrefix words hwords).trans hcount
      · cases need with
        | zero =>
            have hcountCheck :
                hybridPaperCoreCountWordsWithin target words = false := by
              apply Bool.eq_false_iff.mpr
              intro htrue
              exact hcount <|
                (hybridPaperCoreCountWordsWithin_eq_true_iff
                  target words).mp htrue
            have hlarge : bound < product * p := by
              by_contra hnot
              simp [hybridPaperRootScanPasses, hnot,
                hcountCheck] at hpass
            intro supportPrefix hsupport
            simp [feasibleSupportPrefixes, show ¬ product * p ≤ bound by omega]
              at hsupport
        | succ need =>
            have hpass' :
                (if bound <
                    product * ((p :: candidates).take (need + 2)).prod
                then true
                else if hybridPaperCoreCountWordsWithin target words then
                  true
                else
                    hybridPaperRootScanPasses lookup target bound need
                        (product * p) candidates
                        (globalMixedCoreIntersectWords (lookup p) words) &&
                      hybridPaperRootScanPasses lookup target bound
                        (need + 1) product candidates words) = true := by
              exact hpass
            by_cases hpruned :
                bound < product * ((p :: candidates).take (need + 2)).prod
            · intro supportPrefix hsupport
              change
                supportPrefix ∈
                  (if bound <
                      product * ((p :: candidates).take (need + 2)).prod
                  then []
                  else
                    (feasibleSupportPrefixes bound need
                        (product * p) candidates).map
                          (fun support => p :: support) ++
                      feasibleSupportPrefixes bound (need + 1)
                        product candidates) at hsupport
              rw [if_pos hpruned] at hsupport
              exact False.elim (by simpa using hsupport)
            · have hcountCheck :
                  hybridPaperCoreCountWordsWithin target words = false := by
                apply Bool.eq_false_iff.mpr
                intro htrue
                exact hcount <|
                  (hybridPaperCoreCountWordsWithin_eq_true_iff
                    target words).mp htrue
              simp only [if_neg hpruned, hcountCheck, Bool.false_eq_true,
                if_false, Bool.and_eq_true] at hpass'
              intro supportPrefix hsupport
              change
                supportPrefix ∈
                  (if bound <
                      product * ((p :: candidates).take (need + 2)).prod
                  then []
                  else
                    (feasibleSupportPrefixes bound need
                        (product * p) candidates).map
                          (fun support => p :: support) ++
                      feasibleSupportPrefixes bound (need + 1)
                        product candidates) at hsupport
              rw [if_neg hpruned] at hsupport
              rcases List.mem_append.mp hsupport with
                hselected | hskipped
              · obtain ⟨tail, htail, rfl⟩ := List.mem_map.mp hselected
                simp only [hybridPaperRootSupportWords]
                have hintersect :
                    ∀ word ∈
                        globalMixedCoreIntersectWords (lookup p) words,
                      word < 2 ^ 64 :=
                  globalMixedCoreIntersectWords_lt (lookup p) words hwords
                exact ih need (product * p)
                  (globalMixedCoreIntersectWords (lookup p) words)
                  hintersect hpass'.1 tail htail
              · exact ih (need + 1) product words hwords hpass'.2
                  supportPrefix hskipped

#print axioms hybridPaperRootScanPasses_sound

end Erdos848
