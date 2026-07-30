import Erdos848.TailHybridPaperRootActualRows
import Erdos848.TailTwentyMillionSquare
import Erdos848.TailFiveMillionHallTailCore

namespace Erdos848

/-!
# Literal three-pivot tail payments on `200M ≤ N < 2B`

The normal and five-twist root certificates are consumed only through their
finite providers.  The remaining intermediate-prime and square-tail
decomposition is a theorem.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem hallBaseTailSquareCount_ratio_le_hybrid_of_high
    (normalProvider : HybridPaperRootCertificateProvider)
    (twistProvider : HybridPaperTwistCertificateProvider)
    (rootProvider : HybridPaperRootEnvelopeCertificate)
    {regime : HybridPaperDiagonalRegime}
    {N : Nat} {B : Finset Nat} {pivot cutoff : Nat}
    {squareEnvelope : Rat}
    (hcover : regime.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hcutUpper : cutoff ≤ N / regime.rootSplit)
    (hfive : 5 ≤ cutoff)
    (hsquare : ∀ s : Finset Nat,
      (∀ p ∈ s, Nat.Prime p) →
      (∀ p ∈ s, cutoff < p) →
      (∑ p ∈ s, reciprocalSquareQ p) ≤ squareEnvelope) :
    hallBaseTailSquareCount N B cutoff pivot / N ≤
      2 * squareEnvelope / 25 + regime.rootEnvelope / 3 := by
  let primes :=
    tailIntermediatePrimes cutoff (N / regime.rootSplit)
  have hN : 0 < N := by
    cases regime <;>
      norm_num [HybridPaperDiagonalRegime.Covers,
        HybridPaperDiagonalRegime.lower] at hcover <;>
      omega
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
      (∑ p ∈ primes, reciprocalSquareQ p) ≤ squareEnvelope :=
    hsquare primes hprime hcut
  have hsplit :=
    hallBaseTailSquareCount_ratio_le_intermediate_add_high
      B pivot cutoff (N / regime.rootSplit) hN
  have hhigh :=
    actualHybridPaperHighPoints
      normalProvider twistProvider rootProvider
      hcover hBout hpivotResidual
      (cutoff := cutoff)
  dsimp [primes] at hmedium hsquare' hprime hcut hsplit
  calc
    hallBaseTailSquareCount N B cutoff pivot / N ≤
      ((twoBasePrimeSquareUnion N pivot
        (tailIntermediatePrimes cutoff
          (N / regime.rootSplit))).card : Rat) / N +
      ((twoBaseHighTailSquarePoints
        N pivot (N / regime.rootSplit)).card : Rat) / N := hsplit
    _ ≤
        (2 * (∑ p ∈ tailIntermediatePrimes cutoff
              (N / regime.rootSplit), reciprocalSquareQ p) / 25 +
          2 * ((Nat.primeCounting (N / regime.rootSplit) -
            Nat.primeCounting cutoff : Nat) : Rat) / N) +
        ((twoBaseHighTailSquarePoints
          N pivot (N / regime.rootSplit)).card : Rat) / N := by
      gcongr
    _ = 2 * (∑ p ∈ tailIntermediatePrimes cutoff
            (N / regime.rootSplit), reciprocalSquareQ p) / 25 +
        (2 * ((Nat.primeCounting (N / regime.rootSplit) -
            Nat.primeCounting cutoff : Nat) : Rat) +
          ((twoBaseHighTailSquarePoints
            N pivot (N / regime.rootSplit)).card : Rat)) / N := by ring
    _ ≤ 2 * squareEnvelope / 25 + regime.rootEnvelope / 3 := by
      apply add_le_add
      · gcongr
      · simpa [add_comm] using hhigh

private theorem hallBaseTailSquarePayment_threeTwo_hybrid_of_perPivot
    {regime : HybridPaperDiagonalRegime}
    {N : Nat} {B pivots : Finset Nat} {cutoff : Nat}
    {squareEnvelope : Rat}
    (hcard : pivots.card = 3)
    (hper : ∀ pivot ∈ pivots,
      hallBaseTailSquareCount N B cutoff pivot / N ≤
        2 * squareEnvelope / 25 + regime.rootEnvelope / 3) :
    hallBaseTailSquarePayment N B pivots cutoff 2 / N ≤
      3 * squareEnvelope / 25 + regime.rootEnvelope / 2 := by
  have hsum :
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B cutoff pivot / N) ≤
      3 * (2 * squareEnvelope / 25 + regime.rootEnvelope / 3) := by
    calc
      (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B cutoff pivot / N) ≤
        ∑ _pivot ∈ pivots,
          (2 * squareEnvelope / 25 + regime.rootEnvelope / 3) :=
        Finset.sum_le_sum fun pivot hpivot => hper pivot hpivot
      _ = (pivots.card : Rat) *
          (2 * squareEnvelope / 25 + regime.rootEnvelope / 3) := by
        simp
        ring
      _ = 3 * (2 * squareEnvelope / 25 +
          regime.rootEnvelope / 3) := by
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
    _ ≤ (3 * (2 * squareEnvelope / 25 +
        regime.rootEnvelope / 3)) / 2 :=
      div_le_div_of_nonneg_right hsum (by norm_num)
    _ = 3 * squareEnvelope / 25 + regime.rootEnvelope / 2 := by
      ring

theorem hallBaseTailSquarePayment_threeTwo_hybrid_even23_ratio_le
    (normalProvider : HybridPaperRootCertificateProvider)
    (twistProvider : HybridPaperTwistCertificateProvider)
    (rootProvider : HybridPaperRootEnvelopeCertificate)
    {regime : HybridPaperDiagonalRegime}
    {N : Nat} {B pivots : Finset Nat}
    (hcover : regime.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 23 2 / N ≤
      3 * fiveMillionSquareTail23Envelope / 25 +
        regime.rootEnvelope / 2 := by
  have hcutUpper : 23 ≤ N / regime.rootSplit := by
    cases regime <;>
      norm_num [HybridPaperDiagonalRegime.Covers,
        HybridPaperDiagonalRegime.lower,
        HybridPaperDiagonalRegime.rootSplit] at hcover ⊢ <;>
      omega
  apply hallBaseTailSquarePayment_threeTwo_hybrid_of_perPivot hcard
  intro pivot hpivot
  apply hallBaseTailSquareCount_ratio_le_hybrid_of_high
    normalProvider twistProvider rootProvider hcover hBout
      (hpivotsResidual hpivot) hcutUpper (by norm_num)
  intro s hprime hcut
  exact fiveMillionSquareTail23_kernel_close s hprime hcut

theorem hallBaseTailSquarePayment_threeTwo_hybrid_odd19_ratio_le
    (normalProvider : HybridPaperRootCertificateProvider)
    (twistProvider : HybridPaperTwistCertificateProvider)
    (rootProvider : HybridPaperRootEnvelopeCertificate)
    {regime : HybridPaperDiagonalRegime}
    {N : Nat} {B pivots : Finset Nat}
    (hcover : regime.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 19 2 / N ≤
      twentyMillionSquareOdd + regime.rootEnvelope / 2 := by
  have hcutUpper : 19 ≤ N / regime.rootSplit := by
    cases regime <;>
      norm_num [HybridPaperDiagonalRegime.Covers,
        HybridPaperDiagonalRegime.lower,
        HybridPaperDiagonalRegime.rootSplit] at hcover ⊢ <;>
      omega
  have hpayment :
      hallBaseTailSquarePayment N B pivots 19 2 / N ≤
        3 * primeSquareTail19Envelope / 25 +
          regime.rootEnvelope / 2 := by
    apply hallBaseTailSquarePayment_threeTwo_hybrid_of_perPivot hcard
    intro pivot hpivot
    apply hallBaseTailSquareCount_ratio_le_hybrid_of_high
      normalProvider twistProvider rootProvider hcover hBout
        (hpivotsResidual hpivot) hcutUpper (by norm_num)
    intro s hprime hcut
    exact le_of_lt (finitePrimeSquareTail19_lt s hprime hcut)
  simpa [twentyMillionSquareOdd_eq_tail19] using hpayment

#print axioms hallBaseTailSquarePayment_threeTwo_hybrid_even23_ratio_le
#print axioms hallBaseTailSquarePayment_threeTwo_hybrid_odd19_ratio_le

end Erdos848
