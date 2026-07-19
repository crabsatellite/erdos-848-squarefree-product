import Erdos848.TailR263EvenOneFinite23HallPayment
import Erdos848.TailR263EvenOneTail23

namespace Erdos848

/-!
# Literal three-pivot mixed-half terminal for the R263 cut

The finite term is exactly one half of the 3-of-3 count plus one half of the
2-of-3 count.  The tail term is one half of the three literal one-form tail
counts.  This is the paper's mixed-half inequality, summed on the actual Hall
base part.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem card_le_half_three_two_add_half_tail_sum
    {Point Pivot : Type*} [DecidableEq Point] [DecidableEq Pivot]
    (points : Finset Point) (pivots : Finset Pivot)
    (finite tail : Pivot -> Point -> Prop)
    [DecidableRel finite] [DecidableRel tail]
    (hpivotsCard : pivots.card = 3)
    (hcover : ∀ point ∈ points, ∀ pivot ∈ pivots,
      finite pivot point ∨ tail pivot point) :
    (points.card : Rat) <=
      (1 / 2 : Rat) *
          (((points.filter fun point =>
            3 <= (pivots.filter fun pivot =>
              finite pivot point).card).card : Rat) +
          ((points.filter fun point =>
            2 <= (pivots.filter fun pivot =>
              finite pivot point).card).card : Rat)) +
        (1 / 2 : Rat) *
          (∑ pivot ∈ pivots,
            ((points.filter fun point => tail pivot point).card : Rat)) := by
  classical
  have hpointwise : ∀ point ∈ points,
      (1 : Rat) <=
        (1 / 2 : Rat) *
            eventIndicator
              (3 <= (pivots.filter fun pivot =>
                finite pivot point).card) +
          (1 / 2 : Rat) *
            eventIndicator
              (2 <= (pivots.filter fun pivot =>
                finite pivot point).card) +
          (1 / 2 : Rat) *
            ((pivots.filter fun pivot => tail pivot point).card : Nat) := by
    intro point hpoint
    let finiteCount :=
      (pivots.filter fun pivot => finite pivot point).card
    let tailCount :=
      (pivots.filter fun pivot => tail pivot point).card
    have hfiniteLe : finiteCount <= 3 := by
      dsimp [finiteCount]
      exact (Finset.card_filter_le _ _).trans_eq hpivotsCard
    have hcovered : 3 <= finiteCount + tailCount := by
      have hraw := covered_card_le_finite_add_tail pivots
        (fun pivot => finite pivot point)
        (fun pivot => tail pivot point) (hcover point hpoint)
      simpa [finiteCount, tailCount, hpivotsCard] using hraw
    have htwo :
        2 <=
          (if 3 <= finiteCount then 1 else 0) +
          (if 2 <= finiteCount then 1 else 0) +
          tailCount := by
      interval_cases finiteCount <;> norm_num at hcovered ⊢ <;> omega
    have htwoQ :
        (2 : Rat) <=
          ((if 3 <= finiteCount then 1 else 0) : Nat) +
          ((if 2 <= finiteCount then 1 else 0) : Nat) +
          tailCount := by
      exact_mod_cast htwo
    dsimp [finiteCount, tailCount] at htwoQ ⊢
    unfold eventIndicator
    split_ifs <;> norm_num at htwoQ ⊢ <;> linarith
  have hsum := Finset.sum_le_sum fun point hpoint =>
    hpointwise point hpoint
  have hthreeCount :
      (∑ point ∈ points,
          eventIndicator
            (3 <= (pivots.filter fun pivot =>
              finite pivot point).card)) =
        ((points.filter fun point =>
          3 <= (pivots.filter fun pivot =>
            finite pivot point).card).card : Rat) := by
    simp [eventIndicator]
  have htwoCount :
      (∑ point ∈ points,
          eventIndicator
            (2 <= (pivots.filter fun pivot =>
              finite pivot point).card)) =
        ((points.filter fun point =>
          2 <= (pivots.filter fun pivot =>
            finite pivot point).card).card : Rat) := by
    simp [eventIndicator]
  have htailDoubleCount :
      (∑ point ∈ points,
          ((pivots.filter fun pivot => tail pivot point).card : Rat)) =
        ∑ pivot ∈ pivots,
          ((points.filter fun point => tail pivot point).card : Rat) :=
    sum_tail_card_double_count points pivots tail
  calc
    (points.card : Rat) = ∑ _point ∈ points, (1 : Rat) := by simp
    _ <= ∑ point ∈ points,
        ((1 / 2 : Rat) *
            eventIndicator
              (3 <= (pivots.filter fun pivot =>
                finite pivot point).card) +
          (1 / 2 : Rat) *
            eventIndicator
              (2 <= (pivots.filter fun pivot =>
                finite pivot point).card) +
          (1 / 2 : Rat) *
            ((pivots.filter fun pivot =>
              tail pivot point).card : Nat)) := hsum
    _ = (1 / 2 : Rat) *
          (∑ point ∈ points,
            eventIndicator
              (3 <= (pivots.filter fun pivot =>
                finite pivot point).card)) +
        (1 / 2 : Rat) *
          (∑ point ∈ points,
            eventIndicator
              (2 <= (pivots.filter fun pivot =>
                finite pivot point).card)) +
        (1 / 2 : Rat) *
          (∑ point ∈ points,
            ((pivots.filter fun pivot =>
              tail pivot point).card : Rat)) := by
      rw [Finset.sum_add_distrib, Finset.sum_add_distrib]
      simp only [Finset.mul_sum]
    _ = (1 / 2 : Rat) *
          (((points.filter fun point =>
            3 <= (pivots.filter fun pivot =>
              finite pivot point).card).card : Rat) +
          ((points.filter fun point =>
            2 <= (pivots.filter fun pivot =>
              finite pivot point).card).card : Rat)) +
        (1 / 2 : Rat) *
          (∑ pivot ∈ pivots,
            ((points.filter fun point => tail pivot point).card : Rat)) := by
      rw [hthreeCount, htwoCount, htailDoubleCount]
      ring

theorem hallBasePart_card_le_fiveMillionR263MixedHalf
    {N cutoff : Nat} {B pivots : Finset Nat}
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B)
    (hpivotsCard : pivots.card = 3) :
    ((hallBasePart N B).card : Rat) <=
      fiveMillionR263BaseMixedHalfPayment N B pivots cutoff +
        hallBaseTailSquarePayment N B pivots cutoff 2 := by
  classical
  have hraw := card_le_half_three_two_add_half_tail_sum
    (points := hallBasePart N B) (pivots := pivots)
    (finite := finiteSquarePrimeEvent cutoff)
    (tail := tailSquarePrimeEvent cutoff) hpivotsCard (by
      intro point hpoint pivot hpivot
      exact hallCompletion_finite_or_tail hBprop hpivots point
        (Finset.mem_inter.mp hpoint).1 pivot hpivot)
  unfold fiveMillionR263BaseMixedHalfPayment
    hallBaseTailSquarePayment hallBaseTailSquareCount
  rw [hpivotsCard]
  norm_num
  convert hraw using 1 <;> ring

theorem hallCompletion_card_le_fiveMillionR263MixedHalfComponents
    {N cutoff : Nat} {B pivots : Finset Nat}
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B)
    (hpivotsCard : pivots.card = 3) :
    ((hallCompletion N B).card : Rat) <=
      (hallResidual N B).card +
        fiveMillionR263BaseMixedHalfPayment N B pivots cutoff +
          hallBaseTailSquarePayment N B pivots cutoff 2 := by
  have hbase := hallBasePart_card_le_fiveMillionR263MixedHalf
    (cutoff := cutoff) hBprop hpivots hpivotsCard
  have hpartitionQ :
      ((hallCompletion N B).card : Rat) =
        (hallResidual N B).card + (hallBasePart N B).card := by
    exact_mod_cast (hallCompletion_card_partition N B).symm
  rw [hpartitionQ]
  linarith

structure FiveMillionR263MixedHalfTerminalCertificate
    (N : Nat) (B : Finset Nat) : Type where
  branch : FiveMillionR263Branch
  pivots : Finset Nat
  pivotsCard : pivots.card = 3
  cutoff : Nat
  pivotsCompletion : pivots ⊆ hallCompletion N B
  residualEnvelope : Rat
  finiteEnvelope : Rat
  tailEnvelope : Rat
  residualBound : ((hallResidual N B).card : Rat) / N <= residualEnvelope
  finiteBound :
    fiveMillionR263BaseMixedHalfPayment N B pivots cutoff / N <=
      finiteEnvelope
  tailBound :
    hallBaseTailSquarePayment N B pivots cutoff 2 / N <= tailEnvelope
  componentTotalBound :
    residualEnvelope + finiteEnvelope + tailEnvelope <=
      fiveMillionR263BranchCeiling branch

theorem FiveMillionR263MixedHalfTerminalCertificate.completion_ratio_lt_target
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBprop : NonSquarefreeProductProp B)
    (certificate : FiveMillionR263MixedHalfTerminalCertificate N B) :
    ((hallCompletion N B).card : Rat) / N < tailHallTarget N := by
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 5_000_000) hLower)
  have hraw := hallCompletion_card_le_fiveMillionR263MixedHalfComponents
    (cutoff := certificate.cutoff) hBprop certificate.pivotsCompletion
      certificate.pivotsCard
  have hratio := div_le_div_of_nonneg_right hraw hNpos.le
  calc
    ((hallCompletion N B).card : Rat) / N <=
        ((hallResidual N B).card +
          fiveMillionR263BaseMixedHalfPayment N B certificate.pivots
            certificate.cutoff +
          hallBaseTailSquarePayment N B certificate.pivots
            certificate.cutoff 2) / N := hratio
    _ = ((hallResidual N B).card : Rat) / N +
        fiveMillionR263BaseMixedHalfPayment N B certificate.pivots
          certificate.cutoff / N +
        hallBaseTailSquarePayment N B certificate.pivots
          certificate.cutoff 2 / N := by ring
    _ <= certificate.residualEnvelope + certificate.finiteEnvelope +
        certificate.tailEnvelope :=
      add_le_add (add_le_add certificate.residualBound
        certificate.finiteBound) certificate.tailBound
    _ <= fiveMillionR263BranchCeiling certificate.branch :=
      certificate.componentTotalBound
    _ <= globalMixedOneOddSevenCellBudget :=
      fiveMillionR263BranchCeiling_le_controlling certificate.branch
    _ < tailHallTarget N := globalMixedOneOddSevenCellBudget_lt_target hLower

#print axioms card_le_half_three_two_add_half_tail_sum
#print axioms hallBasePart_card_le_fiveMillionR263MixedHalf
#print axioms FiveMillionR263MixedHalfTerminalCertificate.completion_ratio_lt_target

end Erdos848
