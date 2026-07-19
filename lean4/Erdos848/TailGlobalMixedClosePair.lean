import Erdos848.TailGlobalMixedResidual

namespace Erdos848

/-!
# A uniformly close pair in one actual valuation class

The strengthened residual lower bound is kept at its natural scale.  A
five-way pigeonhole then produces one valuation part of density greater than
`2 / 2625`, up to the single endpoint loss `1 / 5`.  At the five-million
endpoint this already beats the `1314`-bucket count, and the margin increases
with `N`.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem exists_proportionally_large_fiveMillionValuationPart_of_defect
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card) :
    ∃ cls : FiveMillionValuationClass,
      (2 : Rat) * N / 2625 - 1 / 5 <
        ((fiveMillionValuationPart N B cls).card : Rat) := by
  let threshold : Rat := (2 : Rat) * N / 2625 - 1 / 5
  by_contra hnone
  push_neg at hnone
  have hsum :
      (∑ cls : FiveMillionValuationClass,
          ((fiveMillionValuationPart N B cls).card : Rat)) <=
        ∑ _cls : FiveMillionValuationClass, threshold := by
    exact Finset.sum_le_sum fun cls _ => hnone cls
  have hsumCast :
      (∑ cls : FiveMillionValuationClass,
          ((fiveMillionValuationPart N B cls).card : Rat)) =
        ((hallResidual N B).card : Rat) := by
    exact_mod_cast fiveMillionValuationParts_card_sum N B
  have hclassCard : Fintype.card FiveMillionValuationClass = 5 := by
    decide
  rw [hsumCast] at hsum
  simp only [Finset.sum_const, Finset.card_univ, nsmul_eq_mul,
    hclassCard] at hsum
  have hresidual := globalMixedHallResidual_cast_lower_of_defect
    hLower hBout hBprop hdefect
  dsimp [threshold] at hsum
  linarith

private theorem fiveMillionValuationPart_subset_Icc
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B) :
    fiveMillionValuationPart N B cls ⊆ Finset.Icc 1 N := by
  intro pivot hpivot
  have hpivotResidual := fiveMillionValuationPart_subset_residual
    N B cls hpivot
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  exact hallCompletion_subset_Icc hBout hpivotCompletion

/-- Under a strict Hall defect there are two actual residual pivots in one
literal valuation class whose positive difference is below `1314`. -/
theorem exists_sameValuation_closePair_of_defect
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card) :
    ∃ cls : FiveMillionValuationClass,
      ∃ x ∈ fiveMillionValuationPart N B cls,
        ∃ y ∈ fiveMillionValuationPart N B cls,
          x < y ∧ y - x < 1314 := by
  obtain ⟨cls, hclass⟩ :=
    exists_proportionally_large_fiveMillionValuationPart_of_defect
      hLower hBout hBprop hdefect
  have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
  have hbucketMain : (N : Rat) / 1314 + 1 <=
      (2 : Rat) * N / 2625 - 1 / 5 := by
    linarith
  have hsubCast : (((N - 1 : Nat) : Rat)) <= (N : Rat) := by
    exact_mod_cast Nat.sub_le N 1
  have hfloor : ((((N - 1) / 1314 : Nat) : Rat)) <=
      ((N - 1 : Nat) : Rat) / 1314 := Nat.cast_div_le
  have hbucketCast : ((((N - 1) / 1314 + 1 : Nat) : Rat)) <=
      (2 : Rat) * N / 2625 - 1 / 5 := by
    push_cast
    have hstep : (((N - 1 : Nat) : Rat)) / 1314 + 1 <=
        (N : Rat) / 1314 + 1 := by gcongr
    linarith
  have hbucket : (N - 1) / 1314 + 1 <
      (fiveMillionValuationPart N B cls).card := by
    exact_mod_cast hbucketCast.trans_lt hclass
  obtain ⟨x, hx, y, hy, hxy, hgap⟩ := exists_close_pair_of_card
    (S := fiveMillionValuationPart N B cls) (N := N) (gap := 1314)
    (by norm_num) (fiveMillionValuationPart_subset_Icc hBout) hbucket
  exact ⟨cls, x, hx, y, hy, hxy, hgap⟩

lemma common_squarePrime_dvd_pivotDifference
    {p x y point : Nat}
    (hp : Nat.Prime p) (hxy : x <= y)
    (hxEvent : p ^ 2 ∣ x * point + 1)
    (hyEvent : p ^ 2 ∣ y * point + 1) :
    p ^ 2 ∣ y - x := by
  have hpPoint : ¬ p ∣ point := by
    intro hpPoint
    have hpSum : p ∣ x * point + 1 :=
      Nat.dvd_trans (dvd_pow_self p (by norm_num : 2 ≠ 0)) hxEvent
    have hpProduct : p ∣ x * point := dvd_mul_of_dvd_right hpPoint x
    have hpOne : p ∣ 1 := (Nat.dvd_add_right hpProduct).mp hpSum
    exact hp.not_dvd_one hpOne
  have hproduct : p ^ 2 ∣ (y - x) * point := by
    have hsub := Nat.dvd_sub hyEvent hxEvent
    simpa [Nat.sub_mul] using hsub
  have hcoprime : Nat.Coprime (p ^ 2) point :=
    (hp.coprime_iff_not_dvd.mpr hpPoint).pow_left 2
  exact hcoprime.dvd_of_dvd_mul_right hproduct

/-- Two pivots at distance below `1314` cannot share a square-prime event
above `36`; a common event forces the entire prime square into their literal
difference. -/
theorem common_squarePrime_le_thirtySix_of_closePair
    {p x y point : Nat}
    (hp : Nat.Prime p) (hxy : x < y) (hgap : y - x < 1314)
    (hxEvent : p ^ 2 ∣ x * point + 1)
    (hyEvent : p ^ 2 ∣ y * point + 1) :
    p <= 36 := by
  have hdiv := common_squarePrime_dvd_pivotDifference
    hp hxy.le hxEvent hyEvent
  have hdiffPos : 0 < y - x := Nat.sub_pos_of_lt hxy
  have hsquarePos : 0 < p ^ 2 := pow_pos hp.pos 2
  have hsquareLe : p ^ 2 <= y - x := Nat.le_of_dvd hdiffPos hdiv
  nlinarith

theorem common_squarePrime_le_ninetyFive_of_clusterPair
    {p x y point : Nat}
    (hp : Nat.Prime p) (hxy : x < y) (hspan : y - x < 9210)
    (hxEvent : p ^ 2 ∣ x * point + 1)
    (hyEvent : p ^ 2 ∣ y * point + 1) :
    p <= 95 := by
  have hdiv := common_squarePrime_dvd_pivotDifference
    hp hxy.le hxEvent hyEvent
  have hdiffPos : 0 < y - x := Nat.sub_pos_of_lt hxy
  have hsquareLe : p ^ 2 <= y - x := Nat.le_of_dvd hdiffPos hdiv
  nlinarith

theorem not_common_squarePrime_event_above_thirtySix
    {p x y point : Nat}
    (hp : Nat.Prime p) (hpLarge : 36 < p)
    (hxy : x < y) (hgap : y - x < 1314) :
    ¬ (p ^ 2 ∣ x * point + 1 ∧ p ^ 2 ∣ y * point + 1) := by
  rintro ⟨hxEvent, hyEvent⟩
  have := common_squarePrime_le_thirtySix_of_closePair
    hp hxy hgap hxEvent hyEvent
  omega

private theorem exists_boundedSpanSubset_of_card
    {S : Finset Nat} {N gap size : Nat}
    (hgap : 0 < gap) (hsize : 0 < size)
    (hS : S ⊆ Finset.Icc 1 N)
    (hcard : (size - 1) * ((N - 1) / gap + 1) < S.card) :
    ∃ pivots : Finset Nat,
      pivots ⊆ S ∧ pivots.card = size ∧
        ∀ x ∈ pivots, ∀ y ∈ pivots, x < y → y - x < gap := by
  classical
  let block : Nat → Nat := fun x => (x - 1) / gap
  let blocks := Finset.range ((N - 1) / gap + 1)
  have hmap : Set.MapsTo block (S : Set Nat) blocks := by
    intro x hx
    have hbounds := Finset.mem_Icc.mp (hS hx)
    have hsub : x - 1 <= N - 1 := Nat.sub_le_sub_right hbounds.2 1
    have hdiv : (x - 1) / gap <= (N - 1) / gap :=
      Nat.div_le_div_right hsub
    exact Finset.mem_range.mpr (Nat.lt_succ_of_le hdiv)
  have hlargeFibre : ∃ q ∈ blocks,
      size <= (S.filter fun x => block x = q).card := by
    by_contra hnone
    push Not at hnone
    have hfibre : ∀ q ∈ blocks,
        (S.filter fun x => block x = q).card <= size - 1 := by
      intro q hq
      have := hnone q hq
      omega
    have hsum :
        (∑ q ∈ blocks, (S.filter fun x => block x = q).card) <=
          ∑ _q ∈ blocks, (size - 1) := by
      exact Finset.sum_le_sum hfibre
    have hpartition := Finset.card_eq_sum_card_fiberwise
      (s := S) (t := blocks) (f := block) hmap
    have hupper : S.card <= blocks.card * (size - 1) := by
      rw [hpartition]
      simpa [Nat.mul_comm] using hsum
    simp only [blocks, Finset.card_range] at hupper
    have hupper' : S.card <=
        (size - 1) * ((N - 1) / gap + 1) := by
      simpa [Nat.mul_comm] using hupper
    omega
  obtain ⟨q, hq, hqCard⟩ := hlargeFibre
  obtain ⟨pivots, hpivotsSubsetFibre, hpivotsCard⟩ :=
    Finset.exists_subset_card_eq hqCard
  have hpivotsSubset : pivots ⊆ S := by
    intro x hx
    exact (Finset.mem_filter.mp (hpivotsSubsetFibre hx)).1
  refine ⟨pivots, hpivotsSubset, hpivotsCard, ?_⟩
  intro x hx y hy hxy
  have hxFibre := Finset.mem_filter.mp (hpivotsSubsetFibre hx)
  have hyFibre := Finset.mem_filter.mp (hpivotsSubsetFibre hy)
  have hblocks : (x - 1) / gap = (y - 1) / gap := by
    exact hxFibre.2.trans hyFibre.2.symm
  have hmulEq := congrArg (fun bucket : Nat => gap * bucket) hblocks
  change gap * ((x - 1) / gap) = gap * ((y - 1) / gap) at hmulEq
  have hxdecomp := Nat.mod_add_div (x - 1) gap
  have hydecomp := Nat.mod_add_div (y - 1) gap
  have hxrem := Nat.mod_lt (x - 1) hgap
  have hyrem := Nat.mod_lt (y - 1) hgap
  have hxpos := (Finset.mem_Icc.mp (hS (hpivotsSubset hx))).1
  have hypos := (Finset.mem_Icc.mp (hS (hpivotsSubset hy))).1
  omega

/-- A strict defect supplies eight actual pivots from one valuation class in
a window of span below `9210`, uniformly for every `N >= 5,000,000`. -/
theorem exists_sameValuation_eightPivotCluster_of_defect
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card) :
    ∃ cls : FiveMillionValuationClass,
      ∃ pivots : Finset Nat,
        pivots ⊆ fiveMillionValuationPart N B cls ∧
          pivots.card = 8 ∧
            ∀ x ∈ pivots, ∀ y ∈ pivots, x < y → y - x < 9210 := by
  obtain ⟨cls, hclass⟩ :=
    exists_proportionally_large_fiveMillionValuationPart_of_defect
      hLower hBout hBprop hdefect
  have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
  have hbucketMain : (7 : Rat) * ((N : Rat) / 9210 + 1) <=
      (2 : Rat) * N / 2625 - 1 / 5 := by
    linarith
  have hsubCast : (((N - 1 : Nat) : Rat)) <= (N : Rat) := by
    exact_mod_cast Nat.sub_le N 1
  have hfloor : ((((N - 1) / 9210 : Nat) : Rat)) <=
      ((N - 1 : Nat) : Rat) / 9210 := Nat.cast_div_le
  have hbucketCast :
      (((7 * ((N - 1) / 9210 + 1) : Nat) : Rat)) <=
        (2 : Rat) * N / 2625 - 1 / 5 := by
    push_cast
    have hstep : (((N - 1 : Nat) : Rat)) / 9210 + 1 <=
        (N : Rat) / 9210 + 1 := by gcongr
    nlinarith
  have hbucket : 7 * ((N - 1) / 9210 + 1) <
      (fiveMillionValuationPart N B cls).card := by
    exact_mod_cast hbucketCast.trans_lt hclass
  obtain ⟨pivots, hpivots, hpivotsCard, hspan⟩ :=
    exists_boundedSpanSubset_of_card
      (S := fiveMillionValuationPart N B cls)
      (N := N) (gap := 9210) (size := 8)
      (by norm_num) (by norm_num)
      (fiveMillionValuationPart_subset_Icc hBout) (by simpa using hbucket)
  exact ⟨cls, pivots, hpivots, hpivotsCard, hspan⟩

/-- The same proportional residual bound already supplies three pivots in a
window of span below `2627`.  This smaller cluster is the optimized
`n = 3, k = 2` pair-tail route; it uses the unchanged Hall residual. -/
theorem exists_sameValuation_threePivotCluster_of_defect
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card) :
    ∃ cls : FiveMillionValuationClass,
      ∃ pivots : Finset Nat,
        pivots ⊆ fiveMillionValuationPart N B cls ∧
          pivots.card = 3 ∧
            ∀ x ∈ pivots, ∀ y ∈ pivots, x < y → y - x < 2627 := by
  obtain ⟨cls, hclass⟩ :=
    exists_proportionally_large_fiveMillionValuationPart_of_defect
      hLower hBout hBprop hdefect
  have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
  have hbucketMain : (2 : Rat) * ((N : Rat) / 2627 + 1) <=
      (2 : Rat) * N / 2625 - 1 / 5 := by
    linarith
  have hbucketCast :
      (((2 * ((N - 1) / 2627 + 1) : Nat) : Rat)) <=
        (2 : Rat) * N / 2625 - 1 / 5 := by
    push_cast
    have hfloor : ((((N - 1) / 2627 : Nat) : Rat)) <=
        ((N - 1 : Nat) : Rat) / 2627 := Nat.cast_div_le
    have hsub : ((N - 1 : Nat) : Rat) <= (N : Rat) := by
      exact_mod_cast Nat.sub_le N 1
    have hstep : (((N - 1) / 2627 : Nat) : Rat) + 1 <=
        (N : Rat) / 2627 + 1 := by
      linarith
    nlinarith
  have hbucket : 2 * ((N - 1) / 2627 + 1) <
      (fiveMillionValuationPart N B cls).card := by
    exact_mod_cast hbucketCast.trans_lt hclass
  obtain ⟨pivots, hpivots, hpivotsCard, hspan⟩ :=
    exists_boundedSpanSubset_of_card
      (S := fiveMillionValuationPart N B cls)
      (N := N) (gap := 2627) (size := 3)
      (by norm_num) (by norm_num)
      (fiveMillionValuationPart_subset_Icc hBout) (by simpa using hbucket)
  exact ⟨cls, pivots, hpivots, hpivotsCard, hspan⟩

/-- A square-prime event shared by two members of the three-pivot cluster has
prime at most `51`. -/
theorem common_squarePrime_le_fiftyOne_of_threeClusterPair
    {p x y point : Nat}
    (hp : Nat.Prime p) (hxy : x < y) (hspan : y - x < 2627)
    (hxEvent : p ^ 2 ∣ x * point + 1)
    (hyEvent : p ^ 2 ∣ y * point + 1) :
    p <= 51 := by
  have hdiv := common_squarePrime_dvd_pivotDifference
    hp hxy.le hxEvent hyEvent
  have hdiffPos : 0 < y - x := Nat.sub_pos_of_lt hxy
  have hsquareLe : p ^ 2 <= y - x := Nat.le_of_dvd hdiffPos hdiv
  nlinarith

/-- Above `51`, two members of the three-pivot cluster require distinct
square-prime witnesses. -/
theorem tailSquarePrime_witnesses_distinct_of_threeClusterPair
    {x y point : Nat}
    (hxy : x < y) (hspan : y - x < 2627)
    (hxTail : tailSquarePrimeEvent 51 x point)
    (hyTail : tailSquarePrimeEvent 51 y point) :
    ∃ p q : Nat,
      Nat.Prime p ∧ Nat.Prime q ∧ 51 < p ∧ 51 < q ∧ p ≠ q ∧
        p ^ 2 ∣ x * point + 1 ∧ q ^ 2 ∣ y * point + 1 := by
  obtain ⟨p, hpPrime, hpLarge, hpEvent⟩ := hxTail
  obtain ⟨q, hqPrime, hqLarge, hqEvent⟩ := hyTail
  have hpq : p ≠ q := by
    intro hpq
    subst q
    have hpSmall := common_squarePrime_le_fiftyOne_of_threeClusterPair
      hpPrime hxy hspan hpEvent hqEvent
    omega
  exact ⟨p, q, hpPrime, hqPrime, hpLarge, hqLarge, hpq,
    hpEvent, hqEvent⟩

/-- Above cutoff `95`, two members of the `9210` cluster can only contribute
a pair-tail point through two distinct witness primes. -/
theorem tailSquarePrime_witnesses_distinct_of_clusterPair
    {x y point : Nat}
    (hxy : x < y) (hspan : y - x < 9210)
    (hxTail : tailSquarePrimeEvent 95 x point)
    (hyTail : tailSquarePrimeEvent 95 y point) :
    ∃ p q : Nat,
      Nat.Prime p ∧ Nat.Prime q ∧ 95 < p ∧ 95 < q ∧ p ≠ q ∧
        p ^ 2 ∣ x * point + 1 ∧ q ^ 2 ∣ y * point + 1 := by
  obtain ⟨p, hpPrime, hpLarge, hpEvent⟩ := hxTail
  obtain ⟨q, hqPrime, hqLarge, hqEvent⟩ := hyTail
  have hpq : p ≠ q := by
    intro hpq
    subst q
    have hpSmall := common_squarePrime_le_ninetyFive_of_clusterPair
      hpPrime hxy hspan hpEvent hqEvent
    omega
  exact ⟨p, q, hpPrime, hqPrime, hpLarge, hqLarge, hpq,
    hpEvent, hqEvent⟩

#print axioms exists_proportionally_large_fiveMillionValuationPart_of_defect
#print axioms exists_sameValuation_closePair_of_defect
#print axioms common_squarePrime_dvd_pivotDifference
#print axioms not_common_squarePrime_event_above_thirtySix
#print axioms exists_sameValuation_eightPivotCluster_of_defect
#print axioms tailSquarePrime_witnesses_distinct_of_clusterPair
#print axioms exists_sameValuation_threePivotCluster_of_defect
#print axioms common_squarePrime_le_fiftyOne_of_threeClusterPair
#print axioms tailSquarePrime_witnesses_distinct_of_threeClusterPair

end Erdos848
