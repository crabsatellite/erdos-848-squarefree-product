import Erdos848.TailHighQrSubsetChecker

namespace Erdos848

/-!
# Checked support-prime domains and product forcing

This is the mathematical bridge behind the high QR rows.  A finite
certificate lists exactly the eligible support primes in an interval.  From
that checked domain we prove, once and for all, that the first `r` primes in
the table minimize the product of any increasing `r`-element support in the
same interval.

The product-forcing row checks every possible number `r < choose` of small
support primes.  Hence a support of the advertised length and product must
contain at least `choose` primes at or below the screen cutoff.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

structure HighQrSupportPrimeIntervalData where
  lower : Nat
  upper : Nat
  primes : List Nat
  deriving DecidableEq

def HighQrSupportPrimeIntervalData.Valid
    (data : HighQrSupportPrimeIntervalData) : Prop :=
  data.lower ≤ data.upper ∧
    data.primes.Pairwise (· < ·) ∧
    data.primes.all (fun p =>
      decide
        (data.lower < p ∧ p ≤ data.upper ∧
          FiveMillionSupportPrime p)) = true ∧
    allNatRange
      (fun p =>
        decide
          ((p ∈ data.primes) ↔
            data.lower < p ∧ FiveMillionSupportPrime p))
      0 (data.upper + 1) = true

instance highQrSupportPrimeIntervalDataDecidableValid
    (data : HighQrSupportPrimeIntervalData) :
    Decidable data.Valid := by
  unfold HighQrSupportPrimeIntervalData.Valid
  infer_instance

def HighQrSupportPrimeIntervalData.check
    (data : HighQrSupportPrimeIntervalData) : Bool :=
  decide data.Valid

theorem HighQrSupportPrimeIntervalData.check_sound
    {data : HighQrSupportPrimeIntervalData}
    (hcheck : data.check = true) :
    data.Valid :=
  of_decide_eq_true hcheck

structure CertifiedHighQrSupportPrimeInterval where
  data : HighQrSupportPrimeIntervalData
  checked : data.check = true

theorem CertifiedHighQrSupportPrimeInterval.mem_iff
    (certificate : CertifiedHighQrSupportPrimeInterval)
    {p : Nat} (hpUpper : p ≤ certificate.data.upper) :
    p ∈ certificate.data.primes ↔
      certificate.data.lower < p ∧ FiveMillionSupportPrime p := by
  have hvalid := certificate.data.check_sound certificate.checked
  exact of_decide_eq_true
    ((allNatRange_eq_true_iff _ _ _).mp hvalid.2.2.2
      p (by omega) (by omega))

theorem CertifiedHighQrSupportPrimeInterval.member_bounds
    (certificate : CertifiedHighQrSupportPrimeInterval)
    {p : Nat} (hp : p ∈ certificate.data.primes) :
    certificate.data.lower < p ∧
      p ≤ certificate.data.upper ∧ FiveMillionSupportPrime p := by
  have hvalid := certificate.data.check_sound certificate.checked
  exact of_decide_eq_true
    ((List.all_eq_true.mp hvalid.2.2.1) p hp)

theorem CertifiedHighQrSupportPrimeInterval.take_prod_le
    (certificate : CertifiedHighQrSupportPrimeInterval)
    (selected : List Nat)
    (hLength :
      selected.length ≤ certificate.data.primes.length)
    (hLower :
      ∀ p ∈ selected, certificate.data.lower < p)
    (hPrimes : ∀ p ∈ selected, FiveMillionSupportPrime p)
    (hIncreasing : selected.Pairwise (· < ·)) :
    (certificate.data.primes.take selected.length).prod ≤
      selected.prod := by
  let beyond :=
    selected.filter fun p => certificate.data.upper < p
  let ambient := certificate.data.primes ++ beyond
  have hvalid := certificate.data.check_sound certificate.checked
  have hbeyondPairwise : beyond.Pairwise (· < ·) :=
    hIncreasing.sublist (List.filter_sublist)
  have hambientPairwise : ambient.Pairwise (· < ·) := by
    dsimp [ambient]
    rw [List.pairwise_append]
    refine ⟨hvalid.2.1, hbeyondPairwise, ?_⟩
    intro p hp q hq
    have hpBounds := certificate.member_bounds hp
    have hqBeyond :
        certificate.data.upper < q :=
      of_decide_eq_true (List.mem_filter.mp hq).2
    omega
  have hsubset : selected ⊆ ambient := by
    intro p hp
    by_cases hpUpper : p ≤ certificate.data.upper
    · apply List.mem_append_left
      exact (certificate.mem_iff hpUpper).2 ⟨hLower p hp, hPrimes p hp⟩
    · apply List.mem_append_right
      exact List.mem_filter.mpr
        ⟨hp, decide_eq_true (by omega)⟩
  have hSubperm : List.Subperm selected ambient :=
    List.subperm_of_subset hIncreasing.nodup hsubset
  have hSublist : List.Sublist selected ambient :=
    List.sublist_of_subperm_of_pairwise
      hSubperm hIncreasing hambientPairwise
  have htake :=
    take_length_prod_le_of_sublist_of_pairwise
      hSublist (hambientPairwise.imp Nat.le_of_lt)
  have htakeEq :
      ambient.take selected.length =
        certificate.data.primes.take selected.length := by
    dsimp [ambient]
    exact List.take_append_of_le_length hLength
  simpa [htakeEq] using htake

/--
The same minimum-product argument after a movable lower cutoff.  A generated
completion table is checked only once; every QR scan node may then use the
first `selected.length` eligible entries of that table as a certified lower
bound for the unexamined suffix of a genuine support.
-/
theorem CertifiedHighQrSupportPrimeInterval.filtered_take_prod_le
    (certificate : CertifiedHighQrSupportPrimeInterval)
    (hDataLower : certificate.data.lower = 0)
    (start : Nat) (selected : List Nat)
    (hLength :
      selected.length ≤
        (certificate.data.primes.filter fun p => start ≤ p).length)
    (hLower : ∀ p ∈ selected, start ≤ p)
    (hPrimes : ∀ p ∈ selected, FiveMillionSupportPrime p)
    (hIncreasing : selected.Pairwise (· < ·)) :
    ((certificate.data.primes.filter fun p => start ≤ p).take
        selected.length).prod ≤ selected.prod := by
  let eligible :=
    certificate.data.primes.filter fun p => start ≤ p
  let beyond :=
    selected.filter fun p => certificate.data.upper < p
  let ambient := eligible ++ beyond
  have hvalid := certificate.data.check_sound certificate.checked
  have heligiblePairwise : eligible.Pairwise (· < ·) :=
    hvalid.2.1.sublist List.filter_sublist
  have hbeyondPairwise : beyond.Pairwise (· < ·) :=
    hIncreasing.sublist List.filter_sublist
  have hambientPairwise : ambient.Pairwise (· < ·) := by
    dsimp [ambient]
    rw [List.pairwise_append]
    refine ⟨heligiblePairwise, hbeyondPairwise, ?_⟩
    intro p hp q hq
    have hpTable :
        p ∈ certificate.data.primes :=
      List.mem_of_mem_filter hp
    have hpUpper :
        p ≤ certificate.data.upper :=
      (certificate.member_bounds hpTable).2.1
    have hqUpper :
        certificate.data.upper < q :=
      of_decide_eq_true (List.mem_filter.mp hq).2
    omega
  have hsubset : selected ⊆ ambient := by
    intro p hp
    by_cases hpUpper : p ≤ certificate.data.upper
    · apply List.mem_append_left
      apply List.mem_filter.mpr
      refine ⟨?_, decide_eq_true (hLower p hp)⟩
      exact (certificate.mem_iff hpUpper).2
        ⟨by
          rw [hDataLower]
          exact (hPrimes p hp).1.pos,
          hPrimes p hp⟩
    · apply List.mem_append_right
      exact List.mem_filter.mpr
        ⟨hp, decide_eq_true (by omega)⟩
  have hSubperm : List.Subperm selected ambient :=
    List.subperm_of_subset hIncreasing.nodup hsubset
  have hSublist : List.Sublist selected ambient :=
    List.sublist_of_subperm_of_pairwise
      hSubperm hIncreasing hambientPairwise
  have htake :=
    take_length_prod_le_of_sublist_of_pairwise
      hSublist (hambientPairwise.imp Nat.le_of_lt)
  have htakeEq :
      ambient.take selected.length =
        eligible.take selected.length := by
    dsimp [ambient]
    exact List.take_append_of_le_length hLength
  simpa [eligible, htakeEq] using htake

def highQrPrimeCompletionStart :
    Nat → List Nat → List Nat → Nat
  | 0, _, chosenPrefix => chosenPrefix.getLastI + 1
  | _ + 1, [], _ => 0
  | _ + 1, p :: _, _ => p

def highQrPrimeCompletionLowerBound
    (completionPrimes : List Nat)
    (supportLength need : Nat)
    (candidates chosenPrefix : List Nat) : Nat :=
  let start :=
    highQrPrimeCompletionStart need candidates chosenPrefix
  chosenPrefix.prod *
    ((completionPrimes.filter fun p => start ≤ p).take
      (supportLength - chosenPrefix.length)).prod

/--
The fast scan prunes a node when either too few candidates remain or the
checked prime table already forces every completion of the current chosenPrefix
past `stop`.
-/
def highQrPrimeCompletionImpossible
    (completionPrimes : List Nat)
    (supportLength stop need : Nat)
    (candidates chosenPrefix : List Nat) : Bool :=
  decide (
    candidates.length < need ∨
      (chosenPrefix ≠ [] ∧
        supportLength - chosenPrefix.length ≤
          (completionPrimes.filter fun p =>
            highQrPrimeCompletionStart need candidates chosenPrefix ≤ p).length ∧
        stop ≤ highQrPrimeCompletionLowerBound
          completionPrimes supportLength need candidates chosenPrefix))

private theorem highQrPrimeCompletionImpossible_eq_false
    (completion : CertifiedHighQrSupportPrimeInterval)
    (hCompletionLower : completion.data.lower = 0)
    (supportLength stop need : Nat)
    (candidates chosenPrefix support selected : List Nat)
    (hCandidatesIncreasing : candidates.Pairwise (· < ·))
    (hSupportLength : support.length = supportLength)
    (hSupportPrimes :
      ∀ p ∈ support, FiveMillionSupportPrime p)
    (hSupportIncreasing : support.Pairwise (· < ·))
    (hSupportProduct : support.prod < stop)
    (hSelected : List.Sublist selected candidates)
    (hSelectedLength : selected.length = need)
    (hPrefix : chosenPrefix ++ selected <+: support) :
    highQrPrimeCompletionImpossible
        completion.data.primes supportLength stop need
        candidates chosenPrefix = false := by
  rw [Bool.eq_false_iff]
  intro htrue
  have himpossible :
      candidates.length < need ∨
        (chosenPrefix ≠ [] ∧
          supportLength - chosenPrefix.length ≤
            (completion.data.primes.filter fun p =>
              highQrPrimeCompletionStart need candidates chosenPrefix ≤ p).length ∧
          stop ≤ highQrPrimeCompletionLowerBound
            completion.data.primes supportLength need
              candidates chosenPrefix) :=
    of_decide_eq_true htrue
  rcases himpossible with hshort | himpossible
  · have := hSelected.length_le
    omega
  rcases himpossible with
    ⟨hPrefixNonempty, hCompletionLength, hStop⟩
  rcases hPrefix with ⟨suffix, hSupportEq⟩
  subst support
  let remainder := selected ++ suffix
  have hSupportIncreasing' :
      (chosenPrefix ++ remainder).Pairwise (· < ·) := by
    simpa [remainder, List.append_assoc] using hSupportIncreasing
  have hSupportParts :=
    List.pairwise_append.mp hSupportIncreasing'
  have hRemainderIncreasing :
      remainder.Pairwise (· < ·) :=
    hSupportParts.2.1
  have hRemainderPrimes :
      ∀ p ∈ remainder, FiveMillionSupportPrime p := by
    intro p hp
    apply hSupportPrimes p
    simpa [remainder, List.append_assoc] using
      List.mem_append_right chosenPrefix hp
  have hRemainderLength :
      remainder.length = supportLength - chosenPrefix.length := by
    simp only [List.length_append] at hSupportLength
    dsimp [remainder]
    simp only [List.length_append]
    omega
  have hStartLower :
      ∀ p ∈ remainder,
        highQrPrimeCompletionStart need candidates chosenPrefix ≤ p := by
    intro q hq
    cases need with
    | zero =>
        have hSelectedNil : selected = [] := by
          simpa using hSelectedLength
        subst selected
        have hlastMem :
            chosenPrefix.getLast hPrefixNonempty ∈ chosenPrefix :=
          List.getLast_mem hPrefixNonempty
        have hcross :=
          hSupportParts.2.2
            (chosenPrefix.getLast hPrefixNonempty) hlastMem q hq
        have hlastI :
            chosenPrefix.getLastI =
              chosenPrefix.getLast hPrefixNonempty := by
          rw [List.getLastI_eq_getLast?_getD,
            List.getLast?_eq_getLast_of_ne_nil hPrefixNonempty]
          rfl
        simp only [highQrPrimeCompletionStart]
        rw [hlastI]
        omega
    | succ remainingNeed =>
        cases candidates with
        | nil =>
            have hSelectedNil : selected = [] := by
              simpa using hSelected
            subst selected
            simp at hSelectedLength
        | cons p candidates =>
            simp only [highQrPrimeCompletionStart]
            have hcandidateParts :=
              List.pairwise_cons.mp hCandidatesIncreasing
            have hpSelected :
                ∀ x ∈ selected, p ≤ x := by
              intro x hx
              have hxCandidates := hSelected.subset hx
              rcases List.mem_cons.mp hxCandidates with rfl | hxTail
              · exact le_rfl
              · exact (hcandidateParts.1 x hxTail).le
            rcases List.mem_append.mp hq with hqSelected | hqSuffix
            · exact hpSelected q hqSelected
            · have hSelectedNonempty : selected ≠ [] := by
                intro hnil
                subst selected
                simp at hSelectedLength
              let x := selected.getLast hSelectedNonempty
              have hxSelected : x ∈ selected :=
                List.getLast_mem hSelectedNonempty
              have hxPrefixSelected :
                  x ∈ chosenPrefix ++ selected :=
                List.mem_append_right chosenPrefix hxSelected
              have hPairOriginal :=
                List.pairwise_append.mp hSupportIncreasing
              have hxq :=
                hPairOriginal.2.2 x hxPrefixSelected q hqSuffix
              exact (hpSelected x hxSelected).trans hxq.le
  have hCompletionLength' :
      remainder.length ≤
        (completion.data.primes.filter fun p =>
          highQrPrimeCompletionStart need candidates chosenPrefix ≤ p).length := by
    rw [hRemainderLength]
    exact hCompletionLength
  have hCompletionProduct :=
    completion.filtered_take_prod_le
      hCompletionLower
      (highQrPrimeCompletionStart need candidates chosenPrefix)
      remainder hCompletionLength' hStartLower
      hRemainderPrimes hRemainderIncreasing
  have hLowerBound :
      highQrPrimeCompletionLowerBound
          completion.data.primes supportLength need candidates chosenPrefix ≤
        (chosenPrefix ++ remainder).prod := by
    unfold highQrPrimeCompletionLowerBound
    rw [← hRemainderLength]
    simpa [List.prod_append] using
      Nat.mul_le_mul_left chosenPrefix.prod hCompletionProduct
  have hSupportProduct' :
      (chosenPrefix ++ remainder).prod < stop := by
    simpa [remainder, List.append_assoc] using hSupportProduct
  omega

def highQrPrimeCompletionPrunedSubsetScanPasses
    (completionPrimes : List Nat)
    (lookup : Nat → List Nat)
    (target supportLength stop : Nat) :
    Nat → List Nat → List Nat → List Nat → Bool
  | 0, candidates, words, chosenPrefix =>
      if highQrPrimeCompletionImpossible completionPrimes
          supportLength stop 0 candidates chosenPrefix then
        true
      else
        hybridPaperCoreCountWordsWithin target words
  | _ + 1, [], _, _ => true
  | need + 1, p :: candidates, words, chosenPrefix =>
      if highQrPrimeCompletionImpossible completionPrimes
          supportLength stop (need + 1) (p :: candidates) chosenPrefix then
        true
      else if hybridPaperCoreCountWordsWithin target words then
        true
      else
        highQrPrimeCompletionPrunedSubsetScanPasses
            completionPrimes lookup target supportLength stop
            need candidates
            (globalMixedCoreIntersectWords (lookup p) words)
            (chosenPrefix ++ [p]) &&
          highQrPrimeCompletionPrunedSubsetScanPasses
            completionPrimes lookup target supportLength stop
            (need + 1) candidates words chosenPrefix

theorem highQrPrimeCompletionPrunedSubsetScanPasses_sound
    (completion : CertifiedHighQrSupportPrimeInterval)
    (hCompletionLower : completion.data.lower = 0)
    (lookup : Nat → List Nat)
    (target supportLength stop need : Nat)
    (candidates words chosenPrefix support selected : List Nat)
    (hwords : ∀ word ∈ words, word < 2 ^ 64)
    (hCandidatesIncreasing : candidates.Pairwise (· < ·))
    (hSupportLength : support.length = supportLength)
    (hSupportPrimes :
      ∀ p ∈ support, FiveMillionSupportPrime p)
    (hSupportIncreasing : support.Pairwise (· < ·))
    (hSupportProduct : support.prod < stop)
    (hSelected : List.Sublist selected candidates)
    (hSelectedLength : selected.length = need)
    (hPrefix : chosenPrefix ++ selected <+: support)
    (hpass :
      highQrPrimeCompletionPrunedSubsetScanPasses
          completion.data.primes lookup target supportLength stop
          need candidates words chosenPrefix = true) :
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
          have hprune :=
            highQrPrimeCompletionImpossible_eq_false
              completion hCompletionLower supportLength stop 0
              [] chosenPrefix support [] (by simp)
              hSupportLength hSupportPrimes hSupportIncreasing
              hSupportProduct hSelected (by simp) hPrefix
          have hchecked :
              hybridPaperCoreCountWordsWithin target words = true := by
            simpa [highQrPrimeCompletionPrunedSubsetScanPasses,
              hprune] using hpass
          exact
            (hybridPaperCoreCountWordsWithin_eq_true_iff
              target words).mp hchecked
      | succ need =>
          simp at hSelectedLength
  | cons p candidates ih =>
      have hcandidateParts :=
        List.pairwise_cons.mp hCandidatesIncreasing
      have hprune :=
        highQrPrimeCompletionImpossible_eq_false
          completion hCompletionLower supportLength stop need
          (p :: candidates) chosenPrefix support selected
          hCandidatesIncreasing hSupportLength hSupportPrimes
          hSupportIncreasing hSupportProduct hSelected
          hSelectedLength hPrefix
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
            have hchecked :
                hybridPaperCoreCountWordsWithin target words = true := by
              simpa [highQrPrimeCompletionPrunedSubsetScanPasses,
                hprune] using hpass
            exact (hcount
              ((hybridPaperCoreCountWordsWithin_eq_true_iff
                target words).mp hchecked)).elim
        | succ remaining =>
            have hcountCheck :
                hybridPaperCoreCountWordsWithin target words = false := by
              apply Bool.eq_false_iff.mpr
              intro htrue
              exact hcount <|
                (hybridPaperCoreCountWordsWithin_eq_true_iff
                  target words).mp htrue
            simp only [highQrPrimeCompletionPrunedSubsetScanPasses,
              hprune, hcountCheck, Bool.false_eq_true, if_false,
              Bool.and_eq_true] at hpass
            cases selected with
            | nil => simp at hSelectedLength
            | cons x selected =>
                rcases List.cons_sublist_cons'.mp hSelected with
                  hskip | ⟨hx, htail⟩
                · exact ih (remaining + 1) words chosenPrefix
                    (x :: selected) hwords hcandidateParts.2
                    hskip hSelectedLength hPrefix hpass.2
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
                    hintersect hcandidateParts.2
                    htail hSelectedLength hPrefixNext hpass.1

def highQrPrimeCompletionPrunedFirstChoiceScanAt
    (completionPrimes : List Nat)
    (lookup : Nat → List Nat)
    (target supportLength stop need : Nat)
    (candidates words : List Nat)
    (index : Fin candidates.length) : Bool :=
  highQrPrimeCompletionPrunedSubsetScanPasses
    completionPrimes lookup target supportLength stop need
    (candidates.drop (index.1 + 1))
    (globalMixedCoreIntersectWords
      (lookup (candidates.get index)) words)
    [candidates.get index]

def highQrPrimeCompletionPrunedShardedSubsetScanPasses
    (completionPrimes : List Nat)
    (lookup : Nat → List Nat)
    (target supportLength stop need : Nat)
    (candidates words : List Nat) : Prop :=
  match need with
  | 0 => globalMixedCoreCountWords words ≤ target
  | remaining + 1 =>
      ∀ index : Fin candidates.length,
        highQrPrimeCompletionPrunedFirstChoiceScanAt
          completionPrimes lookup target supportLength stop remaining
          candidates words index = true

private theorem
    highQrPrimeCompletionPrunedFirstChoiceScans_sound
    (completion : CertifiedHighQrSupportPrimeInterval)
    (hCompletionLower : completion.data.lower = 0)
    (lookup : Nat → List Nat)
    (target supportLength stop need : Nat)
    (candidates words support selected : List Nat)
    (hwords : ∀ word ∈ words, word < 2 ^ 64)
    (hCandidatesIncreasing : candidates.Pairwise (· < ·))
    (hSupportLength : support.length = supportLength)
    (hSupportPrimes :
      ∀ p ∈ support, FiveMillionSupportPrime p)
    (hSupportIncreasing : support.Pairwise (· < ·))
    (hSupportProduct : support.prod < stop)
    (hSelected : List.Sublist selected candidates)
    (hSelectedLength : selected.length = need + 1)
    (hSelectedPrefix : selected <+: support)
    (hpass :
      ∀ index : Fin candidates.length,
        highQrPrimeCompletionPrunedFirstChoiceScanAt
          completion.data.primes lookup target supportLength stop need
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
      have hcandidateParts :=
        List.pairwise_cons.mp hCandidatesIncreasing
      cases selected with
      | nil => simp at hSelectedLength
      | cons x selected =>
          rcases List.cons_sublist_cons'.mp hSelected with
            hskip | ⟨hx, htail⟩
          · apply ih words (x :: selected) hwords
              hcandidateParts.2 hskip hSelectedLength
              hSelectedPrefix
            intro index
            let parentIndex : Fin (p :: candidates).length :=
              ⟨index.1 + 1, by
                simpa [Nat.succ_eq_add_one] using
                  Nat.add_lt_add_right index.isLt 1⟩
            have hparent := hpass parentIndex
            simpa [highQrPrimeCompletionPrunedFirstChoiceScanAt,
              parentIndex, Nat.add_assoc] using hparent
          · subst x
            simp only [List.length_cons, Nat.succ.injEq] at hSelectedLength
            have hhead :=
              hpass (⟨0, by simp⟩ :
                Fin (p :: candidates).length)
            have hscan :
                highQrPrimeCompletionPrunedSubsetScanPasses
                    completion.data.primes lookup target
                    supportLength stop need candidates
                    (globalMixedCoreIntersectWords (lookup p) words)
                    [p] = true := by
              simpa [highQrPrimeCompletionPrunedFirstChoiceScanAt] using hhead
            have hprefix :
                [p] ++ selected <+: support := by
              simpa using hSelectedPrefix
            simp only [hybridPaperRootSupportWords]
            exact
              highQrPrimeCompletionPrunedSubsetScanPasses_sound
                completion hCompletionLower lookup target
                supportLength stop need candidates
                (globalMixedCoreIntersectWords (lookup p) words)
                [p] support selected
                (globalMixedCoreIntersectWords_lt
                  (lookup p) words hwords)
                hcandidateParts.2 hSupportLength hSupportPrimes
                hSupportIncreasing hSupportProduct htail
                hSelectedLength hprefix hscan

theorem highQrPrimeCompletionPrunedShardedSubsetScanPasses_sound
    (completion : CertifiedHighQrSupportPrimeInterval)
    (hCompletionLower : completion.data.lower = 0)
    (lookup : Nat → List Nat)
    (target supportLength stop need : Nat)
    (candidates words support selected : List Nat)
    (hwords : ∀ word ∈ words, word < 2 ^ 64)
    (hCandidatesIncreasing : candidates.Pairwise (· < ·))
    (hSupportLength : support.length = supportLength)
    (hSupportPrimes :
      ∀ p ∈ support, FiveMillionSupportPrime p)
    (hSupportIncreasing : support.Pairwise (· < ·))
    (hSupportProduct : support.prod < stop)
    (hSelected : List.Sublist selected candidates)
    (hSelectedLength : selected.length = need)
    (hSelectedPrefix : selected <+: support)
    (hpass :
      highQrPrimeCompletionPrunedShardedSubsetScanPasses
        completion.data.primes lookup target supportLength stop need
          candidates words) :
    globalMixedCoreCountWords
        (hybridPaperRootSupportWords lookup selected words) ≤
      target := by
  cases need with
  | zero =>
      have hnil : selected = [] := by
        simpa using hSelectedLength
      subst selected
      simpa [highQrPrimeCompletionPrunedShardedSubsetScanPasses,
        hybridPaperRootSupportWords] using hpass
  | succ remaining =>
      exact
        highQrPrimeCompletionPrunedFirstChoiceScans_sound
          completion hCompletionLower lookup target supportLength stop
          remaining candidates words support selected hwords
          hCandidatesIncreasing hSupportLength hSupportPrimes
          hSupportIncreasing hSupportProduct hSelected
          hSelectedLength hSelectedPrefix
          (by
            simpa [highQrPrimeCompletionPrunedShardedSubsetScanPasses]
              using hpass)

private theorem highQrFilterPartition_length
    (support : List Nat) (cutoff : Nat) :
    (support.filter fun p => p ≤ cutoff).length +
        (support.filter fun p => cutoff < p).length =
      support.length := by
  induction support with
  | nil => simp
  | cons p support ih =>
      by_cases hp : p ≤ cutoff
      · simp [List.filter_cons, hp,
          show ¬cutoff < p by omega] <;> omega
      · simp [List.filter_cons, hp,
          show cutoff < p by omega] <;> omega

private theorem highQrFilterPartition_prod
    (support : List Nat) (cutoff : Nat) :
    (support.filter fun p => p ≤ cutoff).prod *
        (support.filter fun p => cutoff < p).prod =
      support.prod := by
  simpa only [List.map_id, not_le] using
    (List.prod_map_filter_mul_prod_map_filter_not
      (fun p : Nat => p ≤ cutoff) id support)

structure HighQrProductForcingRowData where
  supportLength : Nat
  choose : Nat
  stop : Nat
  small : HighQrSupportPrimeIntervalData
  large : HighQrSupportPrimeIntervalData
  deriving DecidableEq

def HighQrProductForcingRowData.Valid
    (row : HighQrProductForcingRowData) : Prop :=
  (row.choose = 0 ∨ 0 < row.choose) ∧
    row.choose ≤ row.supportLength ∧
    row.small.lower = 0 ∧
    row.large.lower = row.small.upper ∧
    row.supportLength ≤ row.small.primes.length ∧
    row.supportLength ≤ row.large.primes.length ∧
    ∀ r : Fin row.choose,
      row.stop ≤
        (row.small.primes.take r).prod *
          (row.large.primes.take
            (row.supportLength - r)).prod

instance highQrProductForcingRowDataDecidableValid
    (row : HighQrProductForcingRowData) :
    Decidable row.Valid := by
  unfold HighQrProductForcingRowData.Valid
  infer_instance

def HighQrProductForcingRowData.check
    (row : HighQrProductForcingRowData) : Bool :=
  decide row.Valid

theorem HighQrProductForcingRowData.check_sound
    {row : HighQrProductForcingRowData}
    (hcheck : row.check = true) :
    row.Valid :=
  of_decide_eq_true hcheck

structure CertifiedHighQrProductForcingRow where
  row : HighQrProductForcingRowData
  smallChecked : row.small.check = true
  largeChecked : row.large.check = true
  checked : row.check = true

theorem CertifiedHighQrProductForcingRow.small_count
    (certificate : CertifiedHighQrProductForcingRow)
    (support : List Nat)
    (hLength : support.length = certificate.row.supportLength)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod < certificate.row.stop) :
    certificate.row.choose ≤
      (support.filter fun p => p ≤ certificate.row.small.upper).length := by
  have hvalid := certificate.row.check_sound certificate.checked
  by_contra hcount
  let small :=
    support.filter fun p => p ≤ certificate.row.small.upper
  let large :=
    support.filter fun p => certificate.row.small.upper < p
  let smallCertificate : CertifiedHighQrSupportPrimeInterval :=
    ⟨certificate.row.small, certificate.smallChecked⟩
  let largeCertificate : CertifiedHighQrSupportPrimeInterval :=
    ⟨certificate.row.large, certificate.largeChecked⟩
  have hr : small.length < certificate.row.choose := by
    simpa [small] using hcount
  let r : Fin certificate.row.choose := ⟨small.length, hr⟩
  have hsmallLength :
      small.length ≤ certificate.row.small.primes.length := by
    calc
      small.length ≤ support.length := List.length_filter_le _ _
      _ = certificate.row.supportLength := hLength
      _ ≤ certificate.row.small.primes.length := hvalid.2.2.2.2.1
  have hlargeLengthValue :
      large.length = certificate.row.supportLength - r := by
    have hpartition :=
      highQrFilterPartition_length
        support certificate.row.small.upper
    dsimp [small, large, r]
    omega
  have hlargeLength :
      large.length ≤ certificate.row.large.primes.length := by
    rw [hlargeLengthValue]
    exact (Nat.sub_le _ _).trans hvalid.2.2.2.2.2.1
  have hsmallProd :
      (certificate.row.small.primes.take r).prod ≤
        small.prod := by
    apply smallCertificate.take_prod_le
      small hsmallLength
    · intro p hp
      rw [hvalid.2.2.1]
      exact (hPrimes p (List.mem_of_mem_filter hp)).1.pos
    · intro p hp
      exact hPrimes p (List.mem_of_mem_filter hp)
    · exact hIncreasing.sublist List.filter_sublist
  have hlargeProd :
      (certificate.row.large.primes.take
          (certificate.row.supportLength - r)).prod ≤
        large.prod := by
    rw [← hlargeLengthValue]
    apply largeCertificate.take_prod_le
      large hlargeLength
    · intro p hp
      rw [hvalid.2.2.2.1]
      exact of_decide_eq_true (List.mem_filter.mp hp).2
    · intro p hp
      exact hPrimes p (List.mem_of_mem_filter hp)
    · exact hIncreasing.sublist List.filter_sublist
  have hforced := hvalid.2.2.2.2.2.2 r
  have hpartition :=
    highQrFilterPartition_prod
      support certificate.row.small.upper
  have hbound :
      certificate.row.stop ≤ small.prod * large.prod := by
    exact hforced.trans
      (Nat.mul_le_mul hsmallProd hlargeProd)
  have hpartition' : small.prod * large.prod = support.prod := by
    simpa [small, large] using hpartition
  rw [hpartition'] at hbound
  omega

#print axioms HighQrSupportPrimeIntervalData.check_sound
#print axioms CertifiedHighQrSupportPrimeInterval.take_prod_le
#print axioms CertifiedHighQrProductForcingRow.small_count

end Erdos848
