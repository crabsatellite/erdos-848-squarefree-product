import Erdos848.TailTwentyMillionRootActualRows
import Erdos848.TailTwentyMillionSquare
import Erdos848.TailFiveMillionHallTailCore
import Erdos848.TailTwentyMillionPivotAllocation
import Erdos848.TailR263EvenThreeTail

namespace Erdos848

/-!
# Literal three-pivot tail payments on the twenty-million block

The reciprocal-square main term is bounded analytically in the kernel.  The
generated root certificate is used only for the endpoint/high-prime term.
The three literal pivot counts are then aggregated with the denominator two
from the threshold-two Hall sieve.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem hallBaseTailSquareCount_ratio_le_twentyMillion_of_high
    {row : TwentyMillionRootRow}
    {N cutoff : Nat} {B : Finset Nat} {pivot : Nat}
    {squareEnvelope : Rat}
    (hN : 0 < N)
    (hcutUpper : cutoff ≤ N / row.split)
    (hfive : 5 ≤ cutoff)
    (hrowCutoff : row.cutoff ≤ cutoff)
    (hsquare : ∀ s : Finset Nat,
      (∀ p ∈ s, Nat.Prime p) →
      (∀ p ∈ s, cutoff < p) →
      (∑ p ∈ s, reciprocalSquareQ p) ≤ squareEnvelope)
    (hhigh :
      (((twoBaseHighTailSquarePoints
          N pivot (N / row.split)).card : Rat) +
        2 * ((Nat.primeCounting (N / row.split) -
          Nat.primeCounting row.cutoff : Nat) : Rat)) / N ≤
        row.envelope / 3) :
    hallBaseTailSquareCount N B cutoff pivot / N ≤
      2 * squareEnvelope / 25 + row.envelope / 3 := by
  let primes := tailIntermediatePrimes cutoff (N / row.split)
  have hmedium := twoBaseIntermediatePrimeSquareUnion_ratio_le
    (pivot := pivot) hN hcutUpper hfive
  have hprime : ∀ p ∈ primes, Nat.Prime p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).1
  have hcut : ∀ p ∈ primes, cutoff < p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).2.1
  have hsquare' :
      (∑ p ∈ primes, reciprocalSquareQ p) ≤ squareEnvelope :=
    hsquare primes hprime hcut
  have hsplit := hallBaseTailSquareCount_ratio_le_intermediate_add_high
    B pivot cutoff (N / row.split) hN
  have hpi :
      Nat.primeCounting row.cutoff ≤ Nat.primeCounting cutoff :=
    Nat.monotone_primeCounting hrowCutoff
  have hdelta :
      Nat.primeCounting (N / row.split) -
          Nat.primeCounting cutoff ≤
        Nat.primeCounting (N / row.split) -
          Nat.primeCounting row.cutoff :=
    Nat.sub_le_sub_left hpi _
  dsimp [primes] at hmedium hsquare' hprime hcut
  calc
    hallBaseTailSquareCount N B cutoff pivot / N ≤
        ((twoBasePrimeSquareUnion N pivot
          (tailIntermediatePrimes cutoff
            (N / row.split))).card : Rat) / N +
        ((twoBaseHighTailSquarePoints
          N pivot (N / row.split)).card : Rat) / N :=
      hsplit
    _ ≤
        (2 * (∑ p ∈ tailIntermediatePrimes cutoff
              (N / row.split), reciprocalSquareQ p) / 25 +
          2 * ((Nat.primeCounting (N / row.split) -
            Nat.primeCounting cutoff : Nat) : Rat) / N) +
        ((twoBaseHighTailSquarePoints
          N pivot (N / row.split)).card : Rat) / N := by
      gcongr
    _ = 2 * (∑ p ∈ tailIntermediatePrimes cutoff
            (N / row.split), reciprocalSquareQ p) / 25 +
        (2 * ((Nat.primeCounting (N / row.split) -
            Nat.primeCounting cutoff : Nat) : Rat) +
          ((twoBaseHighTailSquarePoints
            N pivot (N / row.split)).card : Rat)) / N := by ring
    _ ≤ 2 * (∑ p ∈ tailIntermediatePrimes cutoff
            (N / row.split), reciprocalSquareQ p) / 25 +
        (2 * ((Nat.primeCounting (N / row.split) -
            Nat.primeCounting row.cutoff : Nat) : Rat) +
          ((twoBaseHighTailSquarePoints
            N pivot (N / row.split)).card : Rat)) / N := by
      gcongr
    _ ≤ 2 * squareEnvelope / 25 + row.envelope / 3 := by
      apply add_le_add
      · gcongr
      · simpa [add_comm] using hhigh

private theorem hallBaseTailSquarePayment_threeTwo_twentyMillion_of_perPivot
    {row : TwentyMillionRootRow}
    {N cutoff : Nat} {B pivots : Finset Nat}
    {squareEnvelope : Rat}
    (hcard : pivots.card = 3)
    (hper : ∀ pivot ∈ pivots,
      hallBaseTailSquareCount N B cutoff pivot / N ≤
        2 * squareEnvelope / 25 + row.envelope / 3) :
    hallBaseTailSquarePayment N B pivots cutoff 2 / N ≤
      3 * squareEnvelope / 25 + row.envelope / 2 := by
  have hsum :
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B cutoff pivot / N) ≤
      3 * (2 * squareEnvelope / 25 + row.envelope / 3) := by
    calc
      (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B cutoff pivot / N) ≤
          ∑ _pivot ∈ pivots,
            (2 * squareEnvelope / 25 + row.envelope / 3) :=
        Finset.sum_le_sum fun pivot hpivot => hper pivot hpivot
      _ = (pivots.card : Rat) *
          (2 * squareEnvelope / 25 + row.envelope / 3) := by
        simp
        ring
      _ = 3 * (2 * squareEnvelope / 25 + row.envelope / 3) := by
        rw [hcard]
        norm_num
  unfold hallBaseTailSquarePayment
  rw [hcard]
  rw [show (((3 : Nat) : Rat) - ((2 : Nat) : Rat) + 1) = 2 by
    norm_num]
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
    _ ≤ (3 *
        (2 * squareEnvelope / 25 + row.envelope / 3)) / 2 :=
      div_le_div_of_nonneg_right hsum (by norm_num)
    _ = 3 * squareEnvelope / 25 + row.envelope / 2 := by ring

theorem hallBaseTailSquarePayment_threeTwo_twentyMillion_evenOne_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenOne)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 47 2 / N ≤
      twentyMillionSquareEven + twentyMillionRootEvenOne / 2 := by
  have hN : 0 < N := by
    have := hLower
    norm_num [twentyMillionLower] at this ⊢
    omega
  have hper : ∀ pivot ∈ pivots,
      hallBaseTailSquareCount N B 47 pivot / N ≤
        2 * primeSquareTail47Envelope / 25 +
          TwentyMillionRootRow.evenOne.envelope / 3 := by
    intro pivot hpivot
    have hpivotPart := hpivots hpivot
    apply hallBaseTailSquareCount_ratio_le_twentyMillion_of_high
      (row := .evenOne) hN
    · norm_num [twentyMillionLower, TwentyMillionRootRow.split] at hLower ⊢
      omega
    · norm_num
    · norm_num [TwentyMillionRootRow.cutoff]
    · intro s hprime hcut
      exact le_of_lt (finitePrimeSquareTail47_lt s hprime hcut)
    · exact actualTwentyMillionEvenOneHighPoints
        hLower hUpper hBout
        (fiveMillionValuationPart_subset_residual
          N B .evenOne hpivotPart)
        (fiveMillionValuationPart_evenOne hpivotPart)
  have hpayment :=
    hallBaseTailSquarePayment_threeTwo_twentyMillion_of_perPivot
      (row := .evenOne) hcard hper
  simpa [TwentyMillionRootRow.envelope,
    twentyMillionSquareEven_eq_tail47] using hpayment

theorem hallBaseTailSquarePayment_threeTwo_twentyMillion_evenTwo_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenTwo)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 47 2 / N ≤
      twentyMillionSquareEven + twentyMillionRootEvenTwo / 2 := by
  have hN : 0 < N := by
    have := hLower
    norm_num [twentyMillionLower] at this ⊢
    omega
  have hper : ∀ pivot ∈ pivots,
      hallBaseTailSquareCount N B 47 pivot / N ≤
        2 * primeSquareTail47Envelope / 25 +
          TwentyMillionRootRow.evenTwo.envelope / 3 := by
    intro pivot hpivot
    have hpivotPart := hpivots hpivot
    apply hallBaseTailSquareCount_ratio_le_twentyMillion_of_high
      (row := .evenTwo) hN
    · norm_num [twentyMillionLower, TwentyMillionRootRow.split] at hLower ⊢
      omega
    · norm_num
    · norm_num [TwentyMillionRootRow.cutoff]
    · intro s hprime hcut
      exact le_of_lt (finitePrimeSquareTail47_lt s hprime hcut)
    · exact actualTwentyMillionEvenTwoHighPoints
        hLower hUpper hBout
        (fiveMillionValuationPart_subset_residual
          N B .evenTwo hpivotPart)
        (fiveMillionValuationPart_evenTwo hpivotPart)
  have hpayment :=
    hallBaseTailSquarePayment_threeTwo_twentyMillion_of_perPivot
      (row := .evenTwo) hcard hper
  simpa [TwentyMillionRootRow.envelope,
    twentyMillionSquareEven_eq_tail47] using hpayment

theorem hallBaseTailSquarePayment_threeTwo_twentyMillion_evenThree_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenThree)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 47 2 / N ≤
      twentyMillionSquareEven + twentyMillionRootEvenThree / 2 := by
  have hN : 0 < N := by
    have := hLower
    norm_num [twentyMillionLower] at this ⊢
    omega
  have hper : ∀ pivot ∈ pivots,
      hallBaseTailSquareCount N B 47 pivot / N ≤
        2 * primeSquareTail47Envelope / 25 +
          TwentyMillionRootRow.evenThree.envelope / 3 := by
    intro pivot hpivot
    have hpivotPart := hpivots hpivot
    apply hallBaseTailSquareCount_ratio_le_twentyMillion_of_high
      (row := .evenThree) hN
    · norm_num [twentyMillionLower, TwentyMillionRootRow.split] at hLower ⊢
      omega
    · norm_num
    · norm_num [TwentyMillionRootRow.cutoff]
    · intro s hprime hcut
      exact le_of_lt (finitePrimeSquareTail47_lt s hprime hcut)
    · exact actualTwentyMillionEvenThreeHighPoints
        hLower hUpper hBout
        (fiveMillionValuationPart_subset_residual
          N B .evenThree hpivotPart)
        (fiveMillionValuationPart_evenThree hpivotPart)
  have hpayment :=
    hallBaseTailSquarePayment_threeTwo_twentyMillion_of_perPivot
      (row := .evenThree) hcard hper
  simpa [TwentyMillionRootRow.envelope,
    twentyMillionSquareEven_eq_tail47] using hpayment

theorem hallBaseTailSquarePayment_threeTwo_twentyMillion_evenOne23_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenOne)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 23 2 / N ≤
      3 * fiveMillionSquareTail23Envelope / 25 +
        twentyMillionRootEvenOne / 2 := by
  have hN : 0 < N := by
    have := hLower
    norm_num [twentyMillionLower] at this ⊢
    omega
  have hper : ∀ pivot ∈ pivots,
      hallBaseTailSquareCount N B 23 pivot / N ≤
        2 * fiveMillionSquareTail23Envelope / 25 +
          TwentyMillionRootRow.evenOne.envelope / 3 := by
    intro pivot hpivot
    have hpivotPart := hpivots hpivot
    apply hallBaseTailSquareCount_ratio_le_twentyMillion_of_high
      (row := .evenOne) hN
    · norm_num [twentyMillionLower, TwentyMillionRootRow.split] at hLower ⊢
      omega
    · norm_num
    · norm_num [TwentyMillionRootRow.cutoff]
    · intro s hprime hcut
      exact fiveMillionSquareTail23_kernel_close s hprime hcut
    · exact actualTwentyMillionEvenOneHighPoints
        hLower hUpper hBout
        (fiveMillionValuationPart_subset_residual
          N B .evenOne hpivotPart)
        (fiveMillionValuationPart_evenOne hpivotPart)
  have hpayment :=
    hallBaseTailSquarePayment_threeTwo_twentyMillion_of_perPivot
      (row := .evenOne) hcard hper
  simpa [TwentyMillionRootRow.envelope] using hpayment

theorem hallBaseTailSquarePayment_threeTwo_twentyMillion_evenTwo23_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenTwo)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 23 2 / N ≤
      3 * fiveMillionSquareTail23Envelope / 25 +
        twentyMillionRootEvenTwo / 2 := by
  have hN : 0 < N := by
    have := hLower
    norm_num [twentyMillionLower] at this ⊢
    omega
  have hper : ∀ pivot ∈ pivots,
      hallBaseTailSquareCount N B 23 pivot / N ≤
        2 * fiveMillionSquareTail23Envelope / 25 +
          TwentyMillionRootRow.evenTwo.envelope / 3 := by
    intro pivot hpivot
    have hpivotPart := hpivots hpivot
    apply hallBaseTailSquareCount_ratio_le_twentyMillion_of_high
      (row := .evenTwo) hN
    · norm_num [twentyMillionLower, TwentyMillionRootRow.split] at hLower ⊢
      omega
    · norm_num
    · norm_num [TwentyMillionRootRow.cutoff]
    · intro s hprime hcut
      exact fiveMillionSquareTail23_kernel_close s hprime hcut
    · exact actualTwentyMillionEvenTwoHighPoints
        hLower hUpper hBout
        (fiveMillionValuationPart_subset_residual
          N B .evenTwo hpivotPart)
        (fiveMillionValuationPart_evenTwo hpivotPart)
  have hpayment :=
    hallBaseTailSquarePayment_threeTwo_twentyMillion_of_perPivot
      (row := .evenTwo) hcard hper
  simpa [TwentyMillionRootRow.envelope] using hpayment

theorem hallBaseTailSquarePayment_threeTwo_twentyMillion_evenThree23_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenThree)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 23 2 / N ≤
      3 * fiveMillionSquareTail23Envelope / 25 +
        twentyMillionRootEvenThree / 2 := by
  have hN : 0 < N := by
    have := hLower
    norm_num [twentyMillionLower] at this ⊢
    omega
  have hper : ∀ pivot ∈ pivots,
      hallBaseTailSquareCount N B 23 pivot / N ≤
        2 * fiveMillionSquareTail23Envelope / 25 +
          TwentyMillionRootRow.evenThree.envelope / 3 := by
    intro pivot hpivot
    have hpivotPart := hpivots hpivot
    apply hallBaseTailSquareCount_ratio_le_twentyMillion_of_high
      (row := .evenThree) hN
    · norm_num [twentyMillionLower, TwentyMillionRootRow.split] at hLower ⊢
      omega
    · norm_num
    · norm_num [TwentyMillionRootRow.cutoff]
    · intro s hprime hcut
      exact fiveMillionSquareTail23_kernel_close s hprime hcut
    · exact actualTwentyMillionEvenThreeHighPoints
        hLower hUpper hBout
        (fiveMillionValuationPart_subset_residual
          N B .evenThree hpivotPart)
        (fiveMillionValuationPart_evenThree hpivotPart)
  have hpayment :=
    hallBaseTailSquarePayment_threeTwo_twentyMillion_of_perPivot
      (row := .evenThree) hcard hper
  simpa [TwentyMillionRootRow.envelope] using hpayment

theorem hallBaseTailSquarePayment_threeTwo_twentyMillion_odd_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hvaluation : valuation = .oddOne ∨ valuation = .oddThree)
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 19 2 / N ≤
      twentyMillionSquareOdd + twentyMillionRootOdd / 2 := by
  have hN : 0 < N := by
    have := hLower
    norm_num [twentyMillionLower] at this ⊢
    omega
  have hper : ∀ pivot ∈ pivots,
      hallBaseTailSquareCount N B 19 pivot / N ≤
        2 * primeSquareTail19Envelope / 25 +
          TwentyMillionRootRow.odd.envelope / 3 := by
    intro pivot hpivot
    have hpivotPart := hpivots hpivot
    apply hallBaseTailSquareCount_ratio_le_twentyMillion_of_high
      (row := .odd) hN
    · norm_num [twentyMillionLower, TwentyMillionRootRow.split] at hLower ⊢
      omega
    · norm_num
    · norm_num [TwentyMillionRootRow.cutoff]
    · intro s hprime hcut
      exact le_of_lt (finitePrimeSquareTail19_lt s hprime hcut)
    · exact actualTwentyMillionOddHighPoints
        hLower hUpper hBout
        (fiveMillionValuationPart_subset_residual
          N B valuation hpivotPart)
        (fiveMillionValuationPart_odd hvaluation hpivotPart)
  have hpayment :=
    hallBaseTailSquarePayment_threeTwo_twentyMillion_of_perPivot
      (row := .odd) hcard hper
  simpa [TwentyMillionRootRow.envelope,
    twentyMillionSquareOdd_eq_tail19] using hpayment

theorem hallBaseTailSquarePayment_threeTwo_twentyMillion_odd_of_all_odd_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 19 2 / N ≤
      twentyMillionSquareOdd + twentyMillionRootOdd / 2 := by
  have hN : 0 < N := by
    have := hLower
    norm_num [twentyMillionLower] at this ⊢
    omega
  have hper : ∀ pivot ∈ pivots,
      hallBaseTailSquareCount N B 19 pivot / N ≤
        2 * primeSquareTail19Envelope / 25 +
          TwentyMillionRootRow.odd.envelope / 3 := by
    intro pivot hpivot
    apply hallBaseTailSquareCount_ratio_le_twentyMillion_of_high
      (row := .odd) hN
    · norm_num [twentyMillionLower, TwentyMillionRootRow.split] at hLower ⊢
      omega
    · norm_num
    · norm_num [TwentyMillionRootRow.cutoff]
    · intro s hprime hcut
      exact le_of_lt (finitePrimeSquareTail19_lt s hprime hcut)
    · exact actualTwentyMillionOddHighPoints
        hLower hUpper hBout
        (hpivotsResidual hpivot)
        (hpivotsOdd pivot hpivot)
  have hpayment :=
    hallBaseTailSquarePayment_threeTwo_twentyMillion_of_perPivot
      (row := .odd) hcard hper
  simpa [TwentyMillionRootRow.envelope,
    twentyMillionSquareOdd_eq_tail19] using hpayment

#print axioms hallBaseTailSquarePayment_threeTwo_twentyMillion_evenOne_ratio_le
#print axioms hallBaseTailSquarePayment_threeTwo_twentyMillion_evenTwo_ratio_le
#print axioms hallBaseTailSquarePayment_threeTwo_twentyMillion_evenThree_ratio_le
#print axioms hallBaseTailSquarePayment_threeTwo_twentyMillion_evenOne23_ratio_le
#print axioms hallBaseTailSquarePayment_threeTwo_twentyMillion_evenTwo23_ratio_le
#print axioms hallBaseTailSquarePayment_threeTwo_twentyMillion_evenThree23_ratio_le
#print axioms hallBaseTailSquarePayment_threeTwo_twentyMillion_odd_ratio_le
#print axioms
  hallBaseTailSquarePayment_threeTwo_twentyMillion_odd_of_all_odd_ratio_le

end Erdos848
