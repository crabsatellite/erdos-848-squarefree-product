import Erdos848.TailHighDiagonalWheelCount
import Erdos848.TailHighDiagonalRootTreeCount

namespace Erdos848

/-!
# Ten-million-anchored wheel count

The old sparse root tree already proves that at most `332180` diagonal
primes occur below `9999999`.  Replacing that information by a fresh wheel
bound throws away more than half a million excluded residues.  This file
keeps the old count at the exact whole-period anchor

`9 * 1021020 - 1 = 9189179`

and applies the six-prime wheel only to the interval above it.  The resulting
affine bound has a negative intercept.  On a finite row that intercept is
paid at the upper endpoint, which is the key to covering `6B--500B` with
only two rows.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def highDiagonalAnchoredWheelCutoff : Nat :=
  9 * highDiagonalWheelSixPeriod - 1

def highDiagonalWheelSixCandidates (cutoff : Nat) : Finset Nat :=
  (Finset.range (cutoff + 1)).filter fun p =>
    p % highDiagonalWheelSixPeriod ∈ highDiagonalWheelSixResidues

theorem highDiagonalWheelSixCandidates_anchor_card :
    (highDiagonalWheelSixCandidates
      highDiagonalAnchoredWheelCutoff).card = 829440 := by
  have hcount :=
    card_filter_residueSet_exact
      highDiagonalWheelSixResidues
      highDiagonalWheelSixPeriod
      (highDiagonalAnchoredWheelCutoff + 1)
      (by norm_num [highDiagonalWheelSixPeriod])
      highDiagonalWheelSixResidues_subset
  simpa [highDiagonalWheelSixCandidates,
    highDiagonalAnchoredWheelCutoff,
    highDiagonalWheelSixPeriod,
    highDiagonalWheelSixResidues_card] using hcount

private theorem highDiagonalWheelSixCandidates_mono
    {left right : Nat} (h : left ≤ right) :
    highDiagonalWheelSixCandidates left ⊆
      highDiagonalWheelSixCandidates right := by
  intro p hp
  rw [highDiagonalWheelSixCandidates, Finset.mem_filter] at hp ⊢
  exact ⟨Finset.mem_range.mpr (by
    have := Finset.mem_range.mp hp.1
    omega), hp.2⟩

theorem highDiagonalPrimes_card_cast_le_anchoredWheel
    {cutoff : Nat}
    (hAnchor : highDiagonalAnchoredWheelCutoff ≤ cutoff) :
    ((highDiagonalPrimes cutoff).card : Rat) ≤
      (92160 : Rat) / highDiagonalWheelSixPeriod * cutoff +
        (332180 +
          (92160 : Rat) *
            (highDiagonalWheelSixPeriod - 92160) /
              highDiagonalWheelSixPeriod -
          9 * 92160 +
          (92160 : Rat) / highDiagonalWheelSixPeriod) := by
  let current := highDiagonalWheelSixCandidates cutoff
  let anchored :=
    highDiagonalWheelSixCandidates highDiagonalAnchoredWheelCutoff
  have hAnchoredSubset : anchored ⊆ current := by
    exact highDiagonalWheelSixCandidates_mono hAnchor
  have hPrimeSubset :
      highDiagonalPrimes cutoff ⊆
        highDiagonalPrimes highDiagonalAnchoredWheelCutoff ∪
          (current \ anchored) := by
    intro p hp
    by_cases hpAnchor : p ≤ highDiagonalAnchoredWheelCutoff
    · apply Finset.mem_union_left
      rw [highDiagonalPrimes, Finset.mem_filter] at hp ⊢
      exact ⟨Finset.mem_range.mpr (by omega), hp.2⟩
    · apply Finset.mem_union_right
      apply Finset.mem_sdiff.mpr
      constructor
      · dsimp [current]
        rw [highDiagonalWheelSixCandidates, Finset.mem_filter]
        refine ⟨(Finset.mem_filter.mp hp).1, ?_⟩
        rcases highDiagonalPrime_mem_wheelSix_or_exception hp with
          hpWheel | hpException
        · exact hpWheel
        · simp only [Finset.mem_insert, Finset.mem_singleton] at hpException
          rcases hpException with rfl | rfl <;>
            norm_num [highDiagonalAnchoredWheelCutoff,
              highDiagonalWheelSixPeriod] at hpAnchor
      · dsimp [anchored]
        rw [highDiagonalWheelSixCandidates, Finset.mem_filter]
        intro hpOld
        have hpRange := Finset.mem_range.mp hpOld.1
        omega
  have hPrimeCard :
      (highDiagonalPrimes cutoff).card ≤
        (highDiagonalPrimes
            highDiagonalAnchoredWheelCutoff).card +
          (current \ anchored).card := by
    exact (Finset.card_le_card hPrimeSubset).trans
      (Finset.card_union_le _ _)
  have hAnchorLimit :
      highDiagonalAnchoredWheelCutoff ≤ 9999999 := by
    norm_num [highDiagonalAnchoredWheelCutoff,
      highDiagonalWheelSixPeriod]
  have hOldPrime :
      (highDiagonalPrimes
        highDiagonalAnchoredWheelCutoff).card ≤ 332180 := by
    apply highDiagonalPrimes_card_le_rootTree
    rw [GeneratedTailDiagonalCoverage.primeRootCoverage_limit]
    exact hAnchorLimit
  have hAnchorCard : anchored.card = 829440 := by
    simpa [anchored] using
      highDiagonalWheelSixCandidates_anchor_card
  have hCurrentPrefix :
      (current.card : Rat) ≤
        (92160 : Rat) / highDiagonalWheelSixPeriod *
            (cutoff + 1) +
          (92160 : Rat) *
            ((highDiagonalWheelSixPeriod - 92160 : Nat) : Rat) /
              highDiagonalWheelSixPeriod := by
    have hperiod :=
      finiteResidueCount_cast_le
        highDiagonalWheelSixResidues
        highDiagonalWheelSixPeriod (cutoff + 1)
        (by norm_num [highDiagonalWheelSixPeriod])
        highDiagonalWheelSixResidues_subset
    rw [highDiagonalWheelSixResidues_card] at hperiod
    simpa [current, highDiagonalWheelSixCandidates] using hperiod
  have hDifference :
      ((current \ anchored).card : Rat) =
        (current.card : Rat) - 829440 := by
    rw [Finset.cast_card_sdiff hAnchoredSubset, hAnchorCard]
    norm_num
  have hPrimeQ :
      ((highDiagonalPrimes cutoff).card : Rat) ≤
        332180 + ((current \ anchored).card : Rat) := by
    exact_mod_cast hPrimeCard.trans
      (Nat.add_le_add hOldPrime le_rfl)
  rw [hDifference] at hPrimeQ
  push_cast at hCurrentPrefix
  norm_num [highDiagonalWheelSixPeriod] at hCurrentPrefix ⊢
  linarith

def highDiagonalAnchoredWheelIntercept : Rat :=
  332180 +
    (92160 : Rat) *
      (highDiagonalWheelSixPeriod - 92160) /
        highDiagonalWheelSixPeriod -
    9 * 92160 +
    (92160 : Rat) / highDiagonalWheelSixPeriod

theorem highDiagonalAnchoredWheelIntercept_neg :
    highDiagonalAnchoredWheelIntercept < 0 := by
  norm_num [highDiagonalAnchoredWheelIntercept,
    highDiagonalWheelSixPeriod]

def highDiagonalAnchoredWheelRatioBound
    (upper divisor : Nat) : Rat :=
  (92160 : Rat) /
      (highDiagonalWheelSixPeriod * divisor) +
    highDiagonalAnchoredWheelIntercept / upper

theorem highDiagonalPrimes_card_div_le_anchoredWheel
    {N upper divisor : Nat}
    (hNPos : 0 < N)
    (hUpper : N ≤ upper)
    (hDivisor : 0 < divisor)
    (hAnchor :
      highDiagonalAnchoredWheelCutoff ≤ N / divisor) :
    ((highDiagonalPrimes (N / divisor)).card : Rat) / N ≤
      highDiagonalAnchoredWheelRatioBound upper divisor := by
  have hcount :=
    highDiagonalPrimes_card_cast_le_anchoredWheel hAnchor
  have hNQ : (0 : Rat) < N := by exact_mod_cast hNPos
  have hUpperPos : 0 < upper := hNPos.trans_le hUpper
  have hUpperQ : (0 : Rat) < upper := by exact_mod_cast hUpperPos
  have hDivisorQ : (0 : Rat) < divisor := by
    exact_mod_cast hDivisor
  have hfloorNat :
      (N / divisor) * divisor ≤ N :=
    Nat.div_mul_le_self N divisor
  have hfloor :
      ((N / divisor : Nat) : Rat) / N ≤ 1 / divisor := by
    have hcast :
        (((N / divisor) * divisor : Nat) : Rat) ≤ N := by
      exact_mod_cast hfloorNat
    push_cast at hcast
    have hfloorQ :
        ((N / divisor : Nat) : Rat) ≤ (N : Rat) / divisor := by
      apply (le_div_iff₀ hDivisorQ).2
      simpa [mul_assoc, mul_comm, mul_left_comm] using hcast
    calc
      ((N / divisor : Nat) : Rat) / N ≤
          ((N : Rat) / divisor) / N :=
        div_le_div_of_nonneg_right hfloorQ hNQ.le
      _ = 1 / divisor := by
        field_simp [ne_of_gt hNQ, ne_of_gt hDivisorQ]
  have hintercept :
      highDiagonalAnchoredWheelIntercept / N ≤
        highDiagonalAnchoredWheelIntercept / upper := by
    apply (div_le_div_iff₀ hNQ hUpperQ).2
    have hnegative :=
      highDiagonalAnchoredWheelIntercept_neg.le
    have hcast : (N : Rat) ≤ upper := by exact_mod_cast hUpper
    nlinarith
  unfold highDiagonalAnchoredWheelRatioBound
  rw [show
      (332180 +
          (92160 : Rat) *
            (highDiagonalWheelSixPeriod - 92160) /
              highDiagonalWheelSixPeriod -
          9 * 92160 +
          (92160 : Rat) / highDiagonalWheelSixPeriod) =
        highDiagonalAnchoredWheelIntercept by
      rfl] at hcount
  calc
    ((highDiagonalPrimes (N / divisor)).card : Rat) / N ≤
        (((92160 : Rat) / highDiagonalWheelSixPeriod) *
            (N / divisor : Nat) +
          highDiagonalAnchoredWheelIntercept) / N :=
      div_le_div_of_nonneg_right hcount hNQ.le
    _ =
        ((92160 : Rat) / highDiagonalWheelSixPeriod) *
            (((N / divisor : Nat) : Rat) / N) +
          highDiagonalAnchoredWheelIntercept / N := by ring
    _ ≤
        ((92160 : Rat) / highDiagonalWheelSixPeriod) *
            (1 / divisor) +
          highDiagonalAnchoredWheelIntercept / upper := by
      exact add_le_add
        (mul_le_mul_of_nonneg_left hfloor (by positivity))
        hintercept
    _ =
        (92160 : Rat) /
            (highDiagonalWheelSixPeriod * divisor) +
          highDiagonalAnchoredWheelIntercept / upper := by ring

#print axioms highDiagonalPrimes_card_cast_le_anchoredWheel
#print axioms highDiagonalPrimes_card_div_le_anchoredWheel

end Erdos848
