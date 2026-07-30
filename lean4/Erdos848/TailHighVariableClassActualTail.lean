import Erdos848.TailHighVariableClassRootCertificate
import Erdos848.TailTwentyMillionSquare
import Erdos848.TailFiveMillionHallTailCore
import Erdos848.TailR263EvenThreeTail

namespace Erdos848

/-!
# Valuation-sensitive certified variable tail

This module consumes a class-root row for each actual pivot.  The
intermediate reciprocal-square payment and the three-pivot Hall
multiplicity are theorem-backed; the row's sole nonstructural premise is its
prime-count certificate.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem hallBaseTailSquareCount_ratio_le_variableClass
    (rootRow : CertifiedHighVariableClassRootRow)
    {N : Nat} {B : Finset Nat} {pivot cutoff : Nat}
    {valuation : FiveMillionValuationClass}
    {squareEnvelope : Rat}
    (hLower : rootRow.row.lower ≤ N)
    (hUpper : N ≤ rootRow.row.upper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotPart :
      pivot ∈ fiveMillionValuationPart N B valuation)
    (hAccept : rootRow.row.rootClass.Accepts valuation)
    (hcutUpper : cutoff ≤ N / rootRow.row.split)
    (hfive : 5 ≤ cutoff)
    (hsquare : ∀ s : Finset Nat,
      (∀ p ∈ s, Nat.Prime p) →
      (∀ p ∈ s, cutoff < p) →
      (∑ p ∈ s, reciprocalSquareQ p) ≤ squareEnvelope) :
    hallBaseTailSquareCount N B cutoff pivot / N ≤
      2 * squareEnvelope / 25 +
        rootRow.row.rootEnvelope / 3 := by
  let primes :=
    tailIntermediatePrimes cutoff
      (N / rootRow.row.split)
  have hvalid := rootRow.row.check_sound rootRow.checked
  have hN : 0 < N := by
    exact (by norm_num : 0 < 5_000_000).trans_le
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
      B pivot cutoff (N / rootRow.row.split) hN
  have hhigh :=
    rootRow.actualHighPoints_ratio_le
      hLower hUpper hBout hpivotPart hAccept
        (cutoff := cutoff)
  dsimp [primes] at hmedium hsquare' hprime hcut hsplit
  calc
    hallBaseTailSquareCount N B cutoff pivot / N ≤
      ((twoBasePrimeSquareUnion N pivot
        (tailIntermediatePrimes cutoff
          (N / rootRow.row.split))).card : Rat) / N +
      ((twoBaseHighTailSquarePoints
        N pivot (N / rootRow.row.split)).card : Rat) / N :=
      hsplit
    _ ≤
        (2 * (∑ p ∈ tailIntermediatePrimes cutoff
              (N / rootRow.row.split),
              reciprocalSquareQ p) / 25 +
          2 * ((Nat.primeCounting
              (N / rootRow.row.split) -
            Nat.primeCounting cutoff : Nat) : Rat) / N) +
        ((twoBaseHighTailSquarePoints
          N pivot (N / rootRow.row.split)).card : Rat) / N := by
      gcongr
    _ =
        2 * (∑ p ∈ tailIntermediatePrimes cutoff
            (N / rootRow.row.split),
            reciprocalSquareQ p) / 25 +
        (2 * ((Nat.primeCounting
              (N / rootRow.row.split) -
            Nat.primeCounting cutoff : Nat) : Rat) +
          ((twoBaseHighTailSquarePoints
            N pivot (N / rootRow.row.split)).card : Rat)) / N := by
      ring
    _ ≤ 2 * squareEnvelope / 25 +
        rootRow.row.rootEnvelope / 3 := by
      apply add_le_add
      · gcongr
      · simpa [add_comm] using hhigh

theorem
    hallBaseTailSquarePayment_threeTwo_variableClass_of_perPivot
    {rootEnvelope : Rat}
    {N : Nat} {B pivots : Finset Nat} {cutoff : Nat}
    {squareEnvelope : Rat}
    (hcard : pivots.card = 3)
    (hper : ∀ pivot ∈ pivots,
      hallBaseTailSquareCount N B cutoff pivot / N ≤
        2 * squareEnvelope / 25 + rootEnvelope / 3) :
    hallBaseTailSquarePayment N B pivots cutoff 2 / N ≤
      3 * squareEnvelope / 25 + rootEnvelope / 2 := by
  have hsum :
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B cutoff pivot / N) ≤
      3 * (2 * squareEnvelope / 25 +
        rootEnvelope / 3) := by
    calc
      (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B cutoff pivot / N) ≤
        ∑ _pivot ∈ pivots,
          (2 * squareEnvelope / 25 +
            rootEnvelope / 3) :=
        Finset.sum_le_sum fun pivot hpivot =>
          hper pivot hpivot
      _ = (pivots.card : Rat) *
          (2 * squareEnvelope / 25 +
            rootEnvelope / 3) := by
        simp
        ring
      _ = 3 * (2 * squareEnvelope / 25 +
          rootEnvelope / 3) := by
        rw [hcard]
        norm_num
  unfold hallBaseTailSquarePayment
  rw [hcard]
  rw [show (((3 : Nat) : Rat) -
      ((2 : Nat) : Rat) + 1) = 2 by norm_num]
  change
    (∑ pivot ∈ pivots,
      hallBaseTailSquareCount N B cutoff pivot) / 2 / N ≤ _
  calc
    (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B cutoff pivot) / 2 / N =
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B cutoff pivot / N) / 2 := by
      rw [← Finset.sum_div]
      ring
    _ ≤ (3 * (2 * squareEnvelope / 25 +
        rootEnvelope / 3)) / 2 :=
      div_le_div_of_nonneg_right hsum (by norm_num)
    _ = 3 * squareEnvelope / 25 +
        rootEnvelope / 2 := by ring

theorem
    hallBaseTailSquarePayment_threeTwo_variableClass_even23_ratio_le
    (rootRow : CertifiedHighVariableClassRootRow)
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
  rcases hvalid with
    ⟨_hFive, _hRange, _hSplit, hPrimeFloor,
      _hRootFloor, _hFourth, _hBudget⟩
  have hcutUpper : 23 ≤ N / rootRow.row.split := by
    have hmono :
        rootRow.row.lower / rootRow.row.split ≤
          N / rootRow.row.split :=
      Nat.div_le_div_right hLower
    omega
  apply
    hallBaseTailSquarePayment_threeTwo_variableClass_of_perPivot
      hcard
  intro pivot hpivot
  obtain ⟨valuation, hpivotPart, hAccept⟩ :=
    hpivotsClass pivot hpivot
  apply hallBaseTailSquareCount_ratio_le_variableClass
    rootRow hLower hUpper hBout hpivotPart hAccept
      hcutUpper (by norm_num)
  intro s hprime hcut
  exact fiveMillionSquareTail23_kernel_close s hprime hcut

theorem
    hallBaseTailSquarePayment_threeTwo_variableClass_odd19_ratio_le
    (rootRow : CertifiedHighVariableClassRootRow)
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
  rcases hvalid with
    ⟨_hFive, _hRange, _hSplit, hPrimeFloor,
      _hRootFloor, _hFourth, _hBudget⟩
  have hcutUpper : 19 ≤ N / rootRow.row.split := by
    have hmono :
        rootRow.row.lower / rootRow.row.split ≤
          N / rootRow.row.split :=
      Nat.div_le_div_right hLower
    omega
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
    apply hallBaseTailSquareCount_ratio_le_variableClass
      rootRow hLower hUpper hBout hpivotPart hAccept
        hcutUpper (by norm_num)
    intro s hprime hcut
    exact le_of_lt (finitePrimeSquareTail19_lt s hprime hcut)
  simpa [twentyMillionSquareOdd_eq_tail19] using hpayment

#print axioms
  hallBaseTailSquarePayment_threeTwo_variableClass_even23_ratio_le
#print axioms
  hallBaseTailSquarePayment_threeTwo_variableClass_odd19_ratio_le

end Erdos848
