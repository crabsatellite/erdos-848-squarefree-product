import Erdos848.TailFortyMillionRootActualRows
import Erdos848.TailTwentyMillionSquare
import Erdos848.TailFiveMillionHallTailCore
import Erdos848.TailGlobalMixedValuationPartition

namespace Erdos848

/-!
# Literal three-pivot tail payments on `40M <= N < 200M`

The root class fixes both the finite cutoff (`19` for odd, `23` for even)
and the checked root/prime envelope.  This keeps the analytic square tail and
the high-prime count on exactly the same boundary.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem hallBaseTailSquareCount_ratio_le_fortyMillion_of_high
    {block : FortyMillionTenBranchBlock}
    {rootClass : FortyMillionRootClass}
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    {squareEnvelope : Rat}
    (hcover : block.Covers N)
    (hsquare : ∀ s : Finset Nat,
      (∀ p ∈ s, Nat.Prime p) →
      (∀ p ∈ s, fortyMillionRootPrimeCutoff rootClass < p) →
      (∑ p ∈ s, reciprocalSquareQ p) ≤ squareEnvelope)
    (hhigh :
      (((twoBaseHighTailSquarePoints
          N pivot (N / 55)).card : Rat) +
        2 * ((Nat.primeCounting (N / 55) -
          Nat.primeCounting
            (fortyMillionRootPrimeCutoff rootClass) : Nat) : Rat)) / N ≤
        (fortyMillionRootEnvelopeNumerator block rootClass : Rat) /
          1_000_000_000 / 3) :
    hallBaseTailSquareCount N B
        (fortyMillionRootPrimeCutoff rootClass) pivot / N ≤
      2 * squareEnvelope / 25 +
        (fortyMillionRootEnvelopeNumerator block rootClass : Rat) /
          1_000_000_000 / 3 := by
  let cutoff := fortyMillionRootPrimeCutoff rootClass
  let primes := tailIntermediatePrimes cutoff (N / 55)
  have hN : 0 < N := by
    cases block <;>
      simp [FortyMillionTenBranchBlock.Covers,
        FortyMillionTenBranchBlock.lower] at hcover <;> omega
  have hcutUpper : cutoff ≤ N / 55 := by
    cases block <;> cases rootClass <;>
      simp [cutoff, fortyMillionRootPrimeCutoff,
        FortyMillionTenBranchBlock.Covers,
        FortyMillionTenBranchBlock.lower] at hcover ⊢ <;> omega
  have hfive : 5 ≤ cutoff := by
    cases rootClass <;> decide
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
    B pivot cutoff (N / 55) hN
  dsimp [primes, cutoff] at hmedium hsquare' hprime hcut hsplit
  calc
    hallBaseTailSquareCount N B
        (fortyMillionRootPrimeCutoff rootClass) pivot / N ≤
      ((twoBasePrimeSquareUnion N pivot
        (tailIntermediatePrimes
          (fortyMillionRootPrimeCutoff rootClass)
          (N / 55))).card : Rat) / N +
      ((twoBaseHighTailSquarePoints
        N pivot (N / 55)).card : Rat) / N := hsplit
    _ ≤
        (2 * (∑ p ∈ tailIntermediatePrimes
              (fortyMillionRootPrimeCutoff rootClass)
              (N / 55), reciprocalSquareQ p) / 25 +
          2 * ((Nat.primeCounting (N / 55) -
            Nat.primeCounting
              (fortyMillionRootPrimeCutoff rootClass) : Nat) : Rat) / N) +
        ((twoBaseHighTailSquarePoints
          N pivot (N / 55)).card : Rat) / N := by
      gcongr
    _ = 2 * (∑ p ∈ tailIntermediatePrimes
            (fortyMillionRootPrimeCutoff rootClass)
            (N / 55), reciprocalSquareQ p) / 25 +
        (2 * ((Nat.primeCounting (N / 55) -
            Nat.primeCounting
              (fortyMillionRootPrimeCutoff rootClass) : Nat) : Rat) +
          ((twoBaseHighTailSquarePoints
            N pivot (N / 55)).card : Rat)) / N := by ring
    _ ≤ 2 * squareEnvelope / 25 +
        (fortyMillionRootEnvelopeNumerator block rootClass : Rat) /
          1_000_000_000 / 3 := by
      apply add_le_add
      · gcongr
      · simpa [add_comm] using hhigh

private theorem hallBaseTailSquarePayment_threeTwo_fortyMillion_of_perPivot
    {block : FortyMillionTenBranchBlock}
    {rootClass : FortyMillionRootClass}
    {N : Nat} {B pivots : Finset Nat}
    {squareEnvelope : Rat}
    (hcard : pivots.card = 3)
    (hper : ∀ pivot ∈ pivots,
      hallBaseTailSquareCount N B
          (fortyMillionRootPrimeCutoff rootClass) pivot / N ≤
        2 * squareEnvelope / 25 +
          (fortyMillionRootEnvelopeNumerator block rootClass : Rat) /
            1_000_000_000 / 3) :
    hallBaseTailSquarePayment N B pivots
        (fortyMillionRootPrimeCutoff rootClass) 2 / N ≤
      3 * squareEnvelope / 25 +
        (fortyMillionRootEnvelopeNumerator block rootClass : Rat) /
          1_000_000_000 / 2 := by
  have hsum :
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B
          (fortyMillionRootPrimeCutoff rootClass) pivot / N) ≤
      3 * (2 * squareEnvelope / 25 +
        (fortyMillionRootEnvelopeNumerator block rootClass : Rat) /
          1_000_000_000 / 3) := by
    calc
      (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B
            (fortyMillionRootPrimeCutoff rootClass) pivot / N) ≤
        ∑ _pivot ∈ pivots,
          (2 * squareEnvelope / 25 +
            (fortyMillionRootEnvelopeNumerator block rootClass : Rat) /
              1_000_000_000 / 3) :=
        Finset.sum_le_sum fun pivot hpivot => hper pivot hpivot
      _ = (pivots.card : Rat) *
          (2 * squareEnvelope / 25 +
            (fortyMillionRootEnvelopeNumerator block rootClass : Rat) /
              1_000_000_000 / 3) := by
        simp
        ring
      _ = 3 * (2 * squareEnvelope / 25 +
          (fortyMillionRootEnvelopeNumerator block rootClass : Rat) /
            1_000_000_000 / 3) := by
        rw [hcard]
        norm_num
  unfold hallBaseTailSquarePayment
  rw [hcard]
  rw [show (((3 : Nat) : Rat) - ((2 : Nat) : Rat) + 1) = 2 by
    norm_num]
  change
    (∑ pivot ∈ pivots,
      hallBaseTailSquareCount N B
        (fortyMillionRootPrimeCutoff rootClass) pivot) / 2 / N ≤ _
  calc
    (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B
          (fortyMillionRootPrimeCutoff rootClass) pivot) / 2 / N =
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B
          (fortyMillionRootPrimeCutoff rootClass) pivot / N) / 2 := by
          rw [← Finset.sum_div]
          ring
    _ ≤ (3 * (2 * squareEnvelope / 25 +
        (fortyMillionRootEnvelopeNumerator block rootClass : Rat) /
          1_000_000_000 / 3)) / 2 :=
      div_le_div_of_nonneg_right hsum (by norm_num)
    _ = 3 * squareEnvelope / 25 +
        (fortyMillionRootEnvelopeNumerator block rootClass : Rat) /
          1_000_000_000 / 2 := by ring

theorem hallBaseTailSquarePayment_threeTwo_fortyMillion_evenOne23_ratio_le
    {block : FortyMillionTenBranchBlock}
    {N : Nat} {B pivots : Finset Nat}
    (hcover : block.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenOne)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 23 2 / N ≤
      3 * fiveMillionSquareTail23Envelope / 25 +
        fortyMillionTenBranchRootEvenOne block / 2 := by
  have hper : ∀ pivot ∈ pivots,
      hallBaseTailSquareCount N B 23 pivot / N ≤
        2 * fiveMillionSquareTail23Envelope / 25 +
          (fortyMillionRootEnvelopeNumerator block .evenOne : Rat) /
            1_000_000_000 / 3 := by
    intro pivot hpivot
    have hpivotPart := hpivots hpivot
    apply hallBaseTailSquareCount_ratio_le_fortyMillion_of_high
      (block := block) (rootClass := .evenOne) hcover
    · intro s hprime hcut
      exact fiveMillionSquareTail23_kernel_close s hprime hcut
    · exact actualFortyMillionEvenOneHighPoints hcover hBout
        (fiveMillionValuationPart_subset_residual
          N B .evenOne hpivotPart)
        (fiveMillionValuationPart_evenOne hpivotPart)
  have hpayment :=
    hallBaseTailSquarePayment_threeTwo_fortyMillion_of_perPivot
      (block := block) (rootClass := .evenOne) hcard hper
  simpa [fortyMillionRootPrimeCutoff,
    fortyMillionRootEnvelopeNumerator,
    fortyMillionTenBranchRootEvenOne] using hpayment

theorem hallBaseTailSquarePayment_threeTwo_fortyMillion_evenTwo23_ratio_le
    {block : FortyMillionTenBranchBlock}
    {N : Nat} {B pivots : Finset Nat}
    (hcover : block.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenTwo)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 23 2 / N ≤
      3 * fiveMillionSquareTail23Envelope / 25 +
        fortyMillionTenBranchRootEvenTwo block / 2 := by
  have hper : ∀ pivot ∈ pivots,
      hallBaseTailSquareCount N B 23 pivot / N ≤
        2 * fiveMillionSquareTail23Envelope / 25 +
          (fortyMillionRootEnvelopeNumerator block .evenTwo : Rat) /
            1_000_000_000 / 3 := by
    intro pivot hpivot
    have hpivotPart := hpivots hpivot
    apply hallBaseTailSquareCount_ratio_le_fortyMillion_of_high
      (block := block) (rootClass := .evenTwo) hcover
    · intro s hprime hcut
      exact fiveMillionSquareTail23_kernel_close s hprime hcut
    · exact actualFortyMillionEvenTwoHighPoints hcover hBout
        (fiveMillionValuationPart_subset_residual
          N B .evenTwo hpivotPart)
        (fiveMillionValuationPart_evenTwo hpivotPart)
  have hpayment :=
    hallBaseTailSquarePayment_threeTwo_fortyMillion_of_perPivot
      (block := block) (rootClass := .evenTwo) hcard hper
  simpa [fortyMillionRootPrimeCutoff,
    fortyMillionRootEnvelopeNumerator,
    fortyMillionTenBranchRootEvenTwo] using hpayment

theorem hallBaseTailSquarePayment_threeTwo_fortyMillion_evenThree23_ratio_le
    {block : FortyMillionTenBranchBlock}
    {N : Nat} {B pivots : Finset Nat}
    (hcover : block.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenThree)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 23 2 / N ≤
      3 * fiveMillionSquareTail23Envelope / 25 +
        fortyMillionTenBranchRootEvenThree block / 2 := by
  have hper : ∀ pivot ∈ pivots,
      hallBaseTailSquareCount N B 23 pivot / N ≤
        2 * fiveMillionSquareTail23Envelope / 25 +
          (fortyMillionRootEnvelopeNumerator block .evenThree : Rat) /
            1_000_000_000 / 3 := by
    intro pivot hpivot
    have hpivotPart := hpivots hpivot
    apply hallBaseTailSquareCount_ratio_le_fortyMillion_of_high
      (block := block) (rootClass := .evenThree) hcover
    · intro s hprime hcut
      exact fiveMillionSquareTail23_kernel_close s hprime hcut
    · exact actualFortyMillionEvenThreeHighPoints hcover hBout
        (fiveMillionValuationPart_subset_residual
          N B .evenThree hpivotPart)
        (fiveMillionValuationPart_evenThree hpivotPart)
  have hpayment :=
    hallBaseTailSquarePayment_threeTwo_fortyMillion_of_perPivot
      (block := block) (rootClass := .evenThree) hcard hper
  simpa [fortyMillionRootPrimeCutoff,
    fortyMillionRootEnvelopeNumerator,
    fortyMillionTenBranchRootEvenThree] using hpayment

theorem hallBaseTailSquarePayment_threeTwo_fortyMillion_odd_ratio_le
    {block : FortyMillionTenBranchBlock}
    {N : Nat} {B pivots : Finset Nat}
    (hcover : block.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 19 2 / N ≤
      twentyMillionSquareOdd +
        fortyMillionTenBranchRootOdd block / 2 := by
  have hper : ∀ pivot ∈ pivots,
      hallBaseTailSquareCount N B 19 pivot / N ≤
        2 * primeSquareTail19Envelope / 25 +
          (fortyMillionRootEnvelopeNumerator block .odd : Rat) /
            1_000_000_000 / 3 := by
    intro pivot hpivot
    apply hallBaseTailSquareCount_ratio_le_fortyMillion_of_high
      (block := block) (rootClass := .odd) hcover
    · intro s hprime hcut
      exact le_of_lt (finitePrimeSquareTail19_lt s hprime hcut)
    · exact actualFortyMillionOddHighPoints hcover hBout
        (hpivotsResidual hpivot) (hpivotsOdd pivot hpivot)
  have hpayment :=
    hallBaseTailSquarePayment_threeTwo_fortyMillion_of_perPivot
      (block := block) (rootClass := .odd) hcard hper
  simpa [fortyMillionRootPrimeCutoff,
    fortyMillionRootEnvelopeNumerator,
    fortyMillionTenBranchRootOdd,
    twentyMillionSquareOdd_eq_tail19] using hpayment

#print axioms
  hallBaseTailSquarePayment_threeTwo_fortyMillion_evenOne23_ratio_le
#print axioms
  hallBaseTailSquarePayment_threeTwo_fortyMillion_evenTwo23_ratio_le
#print axioms
  hallBaseTailSquarePayment_threeTwo_fortyMillion_evenThree23_ratio_le
#print axioms hallBaseTailSquarePayment_threeTwo_fortyMillion_odd_ratio_le

end Erdos848
