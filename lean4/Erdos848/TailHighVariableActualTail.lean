import Erdos848.TailHighVariableRootAnalytic
import Erdos848.TailTwentyMillionSquare
import Erdos848.TailFiveMillionHallTailCore
import Erdos848.TailR263EvenThreeTail

namespace Erdos848

/-!
# Literal unbounded tail payment

This is the unbounded counterpart of `TailHighActualTail`.  Its high-prime
split is the fixed divisor stored in a checked variable-root terminal.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem hallBaseTailSquareCount_ratio_le_variable
    (root : HighVariableRootTerminal)
    {N : Nat} {B : Finset Nat} {pivot cutoff : Nat}
    {squareEnvelope : Rat}
    (hcheck : root.check = true)
    (hLower : root.lower ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hcutUpper : cutoff ≤ N / root.split)
    (hfive : 5 ≤ cutoff)
    (hsquare : ∀ s : Finset Nat,
      (∀ p ∈ s, Nat.Prime p) →
      (∀ p ∈ s, cutoff < p) →
      (∑ p ∈ s, reciprocalSquareQ p) ≤ squareEnvelope) :
    hallBaseTailSquareCount N B cutoff pivot / N ≤
      2 * squareEnvelope / 25 + root.rootEnvelope / 3 := by
  let primes := tailIntermediatePrimes cutoff (N / root.split)
  have hvalid := root.check_sound hcheck
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
      (∑ p ∈ primes, reciprocalSquareQ p) ≤ squareEnvelope :=
    hsquare primes hprime hcut
  have hsplit :=
    hallBaseTailSquareCount_ratio_le_intermediate_add_high
      B pivot cutoff (N / root.split) hN
  have hhigh :=
    root.actualHighPoints_ratio_le
      hcheck hLower hBout hpivotResidual (cutoff := cutoff)
  dsimp [primes] at hmedium hsquare' hprime hcut hsplit
  calc
    hallBaseTailSquareCount N B cutoff pivot / N ≤
      ((twoBasePrimeSquareUnion N pivot
        (tailIntermediatePrimes cutoff
          (N / root.split))).card : Rat) / N +
      ((twoBaseHighTailSquarePoints
        N pivot (N / root.split)).card : Rat) / N := hsplit
    _ ≤
        (2 * (∑ p ∈ tailIntermediatePrimes cutoff
              (N / root.split), reciprocalSquareQ p) / 25 +
          2 * ((Nat.primeCounting (N / root.split) -
            Nat.primeCounting cutoff : Nat) : Rat) / N) +
        ((twoBaseHighTailSquarePoints
          N pivot (N / root.split)).card : Rat) / N := by
      gcongr
    _ =
        2 * (∑ p ∈ tailIntermediatePrimes cutoff
            (N / root.split), reciprocalSquareQ p) / 25 +
        (2 * ((Nat.primeCounting (N / root.split) -
            Nat.primeCounting cutoff : Nat) : Rat) +
          ((twoBaseHighTailSquarePoints
            N pivot (N / root.split)).card : Rat)) / N := by ring
    _ ≤ 2 * squareEnvelope / 25 +
        root.rootEnvelope / 3 := by
      apply add_le_add
      · gcongr
      · simpa [add_comm] using hhigh

private theorem hallBaseTailSquarePayment_threeTwo_variable_of_perPivot
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
      3 * (2 * squareEnvelope / 25 + rootEnvelope / 3) := by
    calc
      (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B cutoff pivot / N) ≤
        ∑ _pivot ∈ pivots,
          (2 * squareEnvelope / 25 + rootEnvelope / 3) :=
        Finset.sum_le_sum fun pivot hpivot => hper pivot hpivot
      _ = (pivots.card : Rat) *
          (2 * squareEnvelope / 25 + rootEnvelope / 3) := by
        simp
        ring
      _ = 3 * (2 * squareEnvelope / 25 +
          rootEnvelope / 3) := by
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
        rootEnvelope / 3)) / 2 :=
      div_le_div_of_nonneg_right hsum (by norm_num)
    _ = 3 * squareEnvelope / 25 + rootEnvelope / 2 := by
      ring

theorem hallBaseTailSquarePayment_threeTwo_variable_even23_ratio_le
    (root : HighVariableRootTerminal)
    {N : Nat} {B pivots : Finset Nat}
    (hcheck : root.check = true)
    (hLower : root.lower ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 23 2 / N ≤
      3 * fiveMillionSquareTail23Envelope / 25 +
        root.rootEnvelope / 2 := by
  have hvalid := root.check_sound hcheck
  have hcutUpper : 23 ≤ N / root.split := by
    have hmono : root.lower / root.split ≤ N / root.split :=
      Nat.div_le_div_right hLower
    have hbase : 23 ≤ root.lower / root.split := by
      rcases hvalid with
        ⟨_hBase, _hSplit, hPrime, _hRoot, _hFourth, _hBound⟩
      exact
        (by norm_num [anchoredPrimePoint] :
          23 ≤ anchoredPrimePoint).trans hPrime
    exact hbase.trans hmono
  apply hallBaseTailSquarePayment_threeTwo_variable_of_perPivot hcard
  intro pivot hpivot
  apply hallBaseTailSquareCount_ratio_le_variable
    root hcheck hLower hBout (hpivotsResidual hpivot)
      hcutUpper (by norm_num)
  intro s hprime hcut
  exact fiveMillionSquareTail23_kernel_close s hprime hcut

theorem hallBaseTailSquarePayment_threeTwo_variable_odd19_ratio_le
    (root : HighVariableRootTerminal)
    {N : Nat} {B pivots : Finset Nat}
    (hcheck : root.check = true)
    (hLower : root.lower ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 19 2 / N ≤
      twentyMillionSquareOdd + root.rootEnvelope / 2 := by
  have hvalid := root.check_sound hcheck
  have hcutUpper : 19 ≤ N / root.split := by
    have hmono : root.lower / root.split ≤ N / root.split :=
      Nat.div_le_div_right hLower
    have hbase : 19 ≤ root.lower / root.split := by
      rcases hvalid with
        ⟨_hBase, _hSplit, hPrime, _hRoot, _hFourth, _hBound⟩
      exact
        (by norm_num [anchoredPrimePoint] :
          19 ≤ anchoredPrimePoint).trans hPrime
    exact hbase.trans hmono
  have hpayment :
      hallBaseTailSquarePayment N B pivots 19 2 / N ≤
        3 * primeSquareTail19Envelope / 25 +
          root.rootEnvelope / 2 := by
    apply hallBaseTailSquarePayment_threeTwo_variable_of_perPivot hcard
    intro pivot hpivot
    apply hallBaseTailSquareCount_ratio_le_variable
      root hcheck hLower hBout (hpivotsResidual hpivot)
        hcutUpper (by norm_num)
    intro s hprime hcut
    exact le_of_lt (finitePrimeSquareTail19_lt s hprime hcut)
  simpa [twentyMillionSquareOdd_eq_tail19] using hpayment

#print axioms
  hallBaseTailSquarePayment_threeTwo_variable_even23_ratio_le
#print axioms
  hallBaseTailSquarePayment_threeTwo_variable_odd19_ratio_le

end Erdos848
