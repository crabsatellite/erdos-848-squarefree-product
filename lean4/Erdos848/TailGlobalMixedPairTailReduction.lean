import Erdos848.TailGlobalMixedClosePair
import Erdos848.TailPairSieve
import Erdos848.TailThresholdSieve

namespace Erdos848

/-!
# Direct eight-pivot reduction on the fixed Hall cut

Every literal Hall-completion point is either in the two sharp base
progressions or is an actual off-base residual point, hence a diagonal-bad
point.  This gives one `B`-independent terminal universe on which the
`n=8, k=5, cutoff=95` finite and pair-tail payments can be counted.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def globalMixedTailDiagonalBad (N : Nat) : Finset Nat :=
  (Finset.Icc 1 N).filter fun point =>
    point % 25 ≠ 7 ∧ point % 25 ≠ 18 ∧
      ¬ Squarefree (point ^ 2 + 1)

def globalMixedTerminalUniverse (N : Nat) : Finset Nat :=
  lowBaseSet N ∪ globalMixedTailDiagonalBad N

lemma hallResidual_subset_globalMixedTailDiagonalBad
    {N : Nat} {B : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B) :
    hallResidual N B ⊆ globalMixedTailDiagonalBad N := by
  intro point hpoint
  have hpointCompletion : point ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpoint).1
  have hpointNotBase : point ∉ lowBaseSet N :=
    (Finset.mem_sdiff.mp hpoint).2
  have hpointBounds := hallCompletion_subset_Icc hBout hpointCompletion
  have hpointOutside : point % 25 ≠ 7 ∧ point % 25 ≠ 18 := by
    constructor
    · intro hseven
      apply hpointNotBase
      apply Finset.mem_union_left
      exact Finset.mem_filter.mpr ⟨hpointBounds, hseven⟩
    · intro heighteen
      apply hpointNotBase
      apply Finset.mem_union_right
      exact Finset.mem_filter.mpr ⟨hpointBounds, heighteen⟩
  have hpointDiagonal : ¬ Squarefree (point ^ 2 + 1) := by
    simpa [pow_two] using hallCompletion_nonSquarefree
      hBprop point hpointCompletion point hpointCompletion
  exact Finset.mem_filter.mpr
    ⟨hpointBounds, hpointOutside.1, hpointOutside.2, hpointDiagonal⟩

lemma hallCompletion_subset_globalMixedTerminalUniverse
    {N : Nat} {B : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B) :
    hallCompletion N B ⊆ globalMixedTerminalUniverse N := by
  intro point hpoint
  by_cases hbase : point ∈ lowBaseSet N
  · exact Finset.mem_union_left _ hbase
  · apply Finset.mem_union_right
    apply hallResidual_subset_globalMixedTailDiagonalBad hBout hBprop
    exact Finset.mem_sdiff.mpr ⟨hpoint, hbase⟩

noncomputable def globalMixedUniverseFiniteThresholdPayment
    (N : Nat) (pivots : Finset Nat) (cutoff k : Nat) : Rat := by
  classical
  exact (((globalMixedTerminalUniverse N).filter fun point =>
    k <= (pivots.filter fun pivot =>
      finiteSquarePrimeEvent cutoff pivot point).card).card : Rat)

noncomputable def globalMixedUniversePairTailPayment
    (N : Nat) (pivots : Finset Nat) (cutoff k : Nat) : Rat := by
  classical
  exact
    ((∑ subset ∈ pivots.powersetCard 2,
      (eventIntersection (globalMixedTerminalUniverse N)
        (tailSquarePrimeEvent cutoff) subset).card : Nat) : Rat) /
      ((pivots.card - k + 1).choose 2 : Nat)

/-- The actual completion is bounded by the two literal counts on the fixed
terminal universe.  No Hall subset, diagonal point, or pair intersection is
replaced by an abstract cardinality premise. -/
theorem hallCompletion_card_le_globalMixedUniversePairTail
    {N cutoff k : Nat} {B pivots : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B)
    (hk : k < pivots.card) :
    ((hallCompletion N B).card : Rat) <=
      globalMixedUniverseFiniteThresholdPayment N pivots cutoff k +
        globalMixedUniversePairTailPayment N pivots cutoff k := by
  classical
  have hraw := card_le_finite_threshold_add_pairTail_sum
    (points := hallCompletion N B) (indices := pivots)
    (finite := finiteSquarePrimeEvent cutoff)
    (tail := tailSquarePrimeEvent cutoff) hk
    (hallCompletion_finite_or_tail hBprop hpivots)
  let completionFinite := (hallCompletion N B).filter fun point =>
    k <= (pivots.filter fun pivot =>
      finiteSquarePrimeEvent cutoff pivot point).card
  let universeFinite := (globalMixedTerminalUniverse N).filter fun point =>
    k <= (pivots.filter fun pivot =>
      finiteSquarePrimeEvent cutoff pivot point).card
  have hfiniteSubset : completionFinite ⊆ universeFinite := by
    intro point hpoint
    have hparts := Finset.mem_filter.mp hpoint
    exact Finset.mem_filter.mpr
      ⟨hallCompletion_subset_globalMixedTerminalUniverse
        hBout hBprop hparts.1, hparts.2⟩
  have hfiniteQ : (completionFinite.card : Rat) <=
      (universeFinite.card : Rat) := by
    exact_mod_cast Finset.card_le_card hfiniteSubset
  have hpairNat :
      (∑ subset ∈ pivots.powersetCard 2,
        (eventIntersection (hallCompletion N B)
          (tailSquarePrimeEvent cutoff) subset).card) <=
      ∑ subset ∈ pivots.powersetCard 2,
        (eventIntersection (globalMixedTerminalUniverse N)
          (tailSquarePrimeEvent cutoff) subset).card := by
    apply Finset.sum_le_sum
    intro subset _hsubset
    apply Finset.card_le_card
    intro point hpoint
    have hparts := Finset.mem_filter.mp hpoint
    exact Finset.mem_filter.mpr
      ⟨hallCompletion_subset_globalMixedTerminalUniverse
        hBout hBprop hparts.1, hparts.2⟩
  have hpairQ :
      (((∑ subset ∈ pivots.powersetCard 2,
        (eventIntersection (hallCompletion N B)
          (tailSquarePrimeEvent cutoff) subset).card) : Nat) : Rat) <=
      (((∑ subset ∈ pivots.powersetCard 2,
        (eventIntersection (globalMixedTerminalUniverse N)
          (tailSquarePrimeEvent cutoff) subset).card) : Nat) : Rat) := by
    exact_mod_cast hpairNat
  have htwo : 2 <= pivots.card - k + 1 := by omega
  have hdenPos : (0 : Rat) < ((pivots.card - k + 1).choose 2 : Nat) := by
    exact_mod_cast Nat.choose_pos htwo
  have hpairDiv := div_le_div_of_nonneg_right hpairQ hdenPos.le
  have hraw' : ((hallCompletion N B).card : Rat) <=
      (completionFinite.card : Rat) +
        ((∑ subset ∈ pivots.powersetCard 2,
          (eventIntersection (hallCompletion N B)
            (tailSquarePrimeEvent cutoff) subset).card : Nat) : Rat) /
          (((pivots.card - k + 1).choose 2 : Nat) : Rat) := by
    simpa [completionFinite] using hraw
  unfold globalMixedUniverseFiniteThresholdPayment
    globalMixedUniversePairTailPayment
  change (hallCompletion N B).card <=
      (universeFinite.card : Rat) +
        ((∑ subset ∈ pivots.powersetCard 2,
          (eventIntersection (globalMixedTerminalUniverse N)
            (tailSquarePrimeEvent cutoff) subset).card : Nat) : Rat) /
          (((pivots.card - k + 1).choose 2 : Nat) : Rat)
  exact hraw'.trans (add_le_add hfiniteQ hpairDiv)

/-! The optimized terminal split pays every off-base residual point once,
through the diagonal set, and applies the finite/pair-tail sieve only to the
two base progressions.  This is strictly sharper than sieving the union. -/

noncomputable def globalMixedBaseFiniteThresholdPayment
    (N : Nat) (pivots : Finset Nat) (cutoff k : Nat) : Rat := by
  classical
  exact (((lowBaseSet N).filter fun point =>
    k <= (pivots.filter fun pivot =>
      finiteSquarePrimeEvent cutoff pivot point).card).card : Rat)

noncomputable def globalMixedBasePairTailPayment
    (N : Nat) (pivots : Finset Nat) (cutoff k : Nat) : Rat := by
  classical
  exact
    ((∑ subset ∈ pivots.powersetCard 2,
      (eventIntersection (lowBaseSet N)
        (tailSquarePrimeEvent cutoff) subset).card : Nat) : Rat) /
      ((pivots.card - k + 1).choose 2 : Nat)

/-- Exact tail-threshold payment on the two base progressions.  Unlike the
pair-tail sum, this counts a point with three tail witnesses only once. -/
noncomputable def globalMixedBaseTailThresholdPayment
    (N : Nat) (pivots : Finset Nat) (cutoff k : Nat) : Rat := by
  classical
  exact (((lowBaseSet N).filter fun point =>
    pivots.card - k + 1 <= (pivots.filter fun pivot =>
      tailSquarePrimeEvent cutoff pivot point).card).card : Rat)

theorem hallBasePart_card_le_globalMixedBasePairTail
    {N cutoff k : Nat} {B pivots : Finset Nat}
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B)
    (hk : k < pivots.card) :
    ((hallBasePart N B).card : Rat) <=
      globalMixedBaseFiniteThresholdPayment N pivots cutoff k +
        globalMixedBasePairTailPayment N pivots cutoff k := by
  classical
  have hraw := card_le_finite_threshold_add_pairTail_sum
    (points := hallBasePart N B) (indices := pivots)
    (finite := finiteSquarePrimeEvent cutoff)
    (tail := tailSquarePrimeEvent cutoff) hk
    (by
      intro point hpoint pivot hpivot
      exact hallCompletion_finite_or_tail hBprop hpivots point
        (Finset.mem_inter.mp hpoint).1 pivot hpivot)
  let completionFinite := (hallBasePart N B).filter fun point =>
    k <= (pivots.filter fun pivot =>
      finiteSquarePrimeEvent cutoff pivot point).card
  let baseFinite := (lowBaseSet N).filter fun point =>
    k <= (pivots.filter fun pivot =>
      finiteSquarePrimeEvent cutoff pivot point).card
  have hfiniteSubset : completionFinite ⊆ baseFinite := by
    intro point hpoint
    have hparts := Finset.mem_filter.mp hpoint
    exact Finset.mem_filter.mpr
      ⟨(Finset.mem_inter.mp hparts.1).2, hparts.2⟩
  have hfiniteQ : (completionFinite.card : Rat) <=
      (baseFinite.card : Rat) := by
    exact_mod_cast Finset.card_le_card hfiniteSubset
  have hpairNat :
      (∑ subset ∈ pivots.powersetCard 2,
        (eventIntersection (hallBasePart N B)
          (tailSquarePrimeEvent cutoff) subset).card) <=
      ∑ subset ∈ pivots.powersetCard 2,
        (eventIntersection (lowBaseSet N)
          (tailSquarePrimeEvent cutoff) subset).card := by
    apply Finset.sum_le_sum
    intro subset _hsubset
    apply Finset.card_le_card
    intro point hpoint
    have hparts := Finset.mem_filter.mp hpoint
    exact Finset.mem_filter.mpr
      ⟨(Finset.mem_inter.mp hparts.1).2, hparts.2⟩
  have hpairQ :
      (((∑ subset ∈ pivots.powersetCard 2,
        (eventIntersection (hallBasePart N B)
          (tailSquarePrimeEvent cutoff) subset).card) : Nat) : Rat) <=
      (((∑ subset ∈ pivots.powersetCard 2,
        (eventIntersection (lowBaseSet N)
          (tailSquarePrimeEvent cutoff) subset).card) : Nat) : Rat) := by
    exact_mod_cast hpairNat
  have htwo : 2 <= pivots.card - k + 1 := by omega
  have hdenPos : (0 : Rat) < ((pivots.card - k + 1).choose 2 : Nat) := by
    exact_mod_cast Nat.choose_pos htwo
  have hpairDiv := div_le_div_of_nonneg_right hpairQ hdenPos.le
  have hraw' : ((hallBasePart N B).card : Rat) <=
      (completionFinite.card : Rat) +
        ((∑ subset ∈ pivots.powersetCard 2,
          (eventIntersection (hallBasePart N B)
            (tailSquarePrimeEvent cutoff) subset).card : Nat) : Rat) /
          (((pivots.card - k + 1).choose 2 : Nat) : Rat) := by
    simpa [completionFinite] using hraw
  unfold globalMixedBaseFiniteThresholdPayment
    globalMixedBasePairTailPayment
  change (hallBasePart N B).card <=
      (baseFinite.card : Rat) +
        ((∑ subset ∈ pivots.powersetCard 2,
          (eventIntersection (lowBaseSet N)
            (tailSquarePrimeEvent cutoff) subset).card : Nat) : Rat) /
          (((pivots.card - k + 1).choose 2 : Nat) : Rat)
  exact hraw'.trans (add_le_add hfiniteQ hpairDiv)

theorem hallBasePart_card_le_globalMixedBaseTailThreshold
    {N cutoff k : Nat} {B pivots : Finset Nat}
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B)
    (hk : k <= pivots.card) :
    ((hallBasePart N B).card : Rat) <=
      globalMixedBaseFiniteThresholdPayment N pivots cutoff k +
        globalMixedBaseTailThresholdPayment N pivots cutoff k := by
  classical
  have hraw := card_le_finite_threshold_add_tailThreshold
    (points := hallBasePart N B) (indices := pivots)
    (finite := finiteSquarePrimeEvent cutoff)
    (tail := tailSquarePrimeEvent cutoff) hk
    (by
      intro point hpoint pivot hpivot
      exact hallCompletion_finite_or_tail hBprop hpivots point
        (Finset.mem_inter.mp hpoint).1 pivot hpivot)
  let completionFinite := (hallBasePart N B).filter fun point =>
    k <= (pivots.filter fun pivot =>
      finiteSquarePrimeEvent cutoff pivot point).card
  let completionTail := (hallBasePart N B).filter fun point =>
    pivots.card - k + 1 <= (pivots.filter fun pivot =>
      tailSquarePrimeEvent cutoff pivot point).card
  let baseFinite := (lowBaseSet N).filter fun point =>
    k <= (pivots.filter fun pivot =>
      finiteSquarePrimeEvent cutoff pivot point).card
  let baseTail := (lowBaseSet N).filter fun point =>
    pivots.card - k + 1 <= (pivots.filter fun pivot =>
      tailSquarePrimeEvent cutoff pivot point).card
  have hfiniteSubset : completionFinite ⊆ baseFinite := by
    intro point hpoint
    have hparts := Finset.mem_filter.mp hpoint
    exact Finset.mem_filter.mpr
      ⟨(Finset.mem_inter.mp hparts.1).2, hparts.2⟩
  have htailSubset : completionTail ⊆ baseTail := by
    intro point hpoint
    have hparts := Finset.mem_filter.mp hpoint
    exact Finset.mem_filter.mpr
      ⟨(Finset.mem_inter.mp hparts.1).2, hparts.2⟩
  have hfiniteQ : (completionFinite.card : Rat) <=
      (baseFinite.card : Rat) := by
    exact_mod_cast Finset.card_le_card hfiniteSubset
  have htailQ : (completionTail.card : Rat) <=
      (baseTail.card : Rat) := by
    exact_mod_cast Finset.card_le_card htailSubset
  have hraw' : ((hallBasePart N B).card : Rat) <=
      (completionFinite.card : Rat) + (completionTail.card : Rat) := by
    simpa [completionFinite, completionTail] using hraw
  unfold globalMixedBaseFiniteThresholdPayment
    globalMixedBaseTailThresholdPayment
  change (hallBasePart N B).card <=
    (baseFinite.card : Rat) + (baseTail.card : Rat)
  exact hraw'.trans (add_le_add hfiniteQ htailQ)

theorem hallCompletion_card_le_globalMixedDiagonalBasePairTail
    {N cutoff k : Nat} {B pivots : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B)
    (hk : k < pivots.card) :
    ((hallCompletion N B).card : Rat) <=
      (globalMixedTailDiagonalBad N).card +
        globalMixedBaseFiniteThresholdPayment N pivots cutoff k +
          globalMixedBasePairTailPayment N pivots cutoff k := by
  have hresidualNat : (hallResidual N B).card <=
      (globalMixedTailDiagonalBad N).card :=
    Finset.card_le_card
      (hallResidual_subset_globalMixedTailDiagonalBad hBout hBprop)
  have hresidualQ : ((hallResidual N B).card : Rat) <=
      ((globalMixedTailDiagonalBad N).card : Rat) := by
    exact_mod_cast hresidualNat
  have hbase := hallBasePart_card_le_globalMixedBasePairTail
    (cutoff := cutoff) (k := k) hBprop hpivots hk
  have hpartitionQ :
      ((hallResidual N B).card : Rat) + ((hallBasePart N B).card : Rat) =
        ((hallCompletion N B).card : Rat) := by
    exact_mod_cast hallCompletion_card_partition N B
  calc
    ((hallCompletion N B).card : Rat) =
        (hallResidual N B).card + (hallBasePart N B).card := hpartitionQ.symm
    _ <= (globalMixedTailDiagonalBad N).card + (hallBasePart N B).card :=
      add_le_add hresidualQ le_rfl
    _ <= (globalMixedTailDiagonalBad N).card +
        (globalMixedBaseFiniteThresholdPayment N pivots cutoff k +
          globalMixedBasePairTailPayment N pivots cutoff k) :=
      add_le_add le_rfl hbase
    _ = (globalMixedTailDiagonalBad N).card +
        globalMixedBaseFiniteThresholdPayment N pivots cutoff k +
          globalMixedBasePairTailPayment N pivots cutoff k := by ring

/-- Defect-dependent variant of the pair-tail reduction.  It keeps the
off-base payment as the literal Hall residual instead of replacing it by the
whole pivot-independent diagonal universe.  This is the terminal needed for
odd valuation classes, where the global diagonal and the forced prime-2 base
family cannot both be paid inside the Hall target. -/
theorem hallCompletion_card_le_globalMixedResidualBasePairTail
    {N cutoff k : Nat} {B pivots : Finset Nat}
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B)
    (hk : k < pivots.card) :
    ((hallCompletion N B).card : Rat) <=
      (hallResidual N B).card +
        globalMixedBaseFiniteThresholdPayment N pivots cutoff k +
          globalMixedBasePairTailPayment N pivots cutoff k := by
  have hbase := hallBasePart_card_le_globalMixedBasePairTail
    (cutoff := cutoff) (k := k) hBprop hpivots hk
  have hpartitionQ :
      ((hallResidual N B).card : Rat) + ((hallBasePart N B).card : Rat) =
        ((hallCompletion N B).card : Rat) := by
    exact_mod_cast hallCompletion_card_partition N B
  calc
    ((hallCompletion N B).card : Rat) =
        (hallResidual N B).card + (hallBasePart N B).card := hpartitionQ.symm
    _ <= (hallResidual N B).card +
        (globalMixedBaseFiniteThresholdPayment N pivots cutoff k +
          globalMixedBasePairTailPayment N pivots cutoff k) :=
      add_le_add le_rfl hbase
    _ = (hallResidual N B).card +
        globalMixedBaseFiniteThresholdPayment N pivots cutoff k +
          globalMixedBasePairTailPayment N pivots cutoff k := by ring

theorem hallCompletion_card_le_globalMixedDiagonalBaseTailThreshold
    {N cutoff k : Nat} {B pivots : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hpivots : pivots ⊆ hallCompletion N B)
    (hk : k <= pivots.card) :
    ((hallCompletion N B).card : Rat) <=
      (globalMixedTailDiagonalBad N).card +
        globalMixedBaseFiniteThresholdPayment N pivots cutoff k +
          globalMixedBaseTailThresholdPayment N pivots cutoff k := by
  have hresidualNat : (hallResidual N B).card <=
      (globalMixedTailDiagonalBad N).card :=
    Finset.card_le_card
      (hallResidual_subset_globalMixedTailDiagonalBad hBout hBprop)
  have hresidualQ : ((hallResidual N B).card : Rat) <=
      ((globalMixedTailDiagonalBad N).card : Rat) := by
    exact_mod_cast hresidualNat
  have hbase := hallBasePart_card_le_globalMixedBaseTailThreshold
    (cutoff := cutoff) (k := k) hBprop hpivots hk
  have hpartitionQ :
      ((hallResidual N B).card : Rat) + ((hallBasePart N B).card : Rat) =
        ((hallCompletion N B).card : Rat) := by
    exact_mod_cast hallCompletion_card_partition N B
  calc
    ((hallCompletion N B).card : Rat) =
        (hallResidual N B).card + (hallBasePart N B).card := hpartitionQ.symm
    _ <= (globalMixedTailDiagonalBad N).card + (hallBasePart N B).card :=
      add_le_add hresidualQ le_rfl
    _ <= (globalMixedTailDiagonalBad N).card +
        (globalMixedBaseFiniteThresholdPayment N pivots cutoff k +
          globalMixedBaseTailThresholdPayment N pivots cutoff k) :=
      add_le_add le_rfl hbase
    _ = (globalMixedTailDiagonalBad N).card +
        globalMixedBaseFiniteThresholdPayment N pivots cutoff k +
          globalMixedBaseTailThresholdPayment N pivots cutoff k := by ring

def GlobalMixedEightPivotPairTailReduction
    (N : Nat) (B : Finset Nat) : Prop :=
  ∃ valuation : FiveMillionValuationClass,
    ∃ pivots : Finset Nat,
      pivots ⊆ fiveMillionValuationPart N B valuation ∧
      pivots.card = 8 ∧
      (∀ x ∈ pivots, ∀ y ∈ pivots, x < y → y - x < 9210) ∧
      ((hallCompletion N B).card : Rat) <=
        (globalMixedTailDiagonalBad N).card +
          globalMixedBaseFiniteThresholdPayment N pivots 95 5 +
            globalMixedBasePairTailPayment N pivots 95 5

/-- Strict Hall defect now reduces, without an interval split, to exactly two
terminal counts on an eight-pivot cluster. -/
theorem globalMixedEightPivotPairTailReduction_of_defect
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card) :
    GlobalMixedEightPivotPairTailReduction N B := by
  classical
  obtain ⟨valuation, pivots, hpivots, hpivotsCard, hspan⟩ :=
    exists_sameValuation_eightPivotCluster_of_defect
      hLower hBout hBprop hdefect
  have hpivotsCompletion : pivots ⊆ hallCompletion N B := by
    intro pivot hpivot
    have hpivotResidual := fiveMillionValuationPart_subset_residual
      N B valuation (hpivots hpivot)
    exact (Finset.mem_sdiff.mp hpivotResidual).1
  exact ⟨valuation, pivots, hpivots, hpivotsCard, hspan,
    hallCompletion_card_le_globalMixedDiagonalBasePairTail
      hBout hBprop hpivotsCompletion (by omega)⟩

/-- The exact remaining analytic statement.  It quantifies over the literal
eight-pivot cluster produced above and asks only for the two terminal counts
on the fixed universe to fit below the Hall target. -/
def Erdos848GlobalMixedPairTailTerminalBound : Prop :=
  ∀ N : Nat, 5_000_000 <= N →
    ∀ B : Finset Nat,
      Erdos848OutsideSet N B →
      NonSquarefreeProductProp B →
      (OriginalA7 N).card <
        B.card + (hallNonNeighbours N B).card →
      ∀ valuation : FiveMillionValuationClass,
      ∀ pivots : Finset Nat,
        pivots ⊆ fiveMillionValuationPart N B valuation →
        pivots.card = 8 →
        (∀ x ∈ pivots, ∀ y ∈ pivots, x < y → y - x < 9210) →
        ((globalMixedTailDiagonalBad N).card +
          globalMixedBaseFiniteThresholdPayment N pivots 95 5 +
            globalMixedBasePairTailPayment N pivots 95 5) / N <
            tailHallTarget N

/-- The three even valuation classes may use the pivot-independent off-base
diagonal payment. -/
def PairTailEvenValuationClass
    (valuation : FiveMillionValuationClass) : Prop :=
  valuation = .evenOne ∨
    valuation = .evenTwo ∨
      valuation = .evenThree

/-- The two odd valuation classes require the defect-dependent residual
payment; prime `2` makes the uniform global-diagonal budget too coarse. -/
def PairTailOddValuationClass
    (valuation : FiveMillionValuationClass) : Prop :=
  valuation = .oddOne ∨ valuation = .oddThree

theorem pairTailValuation_even_or_odd
    (valuation : FiveMillionValuationClass) :
    PairTailEvenValuationClass valuation ∨
      PairTailOddValuationClass valuation := by
  cases valuation <;>
    simp [PairTailEvenValuationClass, PairTailOddValuationClass]

/-- Exact numerical terminal for the even valuation branches. -/
def Erdos848GlobalMixedEvenPairTailTerminalBound : Prop :=
  ∀ N : Nat, 5_000_000 <= N →
    ∀ B : Finset Nat,
      Erdos848OutsideSet N B →
      NonSquarefreeProductProp B →
      (OriginalA7 N).card <
        B.card + (hallNonNeighbours N B).card →
      ∀ valuation : FiveMillionValuationClass,
      ∀ pivots : Finset Nat,
        pivots ⊆ fiveMillionValuationPart N B valuation →
        pivots.card = 8 →
        (∀ x ∈ pivots, ∀ y ∈ pivots, x < y → y - x < 9210) →
        PairTailEvenValuationClass valuation →
        ((globalMixedTailDiagonalBad N).card +
          globalMixedBaseFiniteThresholdPayment N pivots 95 5 +
            globalMixedBasePairTailPayment N pivots 95 5) / N <
            tailHallTarget N

/-- Exact numerical terminal for the odd valuation branches.  The first term
is the literal defect residual, not the full global diagonal set. -/
def Erdos848GlobalMixedOddPairTailTerminalBound : Prop :=
  ∀ N : Nat, 5_000_000 <= N →
    ∀ B : Finset Nat,
      Erdos848OutsideSet N B →
      NonSquarefreeProductProp B →
      (OriginalA7 N).card <
        B.card + (hallNonNeighbours N B).card →
      ∀ valuation : FiveMillionValuationClass,
      ∀ pivots : Finset Nat,
        pivots ⊆ fiveMillionValuationPart N B valuation →
        pivots.card = 8 →
        (∀ x ∈ pivots, ∀ y ∈ pivots, x < y → y - x < 9210) →
        PairTailOddValuationClass valuation →
        (((hallResidual N B).card : Rat) +
          globalMixedBaseFiniteThresholdPayment N pivots 95 5 +
            globalMixedBasePairTailPayment N pivots 95 5) / N <
            tailHallTarget N

/-- The honest direct tail interface: one even terminal and one odd terminal,
both at the five-million cut. -/
def Erdos848GlobalMixedBranchedPairTailTerminalBound : Prop :=
  Erdos848GlobalMixedEvenPairTailTerminalBound ∧
    Erdos848GlobalMixedOddPairTailTerminalBound

def Erdos848GlobalMixedTailClose : Prop :=
  ∀ N : Nat, 5_000_000 <= N → OriginalProblem848Statement N

/-- Once the two explicit terminal counts are proved, the literal Problem
848 statement follows for every `N >= 5,000,000`; no interval bridge or
additional Hall premise remains. -/
theorem erdos848GlobalMixedTailClose_of_pairTailTerminalBound
    (hterminal : Erdos848GlobalMixedPairTailTerminalBound) :
    Erdos848GlobalMixedTailClose := by
  intro N hLower
  apply originalProblem_of_hallStatement
  intro B hBout hBprop
  by_contra hnotHall
  have hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card := by omega
  obtain ⟨valuation, pivots, hpivots, hpivotsCard, hspan, hpayment⟩ :=
    globalMixedEightPivotPairTailReduction_of_defect
      hLower hBout hBprop hdefect
  have hNpos : 0 < N := by omega
  have hNposQ : (0 : Rat) < N := by exact_mod_cast hNpos
  have hcompletionRatio : ((hallCompletion N B).card : Rat) / N <
      tailHallTarget N := by
    exact (div_le_div_of_nonneg_right hpayment hNposQ.le).trans_lt
      (hterminal N hLower B hBout hBprop hdefect
        valuation pivots hpivots hpivotsCard hspan)
  have hHall := hall_bound_of_completion_ratio_le_tailTarget
    hNpos hBout hcompletionRatio.le
  omega

/-- Direct all-tail assembly from the viable branch-aware terminal.  No
intermediate interval premise is introduced: even valuations pay the global
diagonal, while odd valuations retain the literal defect residual. -/
theorem erdos848GlobalMixedTailClose_of_branchedPairTailTerminalBound
    (hterminal : Erdos848GlobalMixedBranchedPairTailTerminalBound) :
    Erdos848GlobalMixedTailClose := by
  intro N hLower
  apply originalProblem_of_hallStatement
  intro B hBout hBprop
  by_contra hnotHall
  have hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card := by omega
  obtain ⟨valuation, pivots, hpivots, hpivotsCard, hspan⟩ :=
    exists_sameValuation_eightPivotCluster_of_defect
      hLower hBout hBprop hdefect
  have hpivotsCompletion : pivots ⊆ hallCompletion N B := by
    intro pivot hpivot
    have hpivotResidual := fiveMillionValuationPart_subset_residual
      N B valuation (hpivots hpivot)
    exact (Finset.mem_sdiff.mp hpivotResidual).1
  have hNpos : 0 < N := by omega
  have hNposQ : (0 : Rat) < N := by exact_mod_cast hNpos
  have hcompletionRatio : ((hallCompletion N B).card : Rat) / N <
      tailHallTarget N := by
    rcases pairTailValuation_even_or_odd valuation with heven | hodd
    · have hpayment :=
        hallCompletion_card_le_globalMixedDiagonalBasePairTail
          (cutoff := 95) (k := 5) hBout hBprop hpivotsCompletion (by omega)
      exact (div_le_div_of_nonneg_right hpayment hNposQ.le).trans_lt
        (hterminal.1 N hLower B hBout hBprop hdefect
          valuation pivots hpivots hpivotsCard hspan heven)
    · have hpayment :=
        hallCompletion_card_le_globalMixedResidualBasePairTail
          (cutoff := 95) (k := 5) hBprop hpivotsCompletion (by omega)
      exact (div_le_div_of_nonneg_right hpayment hNposQ.le).trans_lt
        (hterminal.2 N hLower B hBout hBprop hdefect
          valuation pivots hpivots hpivotsCard hspan hodd)
  have hHall := hall_bound_of_completion_ratio_le_tailTarget
    hNpos hBout hcompletionRatio.le
  omega

#print axioms hallCompletion_subset_globalMixedTerminalUniverse
#print axioms hallResidual_subset_globalMixedTailDiagonalBad
#print axioms hallCompletion_card_le_globalMixedUniversePairTail
#print axioms hallBasePart_card_le_globalMixedBasePairTail
#print axioms hallCompletion_card_le_globalMixedDiagonalBasePairTail
#print axioms hallCompletion_card_le_globalMixedResidualBasePairTail
#print axioms globalMixedEightPivotPairTailReduction_of_defect
#print axioms erdos848GlobalMixedTailClose_of_pairTailTerminalBound
#print axioms erdos848GlobalMixedTailClose_of_branchedPairTailTerminalBound

end Erdos848
