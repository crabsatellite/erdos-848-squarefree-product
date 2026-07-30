import Erdos848.TailHybridSmallPrimeDiagonalData
import Erdos848.TailHybridSmallPrimePaymentCache
import Erdos848.TailPaperDiagonalFastCounts

namespace Erdos848

/-!
# Lightweight data and Boolean checks for the hybrid paper grid

Generated row leaves import this module.  The semantic diagonal proof is kept
in `TailHybridPaperDiagonalGridChecker`, so each leaf does not repeatedly
load and recheck the much larger small-prime proof.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

inductive HybridPaperDiagonalRegime where
  | twoHundredToThreeHundred
  | threeHundredToFiveHundred
  | fiveHundredToOneBillion
  | oneToTwoBillion
  deriving DecidableEq, Fintype

def HybridPaperDiagonalRegime.lower :
    HybridPaperDiagonalRegime → Nat
  | .twoHundredToThreeHundred => 200_000_000
  | .threeHundredToFiveHundred => 300_000_000
  | .fiveHundredToOneBillion => 500_000_000
  | .oneToTwoBillion => 1_000_000_000

def HybridPaperDiagonalRegime.stop :
    HybridPaperDiagonalRegime → Nat
  | .twoHundredToThreeHundred => 300_000_000
  | .threeHundredToFiveHundred => 500_000_000
  | .fiveHundredToOneBillion => 1_000_000_000
  | .oneToTwoBillion => 2_000_000_000

def hybridPaperDiagonalRegimeAt
    (N : Nat) : HybridPaperDiagonalRegime :=
  if N < 300_000_000 then .twoHundredToThreeHundred
  else if N < 500_000_000 then .threeHundredToFiveHundred
  else if N < 1_000_000_000 then .fiveHundredToOneBillion
  else .oneToTwoBillion

theorem HybridPaperDiagonalRegime.eq_regimeAt_of_mem
    {regime : HybridPaperDiagonalRegime}
    {rowLower rowUpper N : Nat}
    (hrange :
      regime.lower ≤ rowLower ∧ rowLower ≤ rowUpper ∧
        rowUpper < regime.stop)
    (hLower : rowLower ≤ N) (hUpper : N ≤ rowUpper) :
    regime = hybridPaperDiagonalRegimeAt N := by
  cases regime with
  | twoHundredToThreeHundred =>
      have h300 : N < 300_000_000 := by
        simpa [HybridPaperDiagonalRegime.stop] using
          lt_of_le_of_lt hUpper hrange.2.2
      simp [hybridPaperDiagonalRegimeAt, h300]
  | threeHundredToFiveHundred =>
      have h300 : ¬ N < 300_000_000 := by
        simp [HybridPaperDiagonalRegime.lower] at hrange
        omega
      have h500 : N < 500_000_000 := by
        simpa [HybridPaperDiagonalRegime.stop] using
          lt_of_le_of_lt hUpper hrange.2.2
      simp [hybridPaperDiagonalRegimeAt, h300, h500]
  | fiveHundredToOneBillion =>
      have h500 : ¬ N < 500_000_000 := by
        simp [HybridPaperDiagonalRegime.lower] at hrange
        omega
      have h1000 : N < 1_000_000_000 := by
        simpa [HybridPaperDiagonalRegime.stop] using
          lt_of_le_of_lt hUpper hrange.2.2
      have h300 : ¬ N < 300_000_000 := by omega
      simp [hybridPaperDiagonalRegimeAt, h300, h500, h1000]
  | oneToTwoBillion =>
      have h1000 : ¬ N < 1_000_000_000 := by
        simp [HybridPaperDiagonalRegime.lower] at hrange
        omega
      have h300 : ¬ N < 300_000_000 := by omega
      have h500 : ¬ N < 500_000_000 := by omega
      simp [hybridPaperDiagonalRegimeAt, h300, h500, h1000]

/-- Conservative ceilings from the hybrid profiler, denominator `10^9`. -/
def HybridPaperDiagonalRegime.envelopeNumerator :
    HybridPaperDiagonalRegime → PaperDiagonalSelection → Nat
  | .twoHundredToThreeHundred, .unrestricted => 25_590_324
  | .twoHundredToThreeHundred, .concentrated _ _ => 20_168_539
  | .twoHundredToThreeHundred, .lowTwoAdic => 16_041_224
  | .twoHundredToThreeHundred, .evenTwoCell _ => 16_872_533
  | .twoHundredToThreeHundred, .oddUnion => 12_795_680
  | .twoHundredToThreeHundred, .oddPlusCell _ _ => 7_197_027
  | .twoHundredToThreeHundred, .oneOdd _ => 6_399_705
  | .twoHundredToThreeHundred, .oneOddCell _ _ => 722_825
  | .threeHundredToFiveHundred, .unrestricted => 25_613_263
  | .threeHundredToFiveHundred, .concentrated _ _ => 20_082_644
  | .threeHundredToFiveHundred, .lowTwoAdic => 16_048_295
  | .threeHundredToFiveHundred, .evenTwoCell _ => 16_697_367
  | .threeHundredToFiveHundred, .oddUnion => 12_790_938
  | .threeHundredToFiveHundred, .oddPlusCell _ _ => 7_163_320
  | .threeHundredToFiveHundred, .oneOdd _ => 6_398_197
  | .threeHundredToFiveHundred, .oneOddCell _ _ => 721_318
  | .fiveHundredToOneBillion, .unrestricted => 25_676_337
  | .fiveHundredToOneBillion, .concentrated _ _ => 20_053_210
  | .fiveHundredToOneBillion, .lowTwoAdic => 16_104_173
  | .fiveHundredToOneBillion, .evenTwoCell _ => 16_548_570
  | .fiveHundredToOneBillion, .oddUnion => 12_792_225
  | .fiveHundredToOneBillion, .oddPlusCell _ _ => 7_137_947
  | .fiveHundredToOneBillion, .oneOdd _ => 6_404_223
  | .fiveHundredToOneBillion, .oneOddCell _ _ => 727_777
  | .oneToTwoBillion, .unrestricted => 25_805_423
  | .oneToTwoBillion, .concentrated _ _ => 20_154_575
  | .oneToTwoBillion, .lowTwoAdic => 16_229_817
  | .oneToTwoBillion, .evenTwoCell _ => 16_623_300
  | .oneToTwoBillion, .oddUnion => 12_806_593
  | .oneToTwoBillion, .oddPlusCell _ _ => 7_137_733
  | .oneToTwoBillion, .oneOdd _ => 6_419_567
  | .oneToTwoBillion, .oneOddCell _ _ => 743_132

structure HybridPaperDiagonalGridRow where
  regime : HybridPaperDiagonalRegime
  lower : Nat
  upper : Nat
  counts : TruncatedDiagonalAtomCounts
  smallPrimeCache : HybridSmallPrimePaymentCache

def HybridPaperDiagonalGridRow.rangeValid
    (row : HybridPaperDiagonalGridRow) : Prop :=
  row.regime.lower ≤ row.lower ∧ row.lower ≤ row.upper ∧
    row.upper < row.regime.stop

def HybridPaperDiagonalGridRow.budgetsValid
    (row : HybridPaperDiagonalGridRow) (cutoff : Nat) : Prop :=
  row.smallPrimeCache.Valid row.upper ∧
    ∀ selection,
      (row.counts.fastSum selection +
        row.smallPrimeCache.payment selection +
        paperLargeSquarePayment cutoff row.upper selection.isOdd) *
          1_000_000_000 ≤
        row.regime.envelopeNumerator selection * row.lower

theorem HybridPaperDiagonalGridRow.semanticBudget
    {row : HybridPaperDiagonalGridRow} {cutoff : Nat}
    (hvalid : row.budgetsValid cutoff)
    (selection : PaperDiagonalSelection) :
    (row.counts.fastSum selection +
      paperSmallPrimePayment row.upper selection +
      paperLargeSquarePayment cutoff row.upper selection.isOdd) *
        1_000_000_000 ≤
      row.regime.envelopeNumerator selection * row.lower := by
  rw [← row.smallPrimeCache.payment_eq hvalid.1 selection]
  exact hvalid.2 selection

instance (row : HybridPaperDiagonalGridRow) :
    Decidable row.rangeValid := by
  unfold HybridPaperDiagonalGridRow.rangeValid
  infer_instance

instance (row : HybridPaperDiagonalGridRow) (cutoff : Nat) :
    Decidable (row.budgetsValid cutoff) := by
  unfold HybridPaperDiagonalGridRow.budgetsValid
  infer_instance

def HybridPaperDiagonalGridRow.check
    (row : HybridPaperDiagonalGridRow)
    (targets : TruncatedDiagonalAtom → IndexedMarkerData)
    (cutoff : Nat) : Bool :=
  truncatedDiagonalAtomCutoffsPass targets row.upper row.counts &&
    (decide row.rangeValid && decide (row.budgetsValid cutoff))

theorem HybridPaperDiagonalGridRow.check_sound
    {row : HybridPaperDiagonalGridRow}
    {targets : TruncatedDiagonalAtom → IndexedMarkerData}
    {cutoff : Nat}
    (hcheck : row.check targets cutoff = true) :
    (∀ atom, (targets atom).Cutoff row.upper
      (row.counts.count atom)) ∧
      row.rangeValid ∧ row.budgetsValid cutoff := by
  have hparts := Bool.and_eq_true_iff.mp hcheck
  have hrest := Bool.and_eq_true_iff.mp hparts.2
  exact ⟨truncatedDiagonalAtomCutoffsPass_sound hparts.1,
    of_decide_eq_true hrest.1, of_decide_eq_true hrest.2⟩

structure CertifiedHybridPaperDiagonalGridRow
    (targets : TruncatedDiagonalAtom → IndexedMarkerData)
    (cutoff : Nat) where
  row : HybridPaperDiagonalGridRow
  checked : row.check targets cutoff = true

def hybridPaperDiagonalGridCoversFrom
    {targets : TruncatedDiagonalAtom → IndexedMarkerData}
    {cutoff : Nat} (start stop : Nat) :
    List (CertifiedHybridPaperDiagonalGridRow targets cutoff) → Bool
  | [] => decide (start = stop)
  | certificate :: rest =>
      decide (certificate.row.lower = start ∧
        start ≤ certificate.row.upper) &&
      hybridPaperDiagonalGridCoversFrom
        (certificate.row.upper + 1) stop rest

theorem hybridPaperDiagonalGridCoversFrom_append
    {targets : TruncatedDiagonalAtom → IndexedMarkerData}
    {cutoff start middle stop : Nat}
    {left right :
      List (CertifiedHybridPaperDiagonalGridRow targets cutoff)}
    (hleft :
      hybridPaperDiagonalGridCoversFrom start middle left = true)
    (hright :
      hybridPaperDiagonalGridCoversFrom middle stop right = true) :
    hybridPaperDiagonalGridCoversFrom start stop (left ++ right) = true := by
  induction left generalizing start with
  | nil =>
      change decide (start = middle) = true at hleft
      have hstart : start = middle := of_decide_eq_true hleft
      subst middle
      simpa using hright
  | cons certificate rest ih =>
      change
        (decide
            (certificate.row.lower = start ∧
              start ≤ certificate.row.upper) &&
          hybridPaperDiagonalGridCoversFrom
            (certificate.row.upper + 1) middle rest) = true at hleft
      change
        (decide
            (certificate.row.lower = start ∧
              start ≤ certificate.row.upper) &&
          hybridPaperDiagonalGridCoversFrom
            (certificate.row.upper + 1) stop (rest ++ right)) = true
      have hparts := Bool.and_eq_true_iff.mp hleft
      exact Bool.and_eq_true_iff.mpr
        ⟨hparts.1, ih hparts.2⟩

theorem exists_certifiedHybridPaperDiagonalGridRow_of_cover
    {targets : TruncatedDiagonalAtom → IndexedMarkerData}
    {cutoff start stop N : Nat}
    {rows : List (CertifiedHybridPaperDiagonalGridRow targets cutoff)}
    (hcover : hybridPaperDiagonalGridCoversFrom start stop rows = true)
    (hstart : start ≤ N) (hstop : N < stop) :
    ∃ certificate ∈ rows,
      certificate.row.lower ≤ N ∧ N ≤ certificate.row.upper := by
  induction rows generalizing start with
  | nil =>
      change decide (start = stop) = true at hcover
      have heq : start = stop := of_decide_eq_true hcover
      omega
  | cons certificate rest ih =>
      change
        (decide (certificate.row.lower = start ∧
          start ≤ certificate.row.upper) &&
          hybridPaperDiagonalGridCoversFrom
            (certificate.row.upper + 1) stop rest) = true at hcover
      have hparts := Bool.and_eq_true_iff.mp hcover
      have hfirst :
          certificate.row.lower = start ∧
            start ≤ certificate.row.upper :=
        of_decide_eq_true hparts.1
      by_cases hNUpper : N ≤ certificate.row.upper
      · exact ⟨certificate, by simp, hfirst.1 ▸ hstart, hNUpper⟩
      · obtain ⟨found, hfound, hlower, hupper⟩ :=
          ih hparts.2 (by omega)
        exact ⟨found, by simp [hfound], hlower, hupper⟩

#print axioms HybridPaperDiagonalGridRow.check_sound
#print axioms hybridPaperDiagonalGridCoversFrom_append
#print axioms exists_certifiedHybridPaperDiagonalGridRow_of_cover

end Erdos848
