import Erdos848.TailHybridPaperRootChecker

namespace Erdos848

/-!
# Fixed-cardinality QR subset checker

The high-range QR argument does not enumerate a complete prime support.
Product forcing first extracts `need` primes from a short checked table, and
the producer then certifies that every `need`-element subset of that table has
at most `target` surviving quotient values.

The recursive Boolean below is deliberately independent of the Hall set and
of the numerical interval.  A generated module supplies only literal word
masks and a closed reduction of this checker.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def highQrSubsetScanPasses
    (lookup : Nat → List Nat) (target : Nat) :
    Nat → List Nat → List Nat → Bool
  | 0, _, words =>
      decide (globalMixedCoreCountWords words ≤ target)
  | _ + 1, [], _ => true
  | need + 1, p :: candidates, words =>
      if globalMixedCoreCountWords words ≤ target then true
      else
        highQrSubsetScanPasses lookup target need candidates
            (globalMixedCoreIntersectWords (lookup p) words) &&
          highQrSubsetScanPasses lookup target (need + 1)
            candidates words

theorem highQrSubsetScanPasses_sound
    (lookup : Nat → List Nat) (target need : Nat)
    (candidates words : List Nat)
    (hwords : ∀ word ∈ words, word < 2 ^ 64)
    (hpass :
      highQrSubsetScanPasses lookup target need candidates words = true) :
    ∀ selected : List Nat,
      List.Sublist selected candidates →
      selected.length = need →
      globalMixedCoreCountWords
          (hybridPaperRootSupportWords lookup selected words) ≤
        target := by
  induction candidates generalizing need words with
  | nil =>
      intro selected hselected hlength
      have hnil : selected = [] := by
        simpa using hselected
      subst selected
      cases need with
      | zero =>
          simpa [highQrSubsetScanPasses] using
            (of_decide_eq_true hpass :
              globalMixedCoreCountWords words ≤ target)
      | succ need =>
          simp at hlength
  | cons p candidates ih =>
      intro selected hselected hlength
      by_cases hcount : globalMixedCoreCountWords words ≤ target
      · exact
          (hybridPaperRootSupportWords_count_le
            lookup selected words hwords).trans hcount
      · cases need with
        | zero =>
            have hselectedNil : selected = [] := by
              simpa using hlength
            subst selected
            simpa [highQrSubsetScanPasses] using
              (show globalMixedCoreCountWords words ≤ target from
                of_decide_eq_true hpass)
        | succ need =>
            simp only [highQrSubsetScanPasses, hcount, if_false,
              Bool.and_eq_true] at hpass
            cases selected with
            | nil => simp at hlength
            | cons x selected =>
                rcases List.cons_sublist_cons'.mp hselected with
                  hskip | ⟨hx, htail⟩
                · exact ih (need + 1) words hwords hpass.2
                    (x :: selected) hskip hlength
                · subst x
                  simp only [List.length_cons, Nat.succ.injEq] at hlength
                  simp only [hybridPaperRootSupportWords]
                  have hintersect :
                      ∀ word ∈
                          globalMixedCoreIntersectWords (lookup p) words,
                        word < 2 ^ 64 :=
                    globalMixedCoreIntersectWords_lt (lookup p) words hwords
                  exact ih need
                    (globalMixedCoreIntersectWords (lookup p) words)
                    hintersect hpass.1 _ htail hlength

/-!
The product-forcing hypothesis contains substantially more information than
the fixed-cardinality scan used above.  If `prefix` is an initial segment of
an increasing support of total length `supportLength`, then every omitted
support prime is at least one larger than the last element of `prefix`.
Consequently

`prefix.prod * (prefix.last + 1) ^ (supportLength - prefix.length)`

is a certified lower bound for the complete support product.  Once this lower
bound reaches `stop`, the whole QR subtree is impossible and no word-mask
intersection needs to be evaluated.
-/

def highQrPrefixCompletionLowerBound
    (supportLength : Nat) (chosenPrefix : List Nat) : Nat :=
  chosenPrefix.prod *
    (chosenPrefix.getLastI + 1) ^
      (supportLength - chosenPrefix.length)

private theorem highQrPow_length_le_prod
    (lower : Nat) (values : List Nat)
    (hLower : ∀ value ∈ values, lower ≤ value) :
    lower ^ values.length ≤ values.prod := by
  induction values with
  | nil => simp
  | cons value values ih =>
      simp only [List.length_cons, List.prod_cons, pow_succ]
      have htail := ih (by
          intro next hnext
          exact hLower next (by simp [hnext]))
      simpa [Nat.mul_comm] using
        Nat.mul_le_mul htail (hLower value (by simp))

theorem highQrPrefixCompletionLowerBound_le_prod
    (chosenPrefix support : List Nat)
    (hPrefix : chosenPrefix <+: support)
    (hPrefixNonempty : chosenPrefix ≠ [])
    (hIncreasing : support.Pairwise (· < ·)) :
    highQrPrefixCompletionLowerBound support.length chosenPrefix ≤
      support.prod := by
  rcases hPrefix with ⟨rest, rfl⟩
  have hparts := List.pairwise_append.mp hIncreasing
  have hlastMem :
      chosenPrefix.getLast hPrefixNonempty ∈ chosenPrefix :=
    List.getLast_mem hPrefixNonempty
  have hrestLower :
      ∀ value ∈ rest,
        chosenPrefix.getLast hPrefixNonempty + 1 ≤ value := by
    intro value hvalue
    have hlt := hparts.2.2
      (chosenPrefix.getLast hPrefixNonempty) hlastMem value hvalue
    omega
  have hpower :=
    highQrPow_length_le_prod
      (chosenPrefix.getLast hPrefixNonempty + 1) rest hrestLower
  have hlastI :
      chosenPrefix.getLastI =
        chosenPrefix.getLast hPrefixNonempty := by
    rw [List.getLastI_eq_getLast?_getD,
      List.getLast?_eq_getLast_of_ne_nil hPrefixNonempty]
    rfl
  unfold highQrPrefixCompletionLowerBound
  rw [hlastI]
  simp only [List.length_append, Nat.add_sub_cancel_left,
    List.prod_append]
  exact Nat.mul_le_mul_left chosenPrefix.prod hpower

def highQrPrefixProductImpossible
    (supportLength stop : Nat) (chosenPrefix : List Nat) : Bool :=
  decide
    (chosenPrefix ≠ [] ∧
      stop ≤ highQrPrefixCompletionLowerBound
        supportLength chosenPrefix)

def highQrProductPrunedSubsetScanPasses
    (lookup : Nat → List Nat) (target supportLength stop : Nat) :
    Nat → List Nat → List Nat → List Nat → Bool
  | 0, _, words, chosenPrefix =>
      if highQrPrefixProductImpossible
          supportLength stop chosenPrefix then
        true
      else
        decide (globalMixedCoreCountWords words ≤ target)
  | _ + 1, [], _, _ => true
  | need + 1, p :: candidates, words, chosenPrefix =>
      if highQrPrefixProductImpossible
          supportLength stop chosenPrefix then
        true
      else if globalMixedCoreCountWords words ≤ target then
        true
      else
        highQrProductPrunedSubsetScanPasses
            lookup target supportLength stop need candidates
            (globalMixedCoreIntersectWords (lookup p) words)
            (chosenPrefix ++ [p]) &&
          highQrProductPrunedSubsetScanPasses
            lookup target supportLength stop (need + 1)
            candidates words chosenPrefix

theorem highQrProductPrunedSubsetScanPasses_sound
    (lookup : Nat → List Nat)
    (target supportLength stop need : Nat)
    (candidates words chosenPrefix support selected : List Nat)
    (hwords : ∀ word ∈ words, word < 2 ^ 64)
    (hSupportLength : support.length = supportLength)
    (hSupportIncreasing : support.Pairwise (· < ·))
    (hSupportProduct : support.prod < stop)
    (hSelected : List.Sublist selected candidates)
    (hSelectedLength : selected.length = need)
    (hPrefix :
      chosenPrefix ++ selected <+: support)
    (hpass :
      highQrProductPrunedSubsetScanPasses
          lookup target supportLength stop need
          candidates words chosenPrefix = true) :
    globalMixedCoreCountWords
        (hybridPaperRootSupportWords lookup selected words) ≤
      target := by
  induction candidates generalizing need words chosenPrefix selected with
  | nil =>
      have hselectedNil : selected = [] := by
        simpa using hSelected
      subst selected
      cases need with
      | zero =>
          have hPrefixOnly : chosenPrefix <+: support := by
            simpa using hPrefix
          have hprune :
              highQrPrefixProductImpossible
                  supportLength stop chosenPrefix = false := by
            rw [Bool.eq_false_iff]
            intro htrue
            have himpossible :
                chosenPrefix ≠ [] ∧
                  stop ≤ highQrPrefixCompletionLowerBound
                    supportLength chosenPrefix :=
              of_decide_eq_true htrue
            have hbound :=
              highQrPrefixCompletionLowerBound_le_prod
                chosenPrefix support hPrefixOnly himpossible.1
                hSupportIncreasing
            rw [hSupportLength] at hbound
            omega
          have hpass' :
              decide (globalMixedCoreCountWords words ≤ target) = true := by
            simpa [highQrProductPrunedSubsetScanPasses, hprune,
              Bool.false_eq_true] using hpass
          exact of_decide_eq_true hpass'
      | succ need =>
          simp at hSelectedLength
  | cons p candidates ih =>
      have hPrefixOnly : chosenPrefix <+: support :=
        (List.prefix_append chosenPrefix selected).trans hPrefix
      have hprune :
          highQrPrefixProductImpossible
              supportLength stop chosenPrefix = false := by
        rw [Bool.eq_false_iff]
        intro htrue
        have himpossible :
            chosenPrefix ≠ [] ∧
              stop ≤ highQrPrefixCompletionLowerBound
                supportLength chosenPrefix :=
          of_decide_eq_true htrue
        have hbound :=
          highQrPrefixCompletionLowerBound_le_prod
            chosenPrefix support hPrefixOnly himpossible.1
            hSupportIncreasing
        rw [hSupportLength] at hbound
        omega
      by_cases hcount :
          globalMixedCoreCountWords words ≤ target
      · exact
          (hybridPaperRootSupportWords_count_le
            lookup selected words hwords).trans hcount
      · cases need with
        | zero =>
            have hselectedNil : selected = [] := by
              simpa using hSelectedLength
            subst selected
            have hpass' :
                decide (globalMixedCoreCountWords words ≤ target) = true := by
              simpa [highQrProductPrunedSubsetScanPasses,
                hprune, Bool.false_eq_true, hcount] using hpass
            exact of_decide_eq_true hpass'
        | succ remaining =>
            simp only [highQrProductPrunedSubsetScanPasses,
              hprune, Bool.false_eq_true, if_false, hcount,
              Bool.and_eq_true] at hpass
            cases selected with
            | nil => simp at hSelectedLength
            | cons x selected =>
                rcases List.cons_sublist_cons'.mp hSelected with
                  hskip | ⟨hx, htail⟩
                · exact ih (remaining + 1) words chosenPrefix
                    (x :: selected) hwords hskip hSelectedLength
                    hPrefix hpass.2
                · subst x
                  simp only [List.length_cons, Nat.succ.injEq] at hSelectedLength
                  have hintersect :
                      ∀ word ∈
                          globalMixedCoreIntersectWords (lookup p) words,
                        word < 2 ^ 64 :=
                    globalMixedCoreIntersectWords_lt
                      (lookup p) words hwords
                  have hPrefixNext :
                      (chosenPrefix ++ [p]) ++ selected <+: support := by
                    simpa [List.append_assoc] using hPrefix
                  simp only [hybridPaperRootSupportWords]
                  exact ih remaining
                    (globalMixedCoreIntersectWords (lookup p) words)
                    (chosenPrefix ++ [p]) selected
                    hintersect htail hSelectedLength hPrefixNext hpass.1

def highQrProductPrunedFirstChoiceScanAt
    (lookup : Nat → List Nat)
    (target supportLength stop need : Nat)
    (candidates words : List Nat)
    (index : Fin candidates.length) : Bool :=
  highQrProductPrunedSubsetScanPasses
    lookup target supportLength stop need
    (candidates.drop (index.1 + 1))
    (globalMixedCoreIntersectWords
      (lookup (candidates.get index)) words)
    [candidates.get index]

def highQrProductPrunedShardedSubsetScanPasses
    (lookup : Nat → List Nat)
    (target supportLength stop need : Nat)
    (candidates words : List Nat) : Prop :=
  match need with
  | 0 => globalMixedCoreCountWords words ≤ target
  | remaining + 1 =>
      ∀ index : Fin candidates.length,
        highQrProductPrunedFirstChoiceScanAt
          lookup target supportLength stop remaining
          candidates words index = true

theorem highQrProductPrunedFirstChoiceScans_sound
    (lookup : Nat → List Nat)
    (target supportLength stop need : Nat)
    (candidates words support selected : List Nat)
    (hwords : ∀ word ∈ words, word < 2 ^ 64)
    (hSupportLength : support.length = supportLength)
    (hSupportIncreasing : support.Pairwise (· < ·))
    (hSupportProduct : support.prod < stop)
    (hSelected : List.Sublist selected candidates)
    (hSelectedLength : selected.length = need + 1)
    (hSelectedPrefix : selected <+: support)
    (hpass :
      ∀ index : Fin candidates.length,
        highQrProductPrunedFirstChoiceScanAt
          lookup target supportLength stop need
          candidates words index = true) :
    globalMixedCoreCountWords
        (hybridPaperRootSupportWords lookup selected words) ≤
      target := by
  induction candidates generalizing words selected with
  | nil =>
      have hnil : selected = [] := by
        simpa using hSelected
      subst selected
      simp at hSelectedLength
  | cons p candidates ih =>
      cases selected with
      | nil => simp at hSelectedLength
      | cons x selected =>
          rcases List.cons_sublist_cons'.mp hSelected with
            hskip | ⟨hx, htail⟩
          · apply ih words (x :: selected) hwords hskip hSelectedLength
              hSelectedPrefix
            intro index
            let parentIndex : Fin (p :: candidates).length :=
              ⟨index.1 + 1, by
                simpa [Nat.succ_eq_add_one] using
                  Nat.add_lt_add_right index.isLt 1⟩
            have hparent := hpass parentIndex
            simpa [highQrProductPrunedFirstChoiceScanAt,
              parentIndex, Nat.add_assoc] using hparent
          · subst x
            simp only [List.length_cons, Nat.succ.injEq] at hSelectedLength
            have hhead :=
              hpass (⟨0, by simp⟩ :
                Fin (p :: candidates).length)
            have hscan :
                highQrProductPrunedSubsetScanPasses
                    lookup target supportLength stop need candidates
                    (globalMixedCoreIntersectWords (lookup p) words)
                    [p] = true := by
              simpa [highQrProductPrunedFirstChoiceScanAt] using hhead
            have hprefix :
                [p] ++ selected <+: support := by
              simpa using hSelectedPrefix
            simp only [hybridPaperRootSupportWords]
            exact
              highQrProductPrunedSubsetScanPasses_sound
                lookup target supportLength stop need candidates
                (globalMixedCoreIntersectWords (lookup p) words)
                [p] support selected
                (globalMixedCoreIntersectWords_lt
                  (lookup p) words hwords)
                hSupportLength hSupportIncreasing hSupportProduct
                htail hSelectedLength hprefix hscan

theorem highQrProductPrunedShardedSubsetScanPasses_sound
    (lookup : Nat → List Nat)
    (target supportLength stop need : Nat)
    (candidates words support selected : List Nat)
    (hwords : ∀ word ∈ words, word < 2 ^ 64)
    (hSupportLength : support.length = supportLength)
    (hSupportIncreasing : support.Pairwise (· < ·))
    (hSupportProduct : support.prod < stop)
    (hSelected : List.Sublist selected candidates)
    (hSelectedLength : selected.length = need)
    (hSelectedPrefix : selected <+: support)
    (hpass :
      highQrProductPrunedShardedSubsetScanPasses
        lookup target supportLength stop need candidates words) :
    globalMixedCoreCountWords
        (hybridPaperRootSupportWords lookup selected words) ≤
      target := by
  cases need with
  | zero =>
      have hnil : selected = [] := by
        simpa using hSelectedLength
      subst selected
      simpa [highQrProductPrunedShardedSubsetScanPasses,
        hybridPaperRootSupportWords] using hpass
  | succ remaining =>
      exact
        highQrProductPrunedFirstChoiceScans_sound
          lookup target supportLength stop remaining
          candidates words support selected hwords
          hSupportLength hSupportIncreasing hSupportProduct
          hSelected hSelectedLength hSelectedPrefix
          (by
            simpa [highQrProductPrunedShardedSubsetScanPasses] using hpass)

/-!
The monolithic Boolean above is useful for small tables, but evaluating its
whole recursion tree in one declaration gives the elaborator no durable
checkpoint.  The high-range producer instead partitions a fixed-cardinality
scan by the first selected candidate.  Each leaf below is independent, so a
generated certificate can put every first-choice check in its own module and
resume after any completed leaf.
-/

def highQrFirstChoiceScanAt
    (lookup : Nat → List Nat) (target need : Nat)
    (candidates words : List Nat)
    (index : Fin candidates.length) : Bool :=
  highQrSubsetScanPasses lookup target need
    (candidates.drop (index.1 + 1))
    (globalMixedCoreIntersectWords
      (lookup (candidates.get index)) words)

def highQrShardedSubsetScanPasses
    (lookup : Nat → List Nat) (target need : Nat)
    (candidates words : List Nat) : Prop :=
  match need with
  | 0 => globalMixedCoreCountWords words ≤ target
  | remaining + 1 =>
      ∀ index : Fin candidates.length,
        highQrFirstChoiceScanAt lookup target remaining
          candidates words index = true

theorem highQrFirstChoiceScans_sound
    (lookup : Nat → List Nat) (target need : Nat)
    (candidates words : List Nat)
    (hwords : ∀ word ∈ words, word < 2 ^ 64)
    (hpass :
      ∀ index : Fin candidates.length,
        highQrFirstChoiceScanAt lookup target need
          candidates words index = true) :
    ∀ selected : List Nat,
      List.Sublist selected candidates →
      selected.length = need + 1 →
      globalMixedCoreCountWords
          (hybridPaperRootSupportWords lookup selected words) ≤
        target := by
  induction candidates generalizing words with
  | nil =>
      intro selected hselected hlength
      have hnil : selected = [] := by
        simpa using hselected
      subst selected
      simp at hlength
  | cons p candidates ih =>
      intro selected hselected hlength
      cases selected with
      | nil => simp at hlength
      | cons x selected =>
          rcases List.cons_sublist_cons'.mp hselected with
            hskip | ⟨hx, htail⟩
          · apply ih words hwords
            · intro index
              let parentIndex : Fin (p :: candidates).length :=
                ⟨index.1 + 1, by
                  simpa [Nat.succ_eq_add_one] using
                    Nat.add_lt_add_right index.isLt 1⟩
              have hparent := hpass parentIndex
              simpa [highQrFirstChoiceScanAt, parentIndex,
                Nat.add_assoc] using hparent
            · exact hskip
            · exact hlength
          · subst x
            simp only [List.length_cons, Nat.succ.injEq] at hlength
            have hhead :=
              hpass (⟨0, by simp⟩ : Fin (p :: candidates).length)
            have hscan :
                highQrSubsetScanPasses lookup target need candidates
                    (globalMixedCoreIntersectWords (lookup p) words) =
                  true := by
              simpa [highQrFirstChoiceScanAt] using hhead
            simp only [hybridPaperRootSupportWords]
            exact
              highQrSubsetScanPasses_sound lookup target need candidates
                (globalMixedCoreIntersectWords (lookup p) words)
                (globalMixedCoreIntersectWords_lt
                  (lookup p) words hwords)
                hscan selected htail hlength

theorem highQrShardedSubsetScanPasses_sound
    (lookup : Nat → List Nat) (target need : Nat)
    (candidates words : List Nat)
    (hwords : ∀ word ∈ words, word < 2 ^ 64)
    (hpass :
      highQrShardedSubsetScanPasses
        lookup target need candidates words) :
    ∀ selected : List Nat,
      List.Sublist selected candidates →
      selected.length = need →
      globalMixedCoreCountWords
          (hybridPaperRootSupportWords lookup selected words) ≤
        target := by
  cases need with
  | zero =>
      intro selected hselected hlength
      have hnil : selected = [] := by
        simpa using hlength
      subst selected
      simpa [highQrShardedSubsetScanPasses,
        hybridPaperRootSupportWords] using hpass
  | succ remaining =>
      exact
        highQrFirstChoiceScans_sound
          lookup target remaining candidates words hwords
          (by
            simpa [highQrShardedSubsetScanPasses] using hpass)

#print axioms highQrSubsetScanPasses_sound
#print axioms highQrShardedSubsetScanPasses_sound

end Erdos848
