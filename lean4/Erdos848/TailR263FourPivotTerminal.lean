import Erdos848.TailFiveMillionR263Terminal
import Erdos848.TailR263FourPivotDefs

namespace Erdos848

/-!
# Literal four-pivot terminal for the R263 cut

The two-cell `E2` row uses the paper's four-pivot Boolean inequality rather
than the coarser generic threshold payment.  This file keeps that distinction
semantic: the finite component is one half of the sum of the four exact
triple intersections, and the tail component is one half of the four literal
one-form tail counts.  No final Hall inequality is accepted as input.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/-- Summed form of the four-pivot Boolean inequality. -/
theorem card_le_half_triple_intersections_add_half_tail_sum
    {Point Pivot : Type*} [DecidableEq Point] [DecidableEq Pivot]
    (points : Finset Point) (pivots : Finset Pivot)
    (finite tail : Pivot -> Point -> Prop)
    [DecidableRel finite] [DecidableRel tail]
    (hpivotsCard : pivots.card = 4)
    (hcover : ∀ point ∈ points, ∀ pivot ∈ pivots,
      finite pivot point ∨ tail pivot point) :
    (points.card : Rat) <=
      (1 / 2 : Rat) *
          (∑ triple ∈ pivots.powersetCard 3,
            ((eventIntersection points finite triple).card : Rat)) +
        (1 / 2 : Rat) *
          (∑ pivot ∈ pivots,
            ((points.filter fun point => tail pivot point).card : Rat)) := by
  classical
  have hpointwise : ∀ point ∈ points,
      (1 : Rat) <=
        (1 / 2 : Rat) *
            ((activeIndices pivots (fun pivot => finite pivot point)).card.choose 3 : Nat) +
          (1 / 2 : Rat) *
            ((pivots.filter fun pivot => tail pivot point).card : Nat) := by
    intro point hpoint
    let finiteCount :=
      (activeIndices pivots (fun pivot => finite pivot point)).card
    let tailCount := (pivots.filter fun pivot => tail pivot point).card
    have hfiniteLe : finiteCount <= 4 := by
      dsimp [finiteCount, activeIndices]
      exact (Finset.card_filter_le _ _).trans_eq hpivotsCard
    have hcovered : 4 <= finiteCount + tailCount := by
      have hraw := covered_card_le_finite_add_tail pivots
        (fun pivot => finite pivot point) (fun pivot => tail pivot point)
        (hcover point hpoint)
      simpa [finiteCount, tailCount, activeIndices, hpivotsCard] using hraw
    have htwo : 2 <= finiteCount.choose 3 + tailCount := by
      interval_cases finiteCount <;> norm_num at hcovered ⊢ <;> omega
    have htwoQ : (2 : Rat) <=
        (finiteCount.choose 3 : Nat) + (tailCount : Nat) := by
      exact_mod_cast htwo
    dsimp [finiteCount, tailCount] at htwoQ ⊢
    linarith
  have hsum := Finset.sum_le_sum fun point hpoint => hpointwise point hpoint
  have hfiniteDoubleCount :
      (∑ point ∈ points,
          (((activeIndices pivots
            (fun pivot => finite pivot point)).card.choose 3 : Nat) : Rat)) =
        ∑ triple ∈ pivots.powersetCard 3,
          ((eventIntersection points finite triple).card : Rat) := by
    exact_mod_cast
      (sum_choose_active_eq_sum_intersections points pivots finite 3)
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
            ((activeIndices pivots
              (fun pivot => finite pivot point)).card.choose 3 : Nat) +
          (1 / 2 : Rat) *
            ((pivots.filter fun pivot => tail pivot point).card : Nat)) := hsum
    _ = (1 / 2 : Rat) *
          (∑ point ∈ points,
            (((activeIndices pivots
              (fun pivot => finite pivot point)).card.choose 3 : Nat) : Rat)) +
        (1 / 2 : Rat) *
          (∑ point ∈ points,
            ((pivots.filter fun pivot => tail pivot point).card : Rat)) := by
      rw [Finset.sum_add_distrib]
      simp only [Finset.mul_sum]
    _ = (1 / 2 : Rat) *
          (∑ triple ∈ pivots.powersetCard 3,
            ((eventIntersection points finite triple).card : Rat)) +
        (1 / 2 : Rat) *
          (∑ pivot ∈ pivots,
            ((points.filter fun point => tail pivot point).card : Rat)) := by
      rw [hfiniteDoubleCount, htailDoubleCount]

/-- The actual Hall base part is paid by the two literal four-pivot terms. -/
theorem hallBasePart_card_le_fiveMillionR263FourPivot
    {N cutoff : Nat} {B pivots : Finset Nat}
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B)
    (hpivotsCard : pivots.card = 4) :
    ((hallBasePart N B).card : Rat) <=
      fiveMillionR263BaseFiniteTriplePayment N B pivots cutoff +
        hallBaseTailSquarePayment N B pivots cutoff 3 := by
  classical
  have hraw := card_le_half_triple_intersections_add_half_tail_sum
    (points := hallBasePart N B) (pivots := pivots)
    (finite := finiteSquarePrimeEvent cutoff)
    (tail := tailSquarePrimeEvent cutoff) hpivotsCard (by
      intro point hpoint pivot hpivot
      exact hallCompletion_finite_or_tail hBprop hpivots point
        (Finset.mem_inter.mp hpoint).1 pivot hpivot)
  unfold fiveMillionR263BaseFiniteTriplePayment
    hallBaseTailSquarePayment hallBaseTailSquareCount
  rw [hpivotsCard]
  norm_num
  convert hraw using 1 <;> ring

theorem hallCompletion_card_le_fiveMillionR263FourPivotComponents
    {N cutoff : Nat} {B pivots : Finset Nat}
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B)
    (hpivotsCard : pivots.card = 4) :
    ((hallCompletion N B).card : Rat) <=
      (hallResidual N B).card +
        fiveMillionR263BaseFiniteTriplePayment N B pivots cutoff +
          hallBaseTailSquarePayment N B pivots cutoff 3 := by
  have hbase := hallBasePart_card_le_fiveMillionR263FourPivot
    (cutoff := cutoff) hBprop hpivots hpivotsCard
  have hpartitionQ :
      ((hallCompletion N B).card : Rat) =
        (hallResidual N B).card + (hallBasePart N B).card := by
    exact_mod_cast (hallCompletion_card_partition N B).symm
  rw [hpartitionQ]
  linarith

structure FiveMillionR263FourPivotTerminalCertificate
    (N : Nat) (B : Finset Nat) : Type where
  branch : FiveMillionR263Branch
  pivots : Finset Nat
  pivotsCard : pivots.card = 4
  cutoff : Nat
  pivotsCompletion : pivots ⊆ hallCompletion N B
  residualEnvelope : Rat
  finiteEnvelope : Rat
  tailEnvelope : Rat
  residualBound : ((hallResidual N B).card : Rat) / N <= residualEnvelope
  finiteBound :
    fiveMillionR263BaseFiniteTriplePayment N B pivots cutoff / N <=
      finiteEnvelope
  tailBound :
    hallBaseTailSquarePayment N B pivots cutoff 3 / N <= tailEnvelope
  componentTotalBound :
    residualEnvelope + finiteEnvelope + tailEnvelope <=
      fiveMillionR263BranchCeiling branch

theorem FiveMillionR263FourPivotTerminalCertificate.completion_ratio_lt_target
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBprop : NonSquarefreeProductProp B)
    (certificate : FiveMillionR263FourPivotTerminalCertificate N B) :
    ((hallCompletion N B).card : Rat) / N < tailHallTarget N := by
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 5_000_000) hLower)
  have hraw := hallCompletion_card_le_fiveMillionR263FourPivotComponents
    (cutoff := certificate.cutoff) hBprop certificate.pivotsCompletion
      certificate.pivotsCard
  have hratio := div_le_div_of_nonneg_right hraw hNpos.le
  calc
    ((hallCompletion N B).card : Rat) / N <=
        ((hallResidual N B).card +
          fiveMillionR263BaseFiniteTriplePayment N B certificate.pivots
            certificate.cutoff +
          hallBaseTailSquarePayment N B certificate.pivots
            certificate.cutoff 3) / N := hratio
    _ = ((hallResidual N B).card : Rat) / N +
        fiveMillionR263BaseFiniteTriplePayment N B certificate.pivots
          certificate.cutoff / N +
        hallBaseTailSquarePayment N B certificate.pivots
          certificate.cutoff 3 / N := by ring
    _ <= certificate.residualEnvelope + certificate.finiteEnvelope +
        certificate.tailEnvelope :=
      add_le_add (add_le_add certificate.residualBound
        certificate.finiteBound) certificate.tailBound
    _ <= fiveMillionR263BranchCeiling certificate.branch :=
      certificate.componentTotalBound
    _ <= fiveMillionR263PublicBudget :=
      fiveMillionR263BranchCeiling_le_publicBudget certificate.branch
    _ < tailHallTarget N := fiveMillionR263PublicBudget_lt_target hLower

#print axioms card_le_half_triple_intersections_add_half_tail_sum
#print axioms hallBasePart_card_le_fiveMillionR263FourPivot
#print axioms FiveMillionR263FourPivotTerminalCertificate.completion_ratio_lt_target

end Erdos848
