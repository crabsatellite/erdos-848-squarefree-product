import Erdos848.TailHighQrSupportForcing
import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.TailHybridPaperRootCosetChecker
import Erdos848.TailHighVariableSplitActual

namespace Erdos848

/-!
# High-range QR screen certificate

One row contains only finite objects:

* exact support-prime interval tables and their product-forcing check;
* ordinary and five-twist QR word masks, with already-checked pointwise
  semantics;
* two fixed-cardinality subset scans.

The pointwise ABI is intentional: the final high rows reuse the existing
`M = 15625` semantic certificates instead of asking the kernel to evaluate a
second whole-table Boolean.  The theorems in this file turn those checked
objects into an actual survivor bound for any increasing pivot support in the
row.  No Hall-set theorem is a field of the certificate.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

structure HighQrScreenRowData where
  forcing : HighQrProductForcingRowData
  split : Nat
  M : Nat
  target : Nat
  squareCoset : Bool
  deriving DecidableEq

def HighQrScreenRowData.Valid (row : HighQrScreenRowData) : Prop :=
  0 < row.split ∧
    row.split ^ 2 ≤ row.M ∧
    row.forcing.small.upper ≤ row.M

instance highQrScreenRowDataDecidableValid
    (row : HighQrScreenRowData) :
    Decidable row.Valid := by
  unfold HighQrScreenRowData.Valid
  infer_instance

def HighQrScreenRowData.check (row : HighQrScreenRowData) : Bool :=
  decide row.Valid

theorem HighQrScreenRowData.check_sound
    {row : HighQrScreenRowData}
    (hcheck : row.check = true) :
    row.Valid :=
  of_decide_eq_true hcheck

structure CertifiedHighQrScreenRow where
  row : HighQrScreenRowData
  forcingSmallChecked : row.forcing.small.check = true
  forcingLargeChecked : row.forcing.large.check = true
  forcingChecked : row.forcing.check = true
  completion : CertifiedHighQrSupportPrimeInterval
  completionLower : completion.data.lower = 0
  baseWords : List Nat
  normalLookup : Nat → List Nat
  twistLookup : Nat → List Nat
  baseCertificate :
    ModFiveCosetWordMaskCertificate
      row.M row.squareCoset baseWords
  normalCertificate :
    ∀ p ∈ row.forcing.small.primes,
      SquareWordMaskCertificate row.M p (normalLookup p)
  twistCertificate :
    ∀ p ∈ row.forcing.small.primes,
      HybridPaperTwistWordMaskCertificate
        row.M p (normalLookup p) (twistLookup p)
  normalScanChecked :
    highQrPrimeCompletionPrunedShardedSubsetScanPasses
      completion.data.primes normalLookup row.target
      row.forcing.supportLength row.forcing.stop
      row.forcing.choose row.forcing.small.primes baseWords
  twistScanChecked :
    highQrPrimeCompletionPrunedShardedSubsetScanPasses
      completion.data.primes twistLookup row.target
      row.forcing.supportLength row.forcing.stop
      row.forcing.choose row.forcing.small.primes baseWords
  checked : row.check = true

def highQrSelectedSupport
    (row : HighQrScreenRowData) (support : List Nat) : List Nat :=
  (support.filter fun p => p ≤ row.forcing.small.upper).take
    row.forcing.choose

theorem CertifiedHighQrScreenRow.selectedSupport_length
    (certificate : CertifiedHighQrScreenRow)
    (support : List Nat)
    (hLength :
      support.length = certificate.row.forcing.supportLength)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod < certificate.row.forcing.stop) :
    (highQrSelectedSupport certificate.row support).length =
      certificate.row.forcing.choose := by
  let forcingCertificate : CertifiedHighQrProductForcingRow :=
    ⟨certificate.row.forcing,
      certificate.forcingSmallChecked,
      certificate.forcingLargeChecked,
      certificate.forcingChecked⟩
  have hcount :=
    forcingCertificate.small_count
      support hLength hPrimes hIncreasing hProduct
  change certificate.row.forcing.choose ≤
    (support.filter fun p =>
      p ≤ certificate.row.forcing.small.upper).length at hcount
  simp [highQrSelectedSupport, List.length_take,
    Nat.min_eq_left hcount]

theorem CertifiedHighQrScreenRow.selectedSupport_sublist
    (certificate : CertifiedHighQrScreenRow)
    (support : List Nat) :
    List.Sublist
      (highQrSelectedSupport certificate.row support)
      (support.filter fun p =>
        p ≤ certificate.row.forcing.small.upper) :=
  List.take_sublist _ _

theorem CertifiedHighQrScreenRow.selectedSupport_sublist_table
    (certificate : CertifiedHighQrScreenRow)
    (support : List Nat)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·)) :
    List.Sublist
      (highQrSelectedSupport certificate.row support)
      certificate.row.forcing.small.primes := by
  let selected := highQrSelectedSupport certificate.row support
  let smallCertificate : CertifiedHighQrSupportPrimeInterval :=
    ⟨certificate.row.forcing.small,
      certificate.forcingSmallChecked⟩
  have hforcingValid :=
    certificate.row.forcing.check_sound
      certificate.forcingChecked
  have hselectedPairwise : selected.Pairwise (· < ·) :=
    hIncreasing.sublist
      ((certificate.selectedSupport_sublist support).trans
        List.filter_sublist)
  have hsubset :
      selected ⊆ certificate.row.forcing.small.primes := by
    intro p hp
    have hpSupport :
        p ∈ support :=
      List.mem_of_mem_filter
        (List.mem_of_mem_take hp)
    have hpUpper :
        p ≤ certificate.row.forcing.small.upper :=
      of_decide_eq_true
        (List.mem_filter.mp (List.mem_of_mem_take hp)).2
    exact (smallCertificate.mem_iff hpUpper).2
      ⟨by
        rw [hforcingValid.2.2.1]
        exact (hPrimes p hpSupport).1.pos,
        hPrimes p hpSupport⟩
  have hSubperm :
      List.Subperm selected certificate.row.forcing.small.primes :=
    List.subperm_of_subset hselectedPairwise.nodup hsubset
  exact List.sublist_of_subperm_of_pairwise
    hSubperm hselectedPairwise
      (certificate.row.forcing.small.check_sound
        certificate.forcingSmallChecked).2.1

private theorem highQrSmallFilter_prefix
    (support : List Nat) (cutoff : Nat)
    (hIncreasing : support.Pairwise (· < ·)) :
    (support.filter fun p => p ≤ cutoff) <+: support := by
  induction support with
  | nil => simp
  | cons p support ih =>
      have hparts := List.pairwise_cons.mp hIncreasing
      by_cases hp : p ≤ cutoff
      · rcases ih hparts.2 with ⟨rest, hrest⟩
        exact ⟨rest, by simp [hp, hrest]⟩
      · have hfilter :
            (support.filter fun q => q ≤ cutoff) = [] := by
          apply List.filter_eq_nil_iff.mpr
          intro q hq hqCutoff
          have hpq := hparts.1 q hq
          have hcutoffP : cutoff < p := Nat.lt_of_not_ge hp
          have hcutoffQ : cutoff < q := hcutoffP.trans hpq
          exact (not_le_of_gt hcutoffQ) (of_decide_eq_true hqCutoff)
        simp [hp, hfilter]

theorem CertifiedHighQrScreenRow.selectedSupport_eq_take
    (certificate : CertifiedHighQrScreenRow)
    (support : List Nat)
    (hLength :
      support.length = certificate.row.forcing.supportLength)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod < certificate.row.forcing.stop) :
    highQrSelectedSupport certificate.row support =
      support.take certificate.row.forcing.choose := by
  have hselectedLength :=
    certificate.selectedSupport_length
      support hLength hPrimes hIncreasing hProduct
  let small :=
    support.filter fun p =>
      p ≤ certificate.row.forcing.small.upper
  have hsmallPrefix : small <+: support := by
    simpa [small] using
      highQrSmallFilter_prefix support
        certificate.row.forcing.small.upper hIncreasing
  have hchooseSmall :
      certificate.row.forcing.choose ≤ small.length := by
    change
      (small.take certificate.row.forcing.choose).length =
        certificate.row.forcing.choose at hselectedLength
    rw [List.length_take] at hselectedLength
    exact min_eq_left_iff.mp hselectedLength
  have hchooseSupport :
      certificate.row.forcing.choose ≤ support.length :=
    hchooseSmall.trans hsmallPrefix.length_le
  have htakePrefix :=
    hsmallPrefix.take certificate.row.forcing.choose
  have htakeEq :
      small.take certificate.row.forcing.choose =
        support.take certificate.row.forcing.choose :=
    htakePrefix.eq_of_length (by
      simp [List.length_take, hchooseSmall, hchooseSupport])
  simpa [highQrSelectedSupport, small] using htakeEq

theorem CertifiedHighQrScreenRow.selectedSupport_prefix
    (certificate : CertifiedHighQrScreenRow)
    (support : List Nat)
    (hLength :
      support.length = certificate.row.forcing.supportLength)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod < certificate.row.forcing.stop) :
    highQrSelectedSupport certificate.row support <+: support := by
  rw [certificate.selectedSupport_eq_take
    support hLength hPrimes hIncreasing hProduct]
  exact List.take_prefix _ _

def highQrRootSurvivorFinset
    (M : Nat) (lookup : Nat → List Nat)
    (baseWords support : List Nat) : Finset Nat :=
  (Finset.Ico 1 (M + 1)).filter fun m =>
    wordMaskTestBit
      (hybridPaperRootSupportWords lookup support baseWords)
      (m - 1)

private theorem highQrIntersectWords_getD
    (left right : List Nat) (wordIndex : Nat) :
    (globalMixedCoreIntersectWords left right).getD wordIndex 0 =
      left.getD wordIndex 0 &&& right.getD wordIndex 0 := by
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

private theorem highQrIntersectWords_testBit
    (left right : List Nat) (index : Nat) :
    wordMaskTestBit (globalMixedCoreIntersectWords left right) index =
      (wordMaskTestBit left index && wordMaskTestBit right index) := by
  unfold wordMaskTestBit
  rw [highQrIntersectWords_getD]
  exact Nat.testBit_land _ _ _

theorem highQrSupportWords_testBit
    (lookup : Nat → List Nat) (support baseWords : List Nat)
    (index : Nat) :
    wordMaskTestBit
        (hybridPaperRootSupportWords lookup support baseWords) index =
      ((support.all fun p => wordMaskTestBit (lookup p) index) &&
        wordMaskTestBit baseWords index) := by
  induction support generalizing baseWords with
  | nil => simp [hybridPaperRootSupportWords]
  | cons p support ih =>
      simp only [hybridPaperRootSupportWords, List.all_cons]
      rw [ih]
      rw [highQrIntersectWords_testBit]
      simp only [Bool.and_assoc, Bool.and_left_comm]

private theorem highQrSupportWords_lt
    (lookup : Nat → List Nat) (support baseWords : List Nat)
    (hbase : ∀ word ∈ baseWords, word < 2 ^ 64) :
    ∀ word ∈ hybridPaperRootSupportWords lookup support baseWords,
      word < 2 ^ 64 := by
  induction support generalizing baseWords with
  | nil => exact hbase
  | cons p support ih =>
      simp only [hybridPaperRootSupportWords]
      exact ih _
        (globalMixedCoreIntersectWords_lt
          (lookup p) baseWords hbase)

private theorem highQrBitPairs_card_eq_coreCountWords
    (words : List Nat)
    (hwords : ∀ word ∈ words, word < 2 ^ 64) :
    (globalMixedBitPairs words).card =
      globalMixedCoreCountWords words := by
  rw [globalMixedBitPairs_card_eq_countWords words hwords]
  rw [globalMixedCoreCountWords_eq_map_bits_count words hwords]
  clear hwords
  induction words with
  | nil => rfl
  | cons word words ih =>
      simp [globalMixedCountWords, ih]

theorem highQrRootSurvivorFinset_card_le_coreCount
    (M : Nat) (lookup : Nat → List Nat)
    (baseWords support : List Nat)
    (hbase : ∀ word ∈ baseWords, word < 2 ^ 64) :
    (highQrRootSurvivorFinset
        M lookup baseWords support).card ≤
      globalMixedCoreCountWords
        (hybridPaperRootSupportWords lookup support baseWords) := by
  let words :=
    hybridPaperRootSupportWords lookup support baseWords
  have hwords : ∀ word ∈ words, word < 2 ^ 64 :=
    highQrSupportWords_lt lookup support baseWords hbase
  calc
    (highQrRootSurvivorFinset
        M lookup baseWords support).card ≤
        (globalMixedBitPairs words).card := by
      apply card_le_globalMixedBitPairs_of_testBit
      · intro m hm
        exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1
      · intro m hm
        exact (Finset.mem_filter.mp hm).2
    _ = globalMixedCoreCountWords words :=
      highQrBitPairs_card_eq_coreCountWords words hwords

theorem CertifiedHighQrScreenRow.baseWords_lt
    (certificate : CertifiedHighQrScreenRow) :
    ∀ word ∈ certificate.baseWords, word < 2 ^ 64 := by
  intro word hword
  exact certificate.baseCertificate.word_lt hword

theorem CertifiedHighQrScreenRow.normalSurvivor_card_le
    (certificate : CertifiedHighQrScreenRow)
    (support : List Nat)
    (hLength :
      support.length = certificate.row.forcing.supportLength)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod < certificate.row.forcing.stop) :
    (highQrRootSurvivorFinset certificate.row.M
        certificate.normalLookup certificate.baseWords
        (highQrSelectedSupport certificate.row support)).card ≤
      certificate.row.target := by
  have hselectedLength :=
    certificate.selectedSupport_length
      support hLength hPrimes hIncreasing hProduct
  have hselectedSublist :=
    certificate.selectedSupport_sublist_table
      support hPrimes hIncreasing
  have hselectedPrefix :=
    certificate.selectedSupport_prefix
      support hLength hPrimes hIncreasing hProduct
  exact
    (highQrRootSurvivorFinset_card_le_coreCount
      certificate.row.M certificate.normalLookup
      certificate.baseWords
      (highQrSelectedSupport certificate.row support)
      certificate.baseWords_lt).trans
    (highQrPrimeCompletionPrunedShardedSubsetScanPasses_sound
      certificate.completion certificate.completionLower
      certificate.normalLookup certificate.row.target
      certificate.row.forcing.supportLength
      certificate.row.forcing.stop
      certificate.row.forcing.choose
      certificate.row.forcing.small.primes certificate.baseWords
      support (highQrSelectedSupport certificate.row support)
      certificate.baseWords_lt
      (certificate.row.forcing.small.check_sound
        certificate.forcingSmallChecked).2.1
      hLength hPrimes hIncreasing hProduct
      hselectedSublist hselectedLength hselectedPrefix
      certificate.normalScanChecked)

theorem CertifiedHighQrScreenRow.twistSurvivor_card_le
    (certificate : CertifiedHighQrScreenRow)
    (support : List Nat)
    (hLength :
      support.length = certificate.row.forcing.supportLength)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod < certificate.row.forcing.stop) :
    (highQrRootSurvivorFinset certificate.row.M
        certificate.twistLookup certificate.baseWords
        (highQrSelectedSupport certificate.row support)).card ≤
      certificate.row.target := by
  have hselectedLength :=
    certificate.selectedSupport_length
      support hLength hPrimes hIncreasing hProduct
  have hselectedSublist :=
    certificate.selectedSupport_sublist_table
      support hPrimes hIncreasing
  have hselectedPrefix :=
    certificate.selectedSupport_prefix
      support hLength hPrimes hIncreasing hProduct
  exact
    (highQrRootSurvivorFinset_card_le_coreCount
      certificate.row.M certificate.twistLookup
      certificate.baseWords
      (highQrSelectedSupport certificate.row support)
      certificate.baseWords_lt).trans
    (highQrPrimeCompletionPrunedShardedSubsetScanPasses_sound
      certificate.completion certificate.completionLower
      certificate.twistLookup certificate.row.target
      certificate.row.forcing.supportLength
      certificate.row.forcing.stop
      certificate.row.forcing.choose
      certificate.row.forcing.small.primes certificate.baseWords
      support (highQrSelectedSupport certificate.row support)
      certificate.baseWords_lt
      (certificate.row.forcing.small.check_sound
        certificate.forcingSmallChecked).2.1
      hLength hPrimes hIncreasing hProduct
      hselectedSublist hselectedLength hselectedPrefix
      certificate.twistScanChecked)

theorem CertifiedHighQrScreenRow.mem_normalSurvivor
    (certificate : CertifiedHighQrScreenRow)
    (support : List Nat) {m : Nat}
    (hm : 1 ≤ m) (hmM : m ≤ certificate.row.M)
    (hsquares :
      ∀ q ∈ highQrSelectedSupport certificate.row support,
        ¬q ∣ m ∧ ∃ root : Nat, root ^ 2 ≡ m [MOD q])
    (hcoset :
      modFiveCosetAccepts certificate.row.squareCoset m = true) :
    List.Sublist
        (highQrSelectedSupport certificate.row support)
        certificate.row.forcing.small.primes →
    m ∈ highQrRootSurvivorFinset certificate.row.M
      certificate.normalLookup certificate.baseWords
      (highQrSelectedSupport certificate.row support) := by
  intro hselectedTable
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_Ico.mpr ⟨hm, by omega⟩, ?_⟩
  rw [highQrSupportWords_testBit]
  apply Bool.and_eq_true_iff.mpr
  constructor
  · apply List.all_eq_true.mpr
    intro q hq
    have hqTable := hselectedTable.subset hq
    obtain ⟨hnot, root, hsquare⟩ := hsquares q hq
    exact
      SquareWordMaskCertificate.testBit_eq_true_of_modEq_square
        (certificate.normalCertificate q hqTable)
        hm hmM hnot hsquare
  · exact certificate.baseCertificate.testBit_eq_true
      (by omega) hmM hcoset

theorem CertifiedHighQrScreenRow.mem_twistSurvivor
    (certificate : CertifiedHighQrScreenRow)
    (support : List Nat) {m : Nat}
    (hm : 1 ≤ m) (hmM : m ≤ certificate.row.M)
    (hsquares :
      ∀ q ∈ highQrSelectedSupport certificate.row support,
        ¬q ∣ 5 * m ∧ ∃ root : Nat, root ^ 2 ≡ 5 * m [MOD q])
    (hcoset :
      modFiveCosetAccepts certificate.row.squareCoset m = true)
    (hselectedTable :
      List.Sublist
        (highQrSelectedSupport certificate.row support)
        certificate.row.forcing.small.primes) :
    m ∈ highQrRootSurvivorFinset certificate.row.M
      certificate.twistLookup certificate.baseWords
      (highQrSelectedSupport certificate.row support) := by
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_Ico.mpr ⟨hm, by omega⟩, ?_⟩
  rw [highQrSupportWords_testBit]
  apply Bool.and_eq_true_iff.mpr
  constructor
  · apply List.all_eq_true.mpr
    intro q hq
    have hqTable := hselectedTable.subset hq
    obtain ⟨hnot, root, hsquare⟩ := hsquares q hq
    have hrowValid :=
      certificate.row.check_sound certificate.checked
    have hqM :
        q ≤ certificate.row.M :=
      (certificate.row.forcing.small.check_sound
          certificate.forcingSmallChecked).2.2.1
        |> List.all_eq_true.mp
        |> fun h =>
            (of_decide_eq_true (h q hqTable)).2.1.trans
            hrowValid.2.2
    exact
      HybridPaperTwistWordMaskCertificate.testBit_eq_true_of_modEq_square
        (certificate.twistCertificate q hqTable)
        (certificate.normalCertificate q hqTable)
        hqM hm hmM hnot hsquare
  · exact certificate.baseCertificate.testBit_eq_true
      (by omega) hmM hcoset

#print axioms HighQrScreenRowData.check_sound
#print axioms CertifiedHighQrScreenRow.selectedSupport_length
#print axioms CertifiedHighQrScreenRow.normalSurvivor_card_le
#print axioms CertifiedHighQrScreenRow.twistSurvivor_card_le
#print axioms CertifiedHighQrScreenRow.mem_twistSurvivor

end Erdos848
