import Erdos848.TailGlobalMixedThreePivotFiniteBridge
import Erdos848.TailPrimeProgressionCounting

namespace Erdos848

/-!
# Common-prime / distinct-prime split for the three-pivot tail threshold

The tail payment is the literal set of base points with at least two active
tail forms.  Such a point either has one prime shared by two pivots (necessarily
at most `51` in the cluster) or has two distinct witness primes above `7`.
-/

noncomputable def globalMixedThreePivotTailThresholdPoints
    (N : ℕ) (pivots : Finset ℕ) : Finset ℕ := by
  classical
  exact (lowBaseSet N).filter fun point =>
    2 ≤ (pivots.filter fun pivot =>
      tailSquarePrimeEvent 7 pivot point).card

noncomputable def globalMixedThreePivotCommonPrimePoints
    (N : ℕ) (pivots : Finset ℕ) (p : ℕ) : Finset ℕ := by
  classical
  exact (lowBaseSet N).filter fun point =>
    2 ≤ (pivots.filter fun pivot =>
      p ^ 2 ∣ pivot * point + 1).card

noncomputable def globalMixedThreePivotCommonTailPoints
    (N : ℕ) (pivots : Finset ℕ) : Finset ℕ := by
  classical
  exact (lowBaseSet N).filter fun point =>
    ∃ p : ℕ, Nat.Prime p ∧ 7 < p ∧ p ≤ 51 ∧
      2 ≤ (pivots.filter fun pivot =>
        p ^ 2 ∣ pivot * point + 1).card

noncomputable def globalMixedThreePivotDistinctTailPoints
    (N : ℕ) (pivots : Finset ℕ) : Finset ℕ := by
  classical
  exact (lowBaseSet N).filter fun point =>
    ∃ x ∈ pivots, ∃ y ∈ pivots, x ≠ y ∧
      ∃ p q : ℕ,
        Nat.Prime p ∧ Nat.Prime q ∧ 7 < p ∧ 7 < q ∧ p ≠ q ∧
          p ^ 2 ∣ x * point + 1 ∧ q ^ 2 ∣ y * point + 1

theorem globalMixedBaseTailThresholdPayment_eq_threePivotPoints
    {N : ℕ} {pivots : Finset ℕ} (hcard : pivots.card = 3) :
    globalMixedBaseTailThresholdPayment N pivots 7 2 =
      (globalMixedThreePivotTailThresholdPoints N pivots).card := by
  classical
  unfold globalMixedBaseTailThresholdPayment
    globalMixedThreePivotTailThresholdPoints
  rw [hcard]

/-- Every literal two-of-three tail point is classified without changing the
cutoff or discarding either witness. -/
theorem globalMixedThreePivotTailThreshold_subset_common_union_distinct
    {N : ℕ} {pivots : Finset ℕ}
    (hspan : ∀ x ∈ pivots, ∀ y ∈ pivots,
      x < y → y - x < 2627) :
    globalMixedThreePivotTailThresholdPoints N pivots ⊆
      globalMixedThreePivotCommonTailPoints N pivots ∪
        globalMixedThreePivotDistinctTailPoints N pivots := by
  classical
  intro point hpoint
  have hparts := Finset.mem_filter.mp hpoint
  let active := pivots.filter fun pivot =>
    tailSquarePrimeEvent 7 pivot point
  have hactive : 1 < active.card := by
    dsimp [active]
    omega
  obtain ⟨x, hx, y, hy, hxy⟩ := Finset.one_lt_card.mp hactive
  have hxParts := Finset.mem_filter.mp hx
  have hyParts := Finset.mem_filter.mp hy
  obtain ⟨p, hpPrime, hpLarge, hpEvent⟩ := hxParts.2
  obtain ⟨q, hqPrime, hqLarge, hqEvent⟩ := hyParts.2
  by_cases hpq : p = q
  · subst q
    apply Finset.mem_union_left
    apply Finset.mem_filter.mpr
    refine ⟨hparts.1, p, hpPrime, hpLarge, ?_, ?_⟩
    · rcases lt_or_gt_of_ne hxy with hxyLt | hyxLt
      · exact common_squarePrime_le_fiftyOne_of_threeClusterPair
          hpPrime hxyLt (hspan x hxParts.1 y hyParts.1 hxyLt)
          hpEvent hqEvent
      · exact common_squarePrime_le_fiftyOne_of_threeClusterPair
          hpPrime hyxLt (hspan y hyParts.1 x hxParts.1 hyxLt)
          hqEvent hpEvent
    · apply Finset.one_lt_card.mpr
      exact ⟨x, Finset.mem_filter.mpr ⟨hxParts.1, hpEvent⟩,
        y, Finset.mem_filter.mpr ⟨hyParts.1, hqEvent⟩, hxy⟩
  · apply Finset.mem_union_right
    apply Finset.mem_filter.mpr
    exact ⟨hparts.1, x, hxParts.1, y, hyParts.1, hxy,
      p, q, hpPrime, hqPrime, hpLarge, hqLarge, hpq,
      hpEvent, hqEvent⟩

private theorem two_large_pivot_subsets_intersect
    {pivots left right : Finset ℕ}
    (hcard : pivots.card = 3)
    (hleft : left ⊆ pivots) (hright : right ⊆ pivots)
    (hleftCard : 2 ≤ left.card) (hrightCard : 2 ≤ right.card) :
    ∃ pivot, pivot ∈ left ∧ pivot ∈ right := by
  by_contra hnone
  push Not at hnone
  have hdisjoint : Disjoint left right :=
    Finset.disjoint_left.mpr fun pivot hpivotLeft hpivotRight =>
      hnone pivot hpivotLeft hpivotRight
  have hunionSubset : left ∪ right ⊆ pivots :=
    Finset.union_subset hleft hright
  have hunionCard := Finset.card_le_card hunionSubset
  rw [Finset.card_union_of_disjoint hdisjoint, hcard] at hunionCard
  omega

private theorem commonPrimePoint_modEq
    {p x y pointPivot : ℕ}
    (hxEvent : p ^ 2 ∣ pointPivot * x + 1)
    (hyEvent : p ^ 2 ∣ pointPivot * y + 1) :
    x ≡ y [MOD p ^ 2] := by
  have hxZ := zmod_mul_add_one_eq_zero_of_dvd hxEvent
  have hyZ := zmod_mul_add_one_eq_zero_of_dvd hyEvent
  exact (ZMod.natCast_eq_natCast_iff x y (p ^ 2)).mp
    (mul_add_one_right_unique hxZ hyZ)

private theorem commonPrimePoints_oneBase_card_le
    {N p residue : ℕ} {pivots : Finset ℕ}
    (hcard : pivots.card = 3)
    (hp : Nat.Prime p) (hpFive : p ≠ 5) :
    ((globalMixedThreePivotCommonPrimePoints N pivots p).filter
      fun point => point % 25 = residue).card ≤
        N ⌈/⌉ (25 * p ^ 2) := by
  let S := (globalMixedThreePivotCommonPrimePoints N pivots p).filter
    fun point => point % 25 = residue
  have hcoprime : Nat.Coprime 25 (p ^ 2) :=
    tail_coprime_25_prime_square hp hpFive
  have hbounds : ∀ point ∈ S, point ∈ Finset.Icc 1 N := by
    intro point hpoint
    have hcommon := (Finset.mem_filter.mp hpoint).1
    have hbase := (Finset.mem_filter.mp hcommon).1
    exact lowBaseSet_subset_Icc N hbase
  have hmod : ∀ x ∈ S, ∀ y ∈ S,
      x ≡ y [MOD 25 * p ^ 2] := by
    intro x hx y hy
    have hxOuter := Finset.mem_filter.mp hx
    have hyOuter := Finset.mem_filter.mp hy
    have hxCommon := Finset.mem_filter.mp hxOuter.1
    have hyCommon := Finset.mem_filter.mp hyOuter.1
    let left := pivots.filter fun pivot =>
      p ^ 2 ∣ pivot * x + 1
    let right := pivots.filter fun pivot =>
      p ^ 2 ∣ pivot * y + 1
    obtain ⟨pivot, hpivotLeft, hpivotRight⟩ :=
      two_large_pivot_subsets_intersect
        (pivots := pivots) (left := left) (right := right) hcard
        (by intro z hz; exact (Finset.mem_filter.mp hz).1)
        (by intro z hz; exact (Finset.mem_filter.mp hz).1)
        (by simpa [left] using hxCommon.2)
        (by simpa [right] using hyCommon.2)
    have hpivotX := (Finset.mem_filter.mp hpivotLeft).2
    have hpivotY := (Finset.mem_filter.mp hpivotRight).2
    have hpMod : x ≡ y [MOD p ^ 2] :=
      commonPrimePoint_modEq hpivotX hpivotY
    have h25Mod : x ≡ y [MOD 25] := by
      change x % 25 = y % 25
      rw [hxOuter.2, hyOuter.2]
    exact (Nat.modEq_and_modEq_iff_modEq_mul hcoprime).mp
      ⟨h25Mod, hpMod⟩
  exact tail_card_le_ceilDiv_of_pairwise_modEq S N (25 * p ^ 2)
    (Nat.mul_pos (by norm_num) (pow_pos hp.pos _)) hbounds hmod

/-- A fixed common prime contributes one residue on each of the two sharp
base progressions, even though the active pivot pair may vary with the point. -/
theorem globalMixedThreePivotCommonPrimePoints_card_le
    {N p : ℕ} {pivots : Finset ℕ}
    (hcard : pivots.card = 3)
    (hp : Nat.Prime p) (hpFive : p ≠ 5) :
    (globalMixedThreePivotCommonPrimePoints N pivots p).card ≤
      2 * (N ⌈/⌉ (25 * p ^ 2)) := by
  let common := globalMixedThreePivotCommonPrimePoints N pivots p
  let seven := common.filter fun point => point % 25 = 7
  let eighteen := common.filter fun point => point % 25 = 18
  have hsubset : common ⊆ seven ∪ eighteen := by
    intro point hpoint
    have hbase := (Finset.mem_filter.mp hpoint).1
    rcases Finset.mem_union.mp hbase with hseven | heighteen
    · exact Finset.mem_union_left _
        (Finset.mem_filter.mpr
          ⟨hpoint, (Finset.mem_filter.mp hseven).2⟩)
    · exact Finset.mem_union_right _
        (Finset.mem_filter.mpr
          ⟨hpoint, (Finset.mem_filter.mp heighteen).2⟩)
  have hseven : seven.card ≤ N ⌈/⌉ (25 * p ^ 2) := by
    exact commonPrimePoints_oneBase_card_le hcard hp hpFive
  have heightteen : eighteen.card ≤ N ⌈/⌉ (25 * p ^ 2) := by
    exact commonPrimePoints_oneBase_card_le hcard hp hpFive
  exact (Finset.card_le_card hsubset).trans
    ((Finset.card_union_le seven eighteen).trans (by omega))

theorem globalMixedThreePivotCommonPrimePoints_ratio_le
    {N p : ℕ} {pivots : Finset ℕ}
    (hN : 0 < N) (hcard : pivots.card = 3)
    (hp : Nat.Prime p) (hpLarge : 7 < p) :
    ((globalMixedThreePivotCommonPrimePoints N pivots p).card : ℚ) / N ≤
      2 / (25 * p ^ 2 : ℕ) + 2 / N := by
  have hpFive : p ≠ 5 := by omega
  have hcardNat := globalMixedThreePivotCommonPrimePoints_card_le
    (N := N) (p := p) (pivots := pivots) hcard hp hpFive
  have hcardQ :
      ((globalMixedThreePivotCommonPrimePoints N pivots p).card : ℚ) ≤
        2 * ((N ⌈/⌉ (25 * p ^ 2) : ℕ) : ℚ) := by
    exact_mod_cast hcardNat
  have hmodulus : 0 < 25 * p ^ 2 :=
    Nat.mul_pos (by norm_num) (pow_pos hp.pos _)
  have hceil := ceilDiv_cast_le_div_add_one
    N (25 * p ^ 2) hmodulus
  have hNq : (0 : ℚ) < N := by exact_mod_cast hN
  calc
    ((globalMixedThreePivotCommonPrimePoints N pivots p).card : ℚ) / N ≤
        (2 * ((N ⌈/⌉ (25 * p ^ 2) : ℕ) : ℚ)) / N :=
      div_le_div_of_nonneg_right hcardQ hNq.le
    _ ≤ (2 * ((N : ℚ) / (((25 * p ^ 2 : ℕ) : ℚ)) + 1)) / N := by
      gcongr
    _ = 2 / (25 * p ^ 2 : ℕ) + 2 / N := by
      norm_num only [Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat]
      field_simp

#print axioms globalMixedBaseTailThresholdPayment_eq_threePivotPoints
#print axioms globalMixedThreePivotTailThreshold_subset_common_union_distinct
#print axioms globalMixedThreePivotCommonPrimePoints_card_le
#print axioms globalMixedThreePivotCommonPrimePoints_ratio_le

end Erdos848
