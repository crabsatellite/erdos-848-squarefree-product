import Erdos848.TailHighQrRootEnvelopeCertificate
import Erdos848.TailHighVariableClassActualTail

namespace Erdos848

/-!
# Hall-tail consumer for QR-screened root rows

The intermediate-prime part is unchanged from the analytic root route.  Only
the theorem proving the high transformed-root payment is replaced by the
kernel-checked QR row.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem hallBaseTailSquareCount_ratio_le_qrClass
    (rootRow : CertifiedHighQrRootEnvelopeRow)
    {N : Nat} {B : Finset Nat} {pivot cutoff : Nat}
    {valuation : FiveMillionValuationClass}
    {squareEnvelope : Rat}
    (hLower : rootRow.row.lower ≤ N)
    (hUpper : N ≤ rootRow.row.upper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotPart :
      pivot ∈ fiveMillionValuationPart N B valuation)
    (hAccept : rootRow.row.rootClass.Accepts valuation)
    (hcutUpper : cutoff ≤ N / highQrSplit)
    (hfive : 5 ≤ cutoff)
    (hsquare : ∀ s : Finset Nat,
      (∀ p ∈ s, Nat.Prime p) →
      (∀ p ∈ s, cutoff < p) →
      (∑ p ∈ s, reciprocalSquareQ p) ≤ squareEnvelope) :
    hallBaseTailSquareCount N B cutoff pivot / N ≤
      2 * squareEnvelope / 25 +
        rootRow.row.rootEnvelope / 3 := by
  let primes :=
    tailIntermediatePrimes cutoff (N / highQrSplit)
  have hvalid := rootRow.row.check_sound rootRow.checked
  have hN : 0 < N := by
    exact (by norm_num : 0 < 2_000_000_000).trans_le
      (hvalid.1.trans hLower)
  have hmedium :=
    twoBaseIntermediatePrimeSquareUnion_ratio_le
      (pivot := pivot) hN hcutUpper hfive
  have hprime : ∀ p ∈ primes, Nat.Prime p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).1
  have hcut : ∀ p ∈ primes, cutoff < p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).2.1
  have hsquare' :
      (∑ p ∈ primes, reciprocalSquareQ p) ≤
        squareEnvelope :=
    hsquare primes hprime hcut
  have hsplit :=
    hallBaseTailSquareCount_ratio_le_intermediate_add_high
      B pivot cutoff (N / highQrSplit) hN
  have hhigh :=
    rootRow.actualHighPoints_ratio_le
      hLower hUpper hBout hpivotPart hAccept
        (cutoff := cutoff)
  dsimp [primes] at hmedium hsquare' hprime hcut hsplit
  calc
    hallBaseTailSquareCount N B cutoff pivot / N ≤
      ((twoBasePrimeSquareUnion N pivot
        (tailIntermediatePrimes cutoff
          (N / highQrSplit))).card : Rat) / N +
      ((twoBaseHighTailSquarePoints
        N pivot (N / highQrSplit)).card : Rat) / N :=
      hsplit
    _ ≤
        (2 * (∑ p ∈ tailIntermediatePrimes cutoff
              (N / highQrSplit),
              reciprocalSquareQ p) / 25 +
          2 * ((Nat.primeCounting (N / highQrSplit) -
            Nat.primeCounting cutoff : Nat) : Rat) / N) +
        ((twoBaseHighTailSquarePoints
          N pivot (N / highQrSplit)).card : Rat) / N := by
      gcongr
    _ =
        2 * (∑ p ∈ tailIntermediatePrimes cutoff
            (N / highQrSplit),
            reciprocalSquareQ p) / 25 +
        (2 * ((Nat.primeCounting (N / highQrSplit) -
            Nat.primeCounting cutoff : Nat) : Rat) +
          ((twoBaseHighTailSquarePoints
            N pivot (N / highQrSplit)).card : Rat)) / N := by
      ring
    _ ≤ 2 * squareEnvelope / 25 +
        rootRow.row.rootEnvelope / 3 := by
      apply add_le_add
      · gcongr
      · simpa [add_comm] using hhigh

theorem
    hallBaseTailSquarePayment_threeTwo_qrClass_even23_ratio_le
    (rootRow : CertifiedHighQrRootEnvelopeRow)
    {N : Nat} {B pivots : Finset Nat}
    (hLower : rootRow.row.lower ≤ N)
    (hUpper : N ≤ rootRow.row.upper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsClass :
      ∀ pivot ∈ pivots,
        ∃ valuation : FiveMillionValuationClass,
          pivot ∈ fiveMillionValuationPart N B valuation ∧
            rootRow.row.rootClass.Accepts valuation)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 23 2 / N ≤
      3 * fiveMillionSquareTail23Envelope / 25 +
        rootRow.row.rootEnvelope / 2 := by
  have hvalid := rootRow.row.check_sound rootRow.checked
  have hAnchor :
      anchoredPrimePoint ≤ rootRow.row.lower / highQrSplit :=
    hvalid.2.2.2.1
  have hcutUpper : 23 ≤ N / highQrSplit := by
    have hmono :
        rootRow.row.lower / highQrSplit ≤
          N / highQrSplit :=
      Nat.div_le_div_right hLower
    exact
      (by norm_num [anchoredPrimePoint] :
          23 ≤ anchoredPrimePoint).trans
        (hAnchor.trans hmono)
  apply
    hallBaseTailSquarePayment_threeTwo_variableClass_of_perPivot
      hcard
  intro pivot hpivot
  obtain ⟨valuation, hpivotPart, hAccept⟩ :=
    hpivotsClass pivot hpivot
  apply hallBaseTailSquareCount_ratio_le_qrClass
    rootRow hLower hUpper hBout hpivotPart hAccept
      hcutUpper (by norm_num)
  intro s hprime hcut
  exact fiveMillionSquareTail23_kernel_close s hprime hcut

theorem
    hallBaseTailSquarePayment_threeTwo_qrClass_odd19_ratio_le
    (rootRow : CertifiedHighQrRootEnvelopeRow)
    {N : Nat} {B pivots : Finset Nat}
    (hLower : rootRow.row.lower ≤ N)
    (hUpper : N ≤ rootRow.row.upper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsClass :
      ∀ pivot ∈ pivots,
        ∃ valuation : FiveMillionValuationClass,
          pivot ∈ fiveMillionValuationPart N B valuation ∧
            rootRow.row.rootClass.Accepts valuation)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 19 2 / N ≤
      twentyMillionSquareOdd +
        rootRow.row.rootEnvelope / 2 := by
  have hvalid := rootRow.row.check_sound rootRow.checked
  have hAnchor :
      anchoredPrimePoint ≤ rootRow.row.lower / highQrSplit :=
    hvalid.2.2.2.1
  have hcutUpper : 19 ≤ N / highQrSplit := by
    have hmono :
        rootRow.row.lower / highQrSplit ≤
          N / highQrSplit :=
      Nat.div_le_div_right hLower
    exact
      (by norm_num [anchoredPrimePoint] :
          19 ≤ anchoredPrimePoint).trans
        (hAnchor.trans hmono)
  have hpayment :
      hallBaseTailSquarePayment N B pivots 19 2 / N ≤
        3 * primeSquareTail19Envelope / 25 +
          rootRow.row.rootEnvelope / 2 := by
    apply
      hallBaseTailSquarePayment_threeTwo_variableClass_of_perPivot
        hcard
    intro pivot hpivot
    obtain ⟨valuation, hpivotPart, hAccept⟩ :=
      hpivotsClass pivot hpivot
    apply hallBaseTailSquareCount_ratio_le_qrClass
      rootRow hLower hUpper hBout hpivotPart hAccept
        hcutUpper (by norm_num)
    intro s hprime hcut
    exact le_of_lt (finitePrimeSquareTail19_lt s hprime hcut)
  simpa [twentyMillionSquareOdd_eq_tail19] using hpayment

#print axioms
  hallBaseTailSquarePayment_threeTwo_qrClass_even23_ratio_le
#print axioms
  hallBaseTailSquarePayment_threeTwo_qrClass_odd19_ratio_le

end Erdos848
