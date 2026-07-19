import Erdos848.TailFiveMillionBudget
import Erdos848.TailFiveMillionHallTailCore
import Erdos848.TailHallSieveBridge
import Erdos848.HallPartition
import Erdos848.TailFiveMillionResidual
import Erdos848.TailFiveMillionPeriodicBridge
import Erdos848.TailFiveMillionPeriodicProducer

namespace Erdos848

/-!
# Exact Hall bridge for `5,000,000 ≤ N < 10,000,000`

This file separates the unconditional logic from the still-missing producer
evidence.  It proves the good-cell and capacity-two selection consequences,
identifies the exact controlling rational total, and reduces the interval to
a literal pivot-sieve statement about `hallCompletion N B`.

Nothing below asserts that the remaining witness exists.  In particular, the
assembly theorem at the end is not an interval close until
`Erdos848FiveToTenMillionBranchExhaustion` has a kernel proof.
-/

/-! ## Cell and fibre selection -/

/-- If a finite cell is nonconstant in each of two residue coordinates, one
pair in the cell breaks both coordinates simultaneously.  This is the exact
contrapositive used to select a pair from a `good` cell. -/
theorem exists_pair_breaking_both_coordinates
    {X R S : Type*} [DecidableEq X]
    (points : Finset X) (r : X → R) (s : X → S)
    (hr : ∃ x ∈ points, ∃ y ∈ points, r x ≠ r y)
    (hs : ∃ x ∈ points, ∃ y ∈ points, s x ≠ s y) :
    ∃ x ∈ points, ∃ y ∈ points,
      r x ≠ r y ∧ s x ≠ s y := by
  classical
  by_contra hnoPair
  have hpair : ∀ x y : {z // z ∈ points},
      r x.1 = r y.1 ∨ s x.1 = s y.1 := by
    intro x y
    by_cases hre : r x.1 = r y.1
    · exact Or.inl hre
    · right
      by_contra hse
      apply hnoPair
      exact ⟨x.1, x.2, y.1, y.2, hre, hse⟩
  rcases two_coordinate_fibre
      (r := fun x : {z // z ∈ points} => r x.1)
      (s := fun x : {z // z ∈ points} => s x.1) hpair with hR | hS
  · obtain ⟨x, hx, y, hy, hxy⟩ := hr
    exact hxy (hR ⟨x, hx⟩ ⟨y, hy⟩)
  · obtain ⟨x, hx, y, hy, hxy⟩ := hs
    exact hxy (hS ⟨x, hx⟩ ⟨y, hy⟩)

/-- Failure of the capacity-two selection of eight cells gives the exact
defect used in the `s = 8,9` branches.  Setting `s` to the number of occupied
cells and allowing `s - 8` dummy slots is equivalent to selecting at least
eight real capacity-two fibres. -/
theorem exists_capacityTwo_eight_selection_defect
    {L R : Type*} [Fintype L] [Fintype R]
    [DecidableEq L] [DecidableEq R]
    (edge : L → R → Prop) [DecidableRel edge]
    (s : ℕ) (hs : 8 ≤ s)
    (hno : ¬ ∃ f : L → (R × Fin 2) ⊕ Fin (s - 8),
      Function.Injective f ∧ ∀ x,
        match f x with
        | Sum.inl real => edge x real.1
        | Sum.inr _dummy => True) :
    ∃ Y : Finset L,
      s - 7 ≤ Y.card - 2 * (capacityTwoNeighbours edge Y).card := by
  obtain ⟨Y, hY⟩ :=
    exists_capacityTwo_defect_with_spare edge (s - 8) (by
      rintro ⟨f, hf, hrespects⟩
      apply hno
      refine ⟨f, hf, ?_⟩
      intro x
      cases hfx : f x with
      | inl real => simpa [hfx] using hrespects x
      | inr dummy => trivial)
  refine ⟨Y, ?_⟩
  omega

/-! ## Exact controlling budget -/

def fiveMillionLower : ℕ := 5_000_000
def fiveMillionUpper : ℕ := 10_000_000

def fiveMillionOneOddS7Total : ℚ :=
  fiveMillionOneOddS7DiagonalEnvelope +
      (2 * fiveMillionOneOddS7Density / 25 +
        2 * (fiveMillionOneOddS7Density +
          fiveMillionOneOddS7PrefixPayment) / fiveMillionLower) +
      (1 / 2 : ℚ) * fiveMillionOddRoot7Envelope +
      (1 / 2 : ℚ) * 6 * fiveMillionSquareTail7Envelope / 25 +
      128 / fiveMillionLower

theorem fiveMillionOneOddS7Total_lt_lowerTarget :
    fiveMillionOneOddS7Total < tailHallTarget fiveMillionLower := by
  simpa [fiveMillionOneOddS7Total, fiveMillionLower, tailHallTarget] using
    fiveMillionOneOddS7_budget

theorem fiveMillionOneOddS7Total_lt_target
    {N : ℕ} (hN : fiveMillionLower ≤ N) :
    fiveMillionOneOddS7Total < tailHallTarget N := by
  exact fiveMillionOneOddS7Total_lt_lowerTarget.trans_le
    (tailHallTarget_mono (by norm_num [fiveMillionLower]) hN)

/-! ## Honest residual producer obligation -/

/-- Exact finite-threshold payment on the two sharp base progressions only.
The off-base part of the completion is paid separately by its diagonal
cardinality; this is the decomposition used by the paper's mixed rows. -/
noncomputable def hallBaseFiniteThresholdPayment
    (N : ℕ) (B pivots : Finset ℕ) (cutoff k : ℕ) : ℚ := by
  classical
  exact (((hallBasePart N B).filter fun point =>
    k ≤ (pivots.filter fun pivot =>
      finiteSquarePrimeEvent cutoff pivot point).card).card : ℚ)

/-- Literal one-pivot tail count on the base part. -/
/- Moved to `TailFiveMillionHallTailCore`.
noncomputable def hallBaseTailSquareCount
    (N : ℕ) (B : Finset ℕ) (cutoff pivot : ℕ) : ℚ := by
  classical
  exact (((hallBasePart N B).filter
    (tailSquarePrimeEvent cutoff pivot)).card : ℚ)

/-- Exact one-form tail payment on the base part of the completion. -/
noncomputable def hallBaseTailSquarePayment
    (N : ℕ) (B pivots : Finset ℕ) (cutoff k : ℕ) : ℚ := by
  classical
  exact (∑ pivot ∈ pivots,
    hallBaseTailSquareCount N B cutoff pivot) /
        (pivots.card - k + 1 : ℕ)

/-- Pointwise `k`-of-`n` sieve on the literal base part.  The pivots are
members of the full Hall completion, so every base point is covered by a
finite or tail square-prime event. -/
-/

theorem hallBasePart_card_le_pivotThresholdSieve
    {N cutoff k : ℕ} {B pivots : Finset ℕ}
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B)
    (hk : k ≤ pivots.card) :
    ((hallBasePart N B).card : ℚ) ≤
      hallBaseFiniteThresholdPayment N B pivots cutoff k +
        hallBaseTailSquarePayment N B pivots cutoff k := by
  classical
  simpa [hallBaseFiniteThresholdPayment, hallBaseTailSquarePayment] using
    (card_le_finite_threshold_add_tail_sum
      (points := hallBasePart N B) (indices := pivots)
      (finite := finiteSquarePrimeEvent cutoff)
      (tail := tailSquarePrimeEvent cutoff) hk (by
        intro point hpoint pivot hpivot
        exact hallCompletion_finite_or_tail hBprop hpivots point
          (Finset.mem_inter.mp hpoint).1 pivot hpivot))

/-- The abstract periodic certificate now bounds the literal finite payment
appearing in the Hall witness. -/
theorem hallBaseFiniteThresholdPayment_threeSeven_ratio_le
    {N : ℕ} {B pivots : Finset ℕ}
    (hLower : 5_000_000 ≤ N)
    (certificate : FiveMillionBasePeriodicThresholdCertificate N B pivots) :
    hallBaseFiniteThresholdPayment N B pivots 7 3 / N ≤
      2 * fiveMillionOneOddS7Density / 25 +
        2 * (fiveMillionOneOddS7Density +
          fiveMillionOneOddS7PrefixPayment) / fiveMillionLower := by
  simpa [hallBaseFiniteThresholdPayment, fiveMillionFiniteEventCount,
    fiveMillionOneOddS7Density, fiveMillionOneOddS7PrefixPayment,
    fiveMillionLower] using
      fiveMillionBasePeriodicThreshold_ratio_le hLower certificate

/-- Literal per-pivot tail bounds for the controlling six-pivot row.  The
next theorem performs the exact denominator-four aggregation; a producer is
responsible only for these actual one-pivot counts. -/
/- Moved to `TailFiveMillionHallTailCore`.
structure FiveMillionBaseTailCertificate
    (N : ℕ) (B pivots : Finset ℕ) : Prop where
  pivotsCard : pivots.card = 6
  perPivot : ∀ pivot ∈ pivots,
    hallBaseTailSquareCount N B 7 pivot / N ≤
      (fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3

/-- Exact aggregation of the six one-form tail bounds with threshold `k=3`.
The resulting factor is `6 / (6 - 3 + 1) / 3 = 1/2`. -/
theorem hallBaseTailSquarePayment_sixThree_ratio_le
    {N : ℕ} {B pivots : Finset ℕ}
    (certificate : FiveMillionBaseTailCertificate N B pivots) :
    hallBaseTailSquarePayment N B pivots 7 3 / N ≤
      (1 / 2 : ℚ) * fiveMillionOddRoot7Envelope +
        (1 / 2 : ℚ) * 6 * fiveMillionSquareTail7Envelope / 25 := by
  have hsum :
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B 7 pivot / N) ≤
      6 * ((fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3) := by
    have h := Finset.sum_le_sum fun pivot hpivot =>
      certificate.perPivot pivot hpivot
    simpa [certificate.pivotsCard] using h
  unfold hallBaseTailSquarePayment
  rw [certificate.pivotsCard]
  change
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 7 pivot) / 4 / N ≤ _
  calc
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 7 pivot) / 4 / N =
        (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B 7 pivot / N) / 4 := by
      rw [← Finset.sum_div]
      ring
    _ ≤ (6 * ((fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3)) / 4 := by
      exact div_le_div_of_nonneg_right hsum (by norm_num)
    _ = (1 / 2 : ℚ) * fiveMillionOddRoot7Envelope +
        (1 / 2 : ℚ) * 6 * fiveMillionSquareTail7Envelope / 25 := by
      ring

/-- Fully semantic terminal data for the controlling `O1, s = 7` branch.
Every field refers to the actual Hall completion, residual, pivots or CRT
events.  Numerical maximization is absent from this interface. -/
-/

structure FiveMillionOneOddS7Certificate
    (N : ℕ) (B : Finset ℕ) : Type where
  charged : Finset ℕ
  parity : Bool
  cells : Finset (Fin 9)
  pivots : Finset ℕ
  chargedSubset : charged ⊆ hallResidual N B
  chargedCard : charged.card ≤ 128
  cellsCard : cells.card ≤ 7
  structuredClass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
    x % 4 = if parity then 3 else 1
  structuredCells : ∀ x ∈ fiveMillionStructuredResidual N B charged,
    oddModNineResidue x ∈ cells
  pivotPattern : FiveMillionSixPivotPattern N B pivots
  tail : FiveMillionBaseTailCertificate N B pivots

/-- A literal terminal witness: selected pivots belong to the actual Hall
completion.  The actual off-base residual cardinality plus the exact
finite-threshold and one-form-tail payments on the base part are bounded by
the controlling row.  The positivity of `k` rules out a vacuous zero-threshold
branch.  The finite term counts each base point once, exactly as in the
paper's periodic Boolean dynamic programme; it is not the multiplicity-
weighted sum of all `k`-fold intersections.

This proposition is intentionally stronger and more concrete than merely
postulating the final Hall inequality.  A producer must expose real pivots
and prove counts of the real square-prime events defined in
`TailHallSieveBridge`.
-/
def FiveMillionPivotSieveWitness (N : ℕ) (B : Finset ℕ) : Prop :=
  ∃ pivots : Finset ℕ, ∃ cutoff k : ℕ,
    0 < k ∧ k ≤ pivots.card ∧
      pivots ⊆ hallCompletion N B ∧
      (((hallResidual N B).card : ℚ) +
        hallBaseFiniteThresholdPayment N B pivots cutoff k +
        hallBaseTailSquarePayment N B pivots cutoff k) / N ≤
          fiveMillionOneOddS7Total

/-- The controlling terminal data directly construct the literal Hall-sieve
witness.  This theorem is the minimal closed endpoint for the `O1, s = 7`
mechanism; only the allocation and pointwise CRT/root producers remain. -/
theorem fiveMillionOneOddS7Certificate.toPivotSieveWitness
    {N : ℕ} {B : Finset ℕ}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (certificate : FiveMillionOneOddS7Certificate N B) :
    FiveMillionPivotSieveWitness N B := by
  refine ⟨certificate.pivots, 7, 3, by norm_num, ?_, ?_, ?_⟩
  · simpa [certificate.pivotPattern.pivotsCard]
  · intro pivot hpivot
    exact (Finset.mem_sdiff.mp
      (certificate.pivotPattern.pivotsResidual hpivot)).1
  have hresidual := fiveMillionResidual_ratio_le_oneOddSevenCells
    hLower hUpper hBout hBprop certificate.chargedSubset
      certificate.chargedCard certificate.parity certificate.cells
      certificate.cellsCard certificate.structuredClass
      certificate.structuredCells
  have hfinite := hallBaseFiniteThresholdPayment_threeSeven_ratio_le
    hLower (certificate.pivotPattern.toPeriodicCertificate hBout)
  simp only [fiveMillionLower] at hfinite
  have htail := hallBaseTailSquarePayment_sixThree_ratio_le certificate.tail
  have hLowerQ : (5_000_000 : ℚ) ≤ N := by exact_mod_cast hLower
  have hraw : (128 : ℚ) / N ≤ 128 / 5_000_000 := by
    exact div_le_div_of_nonneg_left (by norm_num) (by norm_num) hLowerQ
  rw [add_div, add_div]
  unfold fiveMillionOneOddS7Total
  simp only [fiveMillionLower]
  linarith

/-- Exact producer obligation for the five-to-ten-million interval.

The pivot-sieve estimate is needed only under a *strict Hall defect*.  It
cannot hold for every compatible outside set: for example, when `B = ∅` the
Hall completion is the sharp set `OriginalA7 N`, so equality with the target
is possible.  The paper's mixed argument is a contradiction argument, and
the strict-defect hypothesis below is the precise semantic input from which
its residual-density and allocation producers operate. -/
def Erdos848FiveToTenMillionBranchExhaustion : Prop :=
  ∀ N, fiveMillionLower ≤ N → N < fiveMillionUpper →
    ∀ B : Finset ℕ, Erdos848OutsideSet N B →
      NonSquarefreeProductProp B →
      (OriginalA7 N).card <
        B.card + (hallNonNeighbours N B).card →
      FiveMillionPivotSieveWitness N B

theorem fiveMillionCompletionRatio_of_branchExhaustion
    (hexhaustive : Erdos848FiveToTenMillionBranchExhaustion)
    {N : ℕ} (hLower : fiveMillionLower ≤ N)
    (hUpper : N < fiveMillionUpper) {B : Finset ℕ}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card) :
    ((hallCompletion N B).card : ℚ) / N ≤
      fiveMillionOneOddS7Total := by
  obtain ⟨pivots, cutoff, k, _hkPos, hk, hpivots, hpayment⟩ :=
    hexhaustive N hLower hUpper B hBout hBprop hdefect
  have hbase := hallBasePart_card_le_pivotThresholdSieve
    (cutoff := cutoff) hBprop hpivots hk
  have hpartitionQ :
      ((hallCompletion N B).card : ℚ) =
        ((hallResidual N B).card : ℚ) +
          ((hallBasePart N B).card : ℚ) := by
    exact_mod_cast (hallCompletion_card_partition N B).symm
  have hcompletion :
      ((hallCompletion N B).card : ℚ) ≤
        ((hallResidual N B).card : ℚ) +
          hallBaseFiniteThresholdPayment N B pivots cutoff k +
          hallBaseTailSquarePayment N B pivots cutoff k := by
    rw [hpartitionQ]
    linarith
  have hNQ : (0 : ℚ) ≤ N := by positivity
  exact (div_le_div_of_nonneg_right hcompletion hNQ).trans hpayment

def Erdos848FiveToTenMillionClose : Prop :=
  ∀ N, fiveMillionLower ≤ N → N < fiveMillionUpper →
    OriginalProblem848Statement N

/-- Pure assembly: a kernel proof of the direct pivot-sieve exhaustion closes
the literal interval and no rounding or Hall-conversion premise remains. -/
theorem erdos848FiveToTenMillionClose_of_branchExhaustion
    (hexhaustive : Erdos848FiveToTenMillionBranchExhaustion) :
    Erdos848FiveToTenMillionClose := by
  intro N hLower hUpper
  apply originalProblem_of_hallStatement
  intro B hBout hBprop
  by_contra hnotHall
  have hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card := by omega
  have hHall := hall_bound_of_completion_ratio_le_tailTarget
    (lt_of_lt_of_le (by norm_num [fiveMillionLower]) hLower) hBout
    ((fiveMillionCompletionRatio_of_branchExhaustion
      hexhaustive hLower hUpper hBout hBprop hdefect).trans
        (le_of_lt (fiveMillionOneOddS7Total_lt_target hLower)))
  omega

end Erdos848
