import Erdos848.TailGlobalMixedThreePivotTailSplit
import Erdos848.TailFiveMillionActualSupportCore

namespace Erdos848

/-!
# Fixed-edge counting for the distinct-prime three-pivot tail

For one pivot edge and one ordered pair of distinct witness primes, the two
sharp base progressions contain at most two residue classes modulo
`25 * (p^2 * q^2)`.  This is the literal CRT count whose main terms sum to the
`3 * S_7^2` entry in the three-pivot budget.  Keeping the ceiling here makes
the still-required aggregate endpoint payment explicit.
-/

def globalMixedDistinctPrimePairPoints
    (N x y p q : Nat) : Finset Nat :=
  (lowBaseSet N).filter fun point =>
    p ^ 2 ∣ x * point + 1 ∧ q ^ 2 ∣ y * point + 1

def globalMixedDistinctPrimePairPointsAtResidue
    (N x y p q residue : Nat) : Finset Nat :=
  (globalMixedDistinctPrimePairPoints N x y p q).filter fun point =>
    point % 25 = residue

private lemma distinctPrimePairPoint_modEq
    {x y p q point₁ point₂ : Nat}
    (hp : Nat.Prime p) (hq : Nat.Prime q) (hpq : p ≠ q)
    (hp₁ : p ^ 2 ∣ x * point₁ + 1)
    (hp₂ : p ^ 2 ∣ x * point₂ + 1)
    (hq₁ : q ^ 2 ∣ y * point₁ + 1)
    (hq₂ : q ^ 2 ∣ y * point₂ + 1) :
    point₁ ≡ point₂ [MOD p ^ 2 * q ^ 2] := by
  have hp₁Z := zmod_mul_add_one_eq_zero_of_dvd hp₁
  have hp₂Z := zmod_mul_add_one_eq_zero_of_dvd hp₂
  have hq₁Z := zmod_mul_add_one_eq_zero_of_dvd hq₁
  have hq₂Z := zmod_mul_add_one_eq_zero_of_dvd hq₂
  have hpMod : point₁ ≡ point₂ [MOD p ^ 2] :=
    (ZMod.natCast_eq_natCast_iff point₁ point₂ (p ^ 2)).mp
      (mul_add_one_right_unique hp₁Z hp₂Z)
  have hqMod : point₁ ≡ point₂ [MOD q ^ 2] :=
    (ZMod.natCast_eq_natCast_iff point₁ point₂ (q ^ 2)).mp
      (mul_add_one_right_unique hq₁Z hq₂Z)
  have hpqCoprime : Nat.Coprime p q :=
    (Nat.coprime_primes hp hq).mpr hpq
  have hsquaresCoprime : Nat.Coprime (p ^ 2) (q ^ 2) :=
    Nat.Coprime.pow_left 2 (Nat.Coprime.pow_right 2 hpqCoprime)
  exact (Nat.modEq_and_modEq_iff_modEq_mul hsquaresCoprime).mp
    ⟨hpMod, hqMod⟩

private theorem globalMixedDistinctPrimePairPointsAtResidue_card_le
    {N x y p q residue : Nat}
    (hp : Nat.Prime p) (hq : Nat.Prime q)
    (hpq : p ≠ q) (hpFive : p ≠ 5) (hqFive : q ≠ 5) :
    (globalMixedDistinctPrimePairPointsAtResidue
      N x y p q residue).card ≤
        N ⌈/⌉ (25 * (p ^ 2 * q ^ 2)) := by
  let S := globalMixedDistinctPrimePairPointsAtResidue
    N x y p q residue
  have h25p : Nat.Coprime 25 (p ^ 2) :=
    tail_coprime_25_prime_square hp hpFive
  have h25q : Nat.Coprime 25 (q ^ 2) :=
    tail_coprime_25_prime_square hq hqFive
  have h25pq : Nat.Coprime 25 (p ^ 2 * q ^ 2) :=
    Nat.Coprime.mul_right h25p h25q
  have hbounds : ∀ point ∈ S, point ∈ Finset.Icc 1 N := by
    intro point hpoint
    have hpair := (Finset.mem_filter.mp hpoint).1
    have hbase := (Finset.mem_filter.mp hpair).1
    exact lowBaseSet_subset_Icc N hbase
  have hmod : ∀ point₁ ∈ S, ∀ point₂ ∈ S,
      point₁ ≡ point₂ [MOD 25 * (p ^ 2 * q ^ 2)] := by
    intro point₁ hpoint₁ point₂ hpoint₂
    have houter₁ := Finset.mem_filter.mp hpoint₁
    have houter₂ := Finset.mem_filter.mp hpoint₂
    have hpair₁ := Finset.mem_filter.mp houter₁.1
    have hpair₂ := Finset.mem_filter.mp houter₂.1
    have h25Mod : point₁ ≡ point₂ [MOD 25] := by
      change point₁ % 25 = point₂ % 25
      rw [houter₁.2, houter₂.2]
    have hpqMod : point₁ ≡ point₂ [MOD p ^ 2 * q ^ 2] :=
      distinctPrimePairPoint_modEq hp hq hpq
        hpair₁.2.1 hpair₂.2.1 hpair₁.2.2 hpair₂.2.2
    exact (Nat.modEq_and_modEq_iff_modEq_mul h25pq).mp
      ⟨h25Mod, hpqMod⟩
  exact tail_card_le_ceilDiv_of_pairwise_modEq S N
    (25 * (p ^ 2 * q ^ 2))
    (Nat.mul_pos (by norm_num)
      (Nat.mul_pos (pow_pos hp.pos _) (pow_pos hq.pos _)))
    hbounds hmod

/-- One ordered pair of distinct primes on one pivot edge has two base
progressions and therefore at most two ceiling terms. -/
theorem globalMixedDistinctPrimePairPoints_card_le
    {N x y p q : Nat}
    (hp : Nat.Prime p) (hq : Nat.Prime q)
    (hpq : p ≠ q) (hpFive : p ≠ 5) (hqFive : q ≠ 5) :
    (globalMixedDistinctPrimePairPoints N x y p q).card ≤
      2 * (N ⌈/⌉ (25 * (p ^ 2 * q ^ 2))) := by
  let pairPoints := globalMixedDistinctPrimePairPoints N x y p q
  let seven := globalMixedDistinctPrimePairPointsAtResidue
    N x y p q 7
  let eighteen := globalMixedDistinctPrimePairPointsAtResidue
    N x y p q 18
  have hsubset : pairPoints ⊆ seven ∪ eighteen := by
    intro point hpoint
    have hbase := (Finset.mem_filter.mp hpoint).1
    rcases Finset.mem_union.mp hbase with hseven | heighteen
    · apply Finset.mem_union_left
      exact Finset.mem_filter.mpr
        ⟨hpoint, (Finset.mem_filter.mp hseven).2⟩
    · apply Finset.mem_union_right
      exact Finset.mem_filter.mpr
        ⟨hpoint, (Finset.mem_filter.mp heighteen).2⟩
  have hseven : seven.card ≤
      N ⌈/⌉ (25 * (p ^ 2 * q ^ 2)) :=
    globalMixedDistinctPrimePairPointsAtResidue_card_le
      hp hq hpq hpFive hqFive
  have heightteen : eighteen.card ≤
      N ⌈/⌉ (25 * (p ^ 2 * q ^ 2)) :=
    globalMixedDistinctPrimePairPointsAtResidue_card_le
      hp hq hpq hpFive hqFive
  exact (Finset.card_le_card hsubset).trans
    ((Finset.card_union_le seven eighteen).trans (by omega))

/-- Rational main term plus the exact two-class endpoint for one ordered
distinct-prime pair. -/
theorem globalMixedDistinctPrimePairPoints_ratio_le
    {N x y p q : Nat} (hN : 0 < N)
    (hp : Nat.Prime p) (hq : Nat.Prime q)
    (hpq : p ≠ q) (hpFive : p ≠ 5) (hqFive : q ≠ 5) :
    ((globalMixedDistinctPrimePairPoints N x y p q).card : Rat) / N ≤
      2 / (25 * p ^ 2 * q ^ 2 : Rat) + 2 / N := by
  have hcardNat := globalMixedDistinctPrimePairPoints_card_le
    (N := N) (x := x) (y := y) hp hq hpq hpFive hqFive
  have hcardQ :
      ((globalMixedDistinctPrimePairPoints N x y p q).card : Rat) ≤
        2 * ((N ⌈/⌉ (25 * (p ^ 2 * q ^ 2)) : Nat) : Rat) := by
    exact_mod_cast hcardNat
  have hmodulus : 0 < 25 * (p ^ 2 * q ^ 2) :=
    Nat.mul_pos (by norm_num)
      (Nat.mul_pos (pow_pos hp.pos _) (pow_pos hq.pos _))
  have hceil := ceilDiv_cast_le_div_add_one
    N (25 * (p ^ 2 * q ^ 2)) hmodulus
  have hNq : (0 : Rat) < N := by exact_mod_cast hN
  calc
    ((globalMixedDistinctPrimePairPoints N x y p q).card : Rat) / N ≤
        (2 * ((N ⌈/⌉ (25 * (p ^ 2 * q ^ 2)) : Nat) : Rat)) / N :=
      div_le_div_of_nonneg_right hcardQ hNq.le
    _ ≤ (2 * ((N : Rat) / (25 * (p ^ 2 * q ^ 2) : Nat) + 1)) / N := by
      gcongr
    _ = 2 / (25 * p ^ 2 * q ^ 2 : Rat) + 2 / N := by
      norm_num only [Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat]
      field_simp

def globalMixedDistinctPrimePairUnion
    (N x y : Nat) (primes : Finset Nat) : Finset Nat :=
  primes.biUnion fun p =>
    (primes.erase p).biUnion fun q =>
      globalMixedDistinctPrimePairPoints N x y p q

/-- Exact finite-prime union bound on one pivot edge.  No endpoint is hidden:
there are two endpoints for each ordered pair of distinct witness primes. -/
theorem globalMixedDistinctPrimePairUnion_ratio_le_sum
    {N x y : Nat} (hN : 0 < N) (primes : Finset Nat)
    (hprime : ∀ p ∈ primes, Nat.Prime p)
    (hlarge : ∀ p ∈ primes, 7 < p) :
    ((globalMixedDistinctPrimePairUnion N x y primes).card : Rat) / N ≤
      ∑ p ∈ primes, ∑ q ∈ primes.erase p,
        (2 / (25 * p ^ 2 * q ^ 2 : Rat) + 2 / N) := by
  have hcardNat :
      (globalMixedDistinctPrimePairUnion N x y primes).card ≤
        ∑ p ∈ primes, ∑ q ∈ primes.erase p,
          (globalMixedDistinctPrimePairPoints N x y p q).card := by
    unfold globalMixedDistinctPrimePairUnion
    exact Finset.card_biUnion_le.trans
      (Finset.sum_le_sum fun p hp => Finset.card_biUnion_le)
  have hcardQ :
      ((globalMixedDistinctPrimePairUnion N x y primes).card : Rat) ≤
        ∑ p ∈ primes, ∑ q ∈ primes.erase p,
          ((globalMixedDistinctPrimePairPoints N x y p q).card : Rat) := by
    exact_mod_cast hcardNat
  have hNq : (0 : Rat) < N := by exact_mod_cast hN
  calc
    ((globalMixedDistinctPrimePairUnion N x y primes).card : Rat) / N ≤
        (∑ p ∈ primes, ∑ q ∈ primes.erase p,
          ((globalMixedDistinctPrimePairPoints N x y p q).card : Rat)) / N :=
      div_le_div_of_nonneg_right hcardQ hNq.le
    _ = ∑ p ∈ primes, ∑ q ∈ primes.erase p,
          (((globalMixedDistinctPrimePairPoints N x y p q).card : Rat) / N) := by
      rw [Finset.sum_div]
      apply Finset.sum_congr rfl
      intro p hp
      rw [Finset.sum_div]
    _ ≤ ∑ p ∈ primes, ∑ q ∈ primes.erase p,
          (2 / (25 * p ^ 2 * q ^ 2 : Rat) + 2 / N) := by
      apply Finset.sum_le_sum
      intro p hp
      apply Finset.sum_le_sum
      intro q hq
      have hqMem : q ∈ primes := Finset.mem_of_mem_erase hq
      exact globalMixedDistinctPrimePairPoints_ratio_le hN
        (hprime p hp) (hprime q hqMem)
        (Finset.ne_of_mem_erase hq).symm
        (by have := hlarge p hp; omega)
        (by have := hlarge q hqMem; omega)

private lemma distinctPrimePairMainTerm_eq
    {p q : Nat} (hp : 0 < p) (hq : 0 < q) :
    (2 / (25 * p ^ 2 * q ^ 2 : Rat)) =
      (2 / 25 : Rat) * reciprocalSquareQ p * reciprocalSquareQ q := by
  unfold reciprocalSquareQ
  norm_num only [Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat]
  have hpq : (p : Rat) ≠ 0 := by exact_mod_cast hp.ne'
  have hqq : (q : Rat) ≠ 0 := by exact_mod_cast hq.ne'
  field_simp

private lemma globalMixedDistinctPrimePairMainSum_le
    (primes : Finset Nat)
    (hprime : ∀ p ∈ primes, Nat.Prime p) :
    (∑ p ∈ primes, ∑ q ∈ primes.erase p,
        (2 / (25 * p ^ 2 * q ^ 2 : Rat))) ≤
      (2 / 25 : Rat) *
        (∑ p ∈ primes, reciprocalSquareQ p) ^ 2 := by
  have hinner : ∀ p ∈ primes,
      (∑ q ∈ primes.erase p,
          (2 / (25 * p ^ 2 * q ^ 2 : Rat))) ≤
        ∑ q ∈ primes,
          (2 / 25 : Rat) * reciprocalSquareQ p * reciprocalSquareQ q := by
    intro p hp
    calc
      (∑ q ∈ primes.erase p,
          (2 / (25 * p ^ 2 * q ^ 2 : Rat))) =
          ∑ q ∈ primes.erase p,
            (2 / 25 : Rat) * reciprocalSquareQ p * reciprocalSquareQ q := by
        apply Finset.sum_congr rfl
        intro q hq
        exact distinctPrimePairMainTerm_eq
          (hprime p hp).pos (hprime q (Finset.mem_of_mem_erase hq)).pos
      _ ≤ ∑ q ∈ primes,
            (2 / 25 : Rat) * reciprocalSquareQ p * reciprocalSquareQ q := by
        exact Finset.sum_le_sum_of_subset_of_nonneg
          (Finset.erase_subset p primes)
          (by
            intro q hq _
            unfold reciprocalSquareQ
            positivity)
  calc
    (∑ p ∈ primes, ∑ q ∈ primes.erase p,
        (2 / (25 * p ^ 2 * q ^ 2 : Rat))) ≤
        ∑ p ∈ primes, ∑ q ∈ primes,
          (2 / 25 : Rat) * reciprocalSquareQ p * reciprocalSquareQ q :=
      Finset.sum_le_sum fun p hp => hinner p hp
    _ = (2 / 25 : Rat) *
        (∑ p ∈ primes, reciprocalSquareQ p) ^ 2 := by
      calc
        (∑ p ∈ primes, ∑ q ∈ primes,
            (2 / 25 : Rat) * reciprocalSquareQ p * reciprocalSquareQ q) =
            ∑ p ∈ primes,
              ((2 / 25 : Rat) * reciprocalSquareQ p) *
                (∑ q ∈ primes, reciprocalSquareQ q) := by
          apply Finset.sum_congr rfl
          intro p hp
          rw [Finset.mul_sum]
        _ = (∑ p ∈ primes,
              (2 / 25 : Rat) * reciprocalSquareQ p) *
                (∑ q ∈ primes, reciprocalSquareQ q) := by
          rw [Finset.sum_mul]
        _ = (2 / 25 : Rat) *
              (∑ p ∈ primes, reciprocalSquareQ p) *
                (∑ q ∈ primes, reciprocalSquareQ q) := by
          have hfactor :
              (∑ p ∈ primes,
                (2 / 25 : Rat) * reciprocalSquareQ p) =
                (2 / 25 : Rat) *
                  (∑ p ∈ primes, reciprocalSquareQ p) := by
            rw [Finset.mul_sum]
          rw [hfactor]
        _ = (2 / 25 : Rat) *
            (∑ p ∈ primes, reciprocalSquareQ p) ^ 2 := by ring

private lemma globalMixedDistinctPrimePairEndpointSum_eq
    {N : Nat} (primes : Finset Nat) :
    (∑ p ∈ primes, ∑ _q ∈ primes.erase p, (2 / N : Rat)) =
      2 * (primes.card * (primes.card - 1) : Nat) / N := by
  have hpairCount :
      (∑ p ∈ primes, (primes.erase p).card) =
        primes.card * (primes.card - 1) := by
    calc
      (∑ p ∈ primes, (primes.erase p).card) =
          ∑ _p ∈ primes, (primes.card - 1) := by
        apply Finset.sum_congr rfl
        intro p hp
        rw [Finset.card_erase_of_mem hp]
      _ = primes.card * (primes.card - 1) := by simp
  calc
    (∑ p ∈ primes, ∑ _q ∈ primes.erase p, (2 / N : Rat)) =
        ∑ p ∈ primes, (2 / N : Rat) * (primes.erase p).card := by
      apply Finset.sum_congr rfl
      intro p hp
      simp
      ring
    _ = (2 / N : Rat) *
        (∑ p ∈ primes, (primes.erase p).card) := by
      push_cast
      rw [Finset.mul_sum]
    _ = 2 * (primes.card * (primes.card - 1) : Nat) / N := by
      rw [hpairCount]
      push_cast
      ring

/-- Closed finite-union formula: the density is at most the square of the
reciprocal-square mass, and the complete endpoint is exactly the number of
ordered distinct prime pairs times two base progressions. -/
theorem globalMixedDistinctPrimePairUnion_ratio_le
    {N x y : Nat} (hN : 0 < N) (primes : Finset Nat)
    (hprime : ∀ p ∈ primes, Nat.Prime p)
    (hlarge : ∀ p ∈ primes, 7 < p) :
    ((globalMixedDistinctPrimePairUnion N x y primes).card : Rat) / N ≤
      (2 / 25 : Rat) *
          (∑ p ∈ primes, reciprocalSquareQ p) ^ 2 +
        2 * (primes.card * (primes.card - 1) : Nat) / N := by
  have hsum := globalMixedDistinctPrimePairUnion_ratio_le_sum
    (x := x) (y := y) hN primes hprime hlarge
  calc
    ((globalMixedDistinctPrimePairUnion N x y primes).card : Rat) / N ≤
        ∑ p ∈ primes, ∑ q ∈ primes.erase p,
          (2 / (25 * p ^ 2 * q ^ 2 : Rat) + 2 / N) := hsum
    _ =
        (∑ p ∈ primes, ∑ q ∈ primes.erase p,
          (2 / (25 * p ^ 2 * q ^ 2 : Rat))) +
        ∑ p ∈ primes, ∑ _q ∈ primes.erase p, (2 / N : Rat) := by
      calc
        (∑ p ∈ primes, ∑ q ∈ primes.erase p,
            (2 / (25 * p ^ 2 * q ^ 2 : Rat) + 2 / N)) =
            ∑ p ∈ primes,
              ((∑ q ∈ primes.erase p,
                  (2 / (25 * p ^ 2 * q ^ 2 : Rat))) +
                ∑ _q ∈ primes.erase p, (2 / N : Rat)) := by
          apply Finset.sum_congr rfl
          intro p hp
          rw [Finset.sum_add_distrib]
        _ = _ := by rw [Finset.sum_add_distrib]
    _ ≤ (2 / 25 : Rat) *
          (∑ p ∈ primes, reciprocalSquareQ p) ^ 2 +
        ∑ p ∈ primes, ∑ _q ∈ primes.erase p, (2 / N : Rat) := by
      gcongr
      exact globalMixedDistinctPrimePairMainSum_le primes hprime
    _ = (2 / 25 : Rat) *
          (∑ p ∈ primes, reciprocalSquareQ p) ^ 2 +
        2 * (primes.card * (primes.card - 1) : Nat) / N := by
      rw [globalMixedDistinctPrimePairEndpointSum_eq]

private lemma globalMixedPivotEdge_nonempty
    {pivots : Finset Nat}
    (edge : ↥(pivots.powersetCard 2)) : edge.1.Nonempty := by
  have hedgeCard : edge.1.card = 2 :=
    (Finset.mem_powersetCard.mp edge.2).2
  exact Finset.card_pos.mp (by omega)

noncomputable def globalMixedPivotEdgeLower
    {pivots : Finset Nat}
    (edge : ↥(pivots.powersetCard 2)) : Nat :=
  edge.1.min' (globalMixedPivotEdge_nonempty edge)

noncomputable def globalMixedPivotEdgeUpper
    {pivots : Finset Nat}
    (edge : ↥(pivots.powersetCard 2)) : Nat :=
  edge.1.max' (globalMixedPivotEdge_nonempty edge)

lemma globalMixedPivotEdgeLower_mem
    {pivots : Finset Nat}
    (edge : ↥(pivots.powersetCard 2)) :
    globalMixedPivotEdgeLower edge ∈ edge.1 := by
  unfold globalMixedPivotEdgeLower
  exact Finset.min'_mem _ _

lemma globalMixedPivotEdgeUpper_mem
    {pivots : Finset Nat}
    (edge : ↥(pivots.powersetCard 2)) :
    globalMixedPivotEdgeUpper edge ∈ edge.1 := by
  unfold globalMixedPivotEdgeUpper
  exact Finset.max'_mem _ _

lemma globalMixedPivotEdgeLower_ne_upper
    {pivots : Finset Nat}
    (edge : ↥(pivots.powersetCard 2)) :
    globalMixedPivotEdgeLower edge ≠ globalMixedPivotEdgeUpper edge := by
  have hedgeCard : edge.1.card = 2 :=
    (Finset.mem_powersetCard.mp edge.2).2
  have hlt := edge.1.min'_lt_max'_of_card (by omega)
  simpa [globalMixedPivotEdgeLower, globalMixedPivotEdgeUpper] using hlt.ne

noncomputable def globalMixedThreePivotDistinctPrimeUnion
    (N : Nat) (pivots primes : Finset Nat) : Finset Nat := by
  classical
  exact (pivots.powersetCard 2).attach.biUnion fun edge =>
    globalMixedDistinctPrimePairUnion N
      (globalMixedPivotEdgeLower edge)
      (globalMixedPivotEdgeUpper edge) primes

/-- Literal witness insertion into the canonical three-edge union.  The
ordered prime pair is reversed exactly when the canonical edge orientation is
the reverse of the supplied pivot witnesses. -/
theorem mem_globalMixedThreePivotDistinctPrimeUnion_of_witnesses
    {N point : Nat} {pivots primes : Finset Nat}
    {x y p q : Nat}
    (hpoint : point ∈ lowBaseSet N)
    (hx : x ∈ pivots) (hy : y ∈ pivots) (hxy : x ≠ y)
    (hp : p ∈ primes) (hq : q ∈ primes) (hpq : p ≠ q)
    (hpx : p ^ 2 ∣ x * point + 1)
    (hqy : q ^ 2 ∣ y * point + 1) :
    point ∈ globalMixedThreePivotDistinctPrimeUnion
      N pivots primes := by
  classical
  have hedgeSubset : ({x, y} : Finset Nat) ⊆ pivots := by
    intro z hz
    simp only [Finset.mem_insert, Finset.mem_singleton] at hz
    rcases hz with rfl | rfl
    · exact hx
    · exact hy
  have hedgeCard : ({x, y} : Finset Nat).card = 2 := by
    simp [hxy]
  have hedgeMem : ({x, y} : Finset Nat) ∈ pivots.powersetCard 2 :=
    Finset.mem_powersetCard.mpr ⟨hedgeSubset, hedgeCard⟩
  let edge : ↥(pivots.powersetCard 2) := ⟨{x, y}, hedgeMem⟩
  have hlowerMem : globalMixedPivotEdgeLower edge = x ∨
      globalMixedPivotEdgeLower edge = y := by
    have := globalMixedPivotEdgeLower_mem edge
    simpa [edge] using this
  have hupperMem : globalMixedPivotEdgeUpper edge = x ∨
      globalMixedPivotEdgeUpper edge = y := by
    have := globalMixedPivotEdgeUpper_mem edge
    simpa [edge] using this
  have hlowerUpper := globalMixedPivotEdgeLower_ne_upper edge
  unfold globalMixedThreePivotDistinctPrimeUnion
  apply Finset.mem_biUnion.mpr
  refine ⟨edge, by simp [edge], ?_⟩
  rcases hlowerMem with hlower | hlower <;>
    rcases hupperMem with hupper | hupper
  · exact False.elim (hlowerUpper (hlower.trans hupper.symm))
  · rw [hlower, hupper]
    unfold globalMixedDistinctPrimePairUnion
    apply Finset.mem_biUnion.mpr
    refine ⟨p, hp, ?_⟩
    apply Finset.mem_biUnion.mpr
    refine ⟨q, Finset.mem_erase.mpr ⟨hpq.symm, hq⟩, ?_⟩
    exact Finset.mem_filter.mpr ⟨hpoint, hpx, hqy⟩
  · rw [hlower, hupper]
    unfold globalMixedDistinctPrimePairUnion
    apply Finset.mem_biUnion.mpr
    refine ⟨q, hq, ?_⟩
    apply Finset.mem_biUnion.mpr
    refine ⟨p, Finset.mem_erase.mpr ⟨hpq, hp⟩, ?_⟩
    exact Finset.mem_filter.mpr ⟨hpoint, hqy, hpx⟩
  · exact False.elim (hlowerUpper (hlower.trans hupper.symm))

def globalMixedThreePivotDistinctPrimePointsWithin
    (N : Nat) (pivots primes : Finset Nat) : Finset Nat :=
  (lowBaseSet N).filter fun point =>
    ∃ x ∈ pivots, ∃ y ∈ pivots, x ≠ y ∧
      ∃ p ∈ primes, ∃ q ∈ primes, p ≠ q ∧
        p ^ 2 ∣ x * point + 1 ∧ q ^ 2 ∣ y * point + 1

theorem globalMixedThreePivotDistinctPrimePointsWithin_subset_union
    {N : Nat} {pivots primes : Finset Nat} :
    globalMixedThreePivotDistinctPrimePointsWithin N pivots primes ⊆
      globalMixedThreePivotDistinctPrimeUnion N pivots primes := by
  intro point hpoint
  have hparts := Finset.mem_filter.mp hpoint
  obtain ⟨x, hx, y, hy, hxy, p, hp, q, hq, hpq, hpx, hqy⟩ :=
    hparts.2
  exact mem_globalMixedThreePivotDistinctPrimeUnion_of_witnesses
    hparts.1 hx hy hxy hp hq hpq hpx hqy

noncomputable def globalMixedThreePivotHighPrimeUnion
    (N : Nat) (pivots : Finset Nat) (upper : Nat) : Finset Nat := by
  classical
  exact pivots.biUnion fun pivot =>
    twoBaseHighTailSquarePoints N pivot upper

/-- Exact small/high split of the literal distinct-prime tail.  If both
witness primes are at most `upper`, the point enters the finite CRT union;
otherwise one of its two actual pivot forms enters the one-form high set. -/
theorem globalMixedThreePivotDistinctTailPoints_subset_finite_union_high
    {N upper : Nat} {pivots : Finset Nat} :
    globalMixedThreePivotDistinctTailPoints N pivots ⊆
      globalMixedThreePivotDistinctPrimeUnion N pivots
          (tailIntermediatePrimes 7 upper) ∪
        globalMixedThreePivotHighPrimeUnion N pivots upper := by
  classical
  intro point hpoint
  have hparts := Finset.mem_filter.mp hpoint
  obtain ⟨x, hx, y, hy, hxy, p, q,
    hpPrime, hqPrime, hpLarge, hqLarge, hpq, hpx, hqy⟩ := hparts.2
  by_cases hpUpper : p ≤ upper
  · by_cases hqUpper : q ≤ upper
    · apply Finset.mem_union_left
      apply globalMixedThreePivotDistinctPrimePointsWithin_subset_union
      apply Finset.mem_filter.mpr
      refine ⟨hparts.1, x, hx, y, hy, hxy, p, ?_, q, ?_, hpq, hpx, hqy⟩
      · exact mem_tailIntermediatePrimes.mpr
          ⟨hpPrime, hpLarge, hpUpper⟩
      · exact mem_tailIntermediatePrimes.mpr
          ⟨hqPrime, hqLarge, hqUpper⟩
    · apply Finset.mem_union_right
      unfold globalMixedThreePivotHighPrimeUnion
      apply Finset.mem_biUnion.mpr
      refine ⟨y, hy, Finset.mem_filter.mpr ⟨hparts.1, ?_⟩⟩
      exact ⟨q, hqPrime, Nat.lt_of_not_ge hqUpper, hqy⟩
  · apply Finset.mem_union_right
    unfold globalMixedThreePivotHighPrimeUnion
    apply Finset.mem_biUnion.mpr
    refine ⟨x, hx, Finset.mem_filter.mpr ⟨hparts.1, ?_⟩⟩
    exact ⟨p, hpPrime, Nat.lt_of_not_ge hpUpper, hpx⟩

theorem globalMixedThreePivotHighPrimeUnion_ratio_le
    {N upper : Nat} {pivots : Finset Nat} {envelope : Rat}
    (hN : 0 < N) (hpivotsCard : pivots.card = 3)
    (hperPivot : ∀ pivot ∈ pivots,
      ((twoBaseHighTailSquarePoints N pivot upper).card : Rat) / N ≤
        envelope) :
    ((globalMixedThreePivotHighPrimeUnion
        N pivots upper).card : Rat) / N ≤ 3 * envelope := by
  classical
  have hcardNat :
      (globalMixedThreePivotHighPrimeUnion N pivots upper).card ≤
        ∑ pivot ∈ pivots,
          (twoBaseHighTailSquarePoints N pivot upper).card := by
    unfold globalMixedThreePivotHighPrimeUnion
    exact Finset.card_biUnion_le
  have hcardQ :
      ((globalMixedThreePivotHighPrimeUnion
          N pivots upper).card : Rat) ≤
        ∑ pivot ∈ pivots,
          ((twoBaseHighTailSquarePoints N pivot upper).card : Rat) := by
    exact_mod_cast hcardNat
  have hNq : (0 : Rat) < N := by exact_mod_cast hN
  calc
    ((globalMixedThreePivotHighPrimeUnion
        N pivots upper).card : Rat) / N ≤
        (∑ pivot ∈ pivots,
          ((twoBaseHighTailSquarePoints N pivot upper).card : Rat)) / N :=
      div_le_div_of_nonneg_right hcardQ hNq.le
    _ = ∑ pivot ∈ pivots,
          (((twoBaseHighTailSquarePoints N pivot upper).card : Rat) / N) := by
      rw [Finset.sum_div]
    _ ≤ ∑ _pivot ∈ pivots, envelope :=
      Finset.sum_le_sum fun pivot hpivot => hperPivot pivot hpivot
    _ = 3 * envelope := by simp [hpivotsCard]

/-- Summing the fixed-edge theorem over the three literal pivot edges gives
the finite distinct-prime part of the advertised `3 * S^2` payment. -/
theorem globalMixedThreePivotDistinctPrimeUnion_ratio_le
    {N : Nat} {pivots : Finset Nat} (hN : 0 < N)
    (hpivotsCard : pivots.card = 3) (primes : Finset Nat)
    (hprime : ∀ p ∈ primes, Nat.Prime p)
    (hlarge : ∀ p ∈ primes, 7 < p) :
    ((globalMixedThreePivotDistinctPrimeUnion
        N pivots primes).card : Rat) / N ≤
      (6 / 25 : Rat) *
          (∑ p ∈ primes, reciprocalSquareQ p) ^ 2 +
        6 * (primes.card * (primes.card - 1) : Nat) / N := by
  classical
  let edges := (pivots.powersetCard 2).attach
  let edgePoints := fun edge : ↥(pivots.powersetCard 2) =>
    globalMixedDistinctPrimePairUnion N
      (globalMixedPivotEdgeLower edge)
      (globalMixedPivotEdgeUpper edge) primes
  let edgeBound : Rat :=
    (2 / 25 : Rat) *
        (∑ p ∈ primes, reciprocalSquareQ p) ^ 2 +
      2 * (primes.card * (primes.card - 1) : Nat) / N
  have hcardNat :
      (globalMixedThreePivotDistinctPrimeUnion N pivots primes).card ≤
        ∑ edge ∈ edges, (edgePoints edge).card := by
    unfold globalMixedThreePivotDistinctPrimeUnion
    exact Finset.card_biUnion_le
  have hcardQ :
      ((globalMixedThreePivotDistinctPrimeUnion
          N pivots primes).card : Rat) ≤
        ∑ edge ∈ edges, ((edgePoints edge).card : Rat) := by
    exact_mod_cast hcardNat
  have hNq : (0 : Rat) < N := by exact_mod_cast hN
  have hedgeBound : ∀ edge ∈ edges,
      ((edgePoints edge).card : Rat) / N ≤ edgeBound := by
    intro edge _hedge
    exact globalMixedDistinctPrimePairUnion_ratio_le
      hN primes hprime hlarge
  have hedgesCard : edges.card = 3 := by
    dsimp [edges]
    rw [Finset.card_attach, Finset.card_powersetCard, hpivotsCard]
    norm_num
  calc
    ((globalMixedThreePivotDistinctPrimeUnion
        N pivots primes).card : Rat) / N ≤
        (∑ edge ∈ edges, ((edgePoints edge).card : Rat)) / N :=
      div_le_div_of_nonneg_right hcardQ hNq.le
    _ = ∑ edge ∈ edges, (((edgePoints edge).card : Rat) / N) := by
      rw [Finset.sum_div]
    _ ≤ ∑ _edge ∈ edges, edgeBound :=
      Finset.sum_le_sum fun edge hedge => hedgeBound edge hedge
    _ = 3 * edgeBound := by simp [hedgesCard]
    _ = (6 / 25 : Rat) *
          (∑ p ∈ primes, reciprocalSquareQ p) ^ 2 +
        6 * (primes.card * (primes.card - 1) : Nat) / N := by
      dsimp [edgeBound]
      ring

/-- Direct finite/high estimate for the full distinct-prime set.  This theorem
is useful both for a successful optimized high-low row and for proving that a
coarser one-form high allocation cannot fit the terminal budget. -/
theorem globalMixedThreePivotDistinctTailPoints_ratio_le_of_high
    {N upper : Nat} {pivots : Finset Nat} {envelope : Rat}
    (hN : 0 < N) (hpivotsCard : pivots.card = 3)
    (hperPivot : ∀ pivot ∈ pivots,
      ((twoBaseHighTailSquarePoints N pivot upper).card : Rat) / N ≤
        envelope) :
    ((globalMixedThreePivotDistinctTailPoints N pivots).card : Rat) / N ≤
      (6 / 25 : Rat) *
          (∑ p ∈ tailIntermediatePrimes 7 upper,
            reciprocalSquareQ p) ^ 2 +
        6 * ((tailIntermediatePrimes 7 upper).card *
            ((tailIntermediatePrimes 7 upper).card - 1) : Nat) / N +
          3 * envelope := by
  let finite := globalMixedThreePivotDistinctPrimeUnion N pivots
    (tailIntermediatePrimes 7 upper)
  let high := globalMixedThreePivotHighPrimeUnion N pivots upper
  have hsubset : globalMixedThreePivotDistinctTailPoints N pivots ⊆
      finite ∪ high :=
    globalMixedThreePivotDistinctTailPoints_subset_finite_union_high
  have hcardNat :
      (globalMixedThreePivotDistinctTailPoints N pivots).card ≤
        finite.card + high.card :=
    (Finset.card_le_card hsubset).trans (Finset.card_union_le finite high)
  have hcardQ :
      ((globalMixedThreePivotDistinctTailPoints N pivots).card : Rat) ≤
        (finite.card : Rat) + (high.card : Rat) := by
    exact_mod_cast hcardNat
  have hNq : (0 : Rat) < N := by exact_mod_cast hN
  have hfinite := globalMixedThreePivotDistinctPrimeUnion_ratio_le
    hN hpivotsCard (tailIntermediatePrimes 7 upper)
    (by intro p hp; exact (mem_tailIntermediatePrimes.mp hp).1)
    (by intro p hp; exact (mem_tailIntermediatePrimes.mp hp).2.1)
  have hhigh := globalMixedThreePivotHighPrimeUnion_ratio_le
    hN hpivotsCard hperPivot
  calc
    ((globalMixedThreePivotDistinctTailPoints N pivots).card : Rat) / N ≤
        ((finite.card : Rat) + (high.card : Rat)) / N :=
      div_le_div_of_nonneg_right hcardQ hNq.le
    _ = (finite.card : Rat) / N + (high.card : Rat) / N := by ring
    _ ≤ ((6 / 25 : Rat) *
          (∑ p ∈ tailIntermediatePrimes 7 upper,
            reciprocalSquareQ p) ^ 2 +
        6 * ((tailIntermediatePrimes 7 upper).card *
          ((tailIntermediatePrimes 7 upper).card - 1) : Nat) / N) +
          3 * envelope := add_le_add hfinite hhigh
    _ = _ := by ring

#print axioms globalMixedDistinctPrimePairPoints_card_le
#print axioms globalMixedDistinctPrimePairPoints_ratio_le
#print axioms globalMixedDistinctPrimePairUnion_ratio_le_sum
#print axioms globalMixedDistinctPrimePairUnion_ratio_le
#print axioms globalMixedThreePivotDistinctPrimePointsWithin_subset_union
#print axioms globalMixedThreePivotDistinctPrimeUnion_ratio_le
#print axioms globalMixedThreePivotDistinctTailPoints_subset_finite_union_high
#print axioms globalMixedThreePivotDistinctTailPoints_ratio_le_of_high

end Erdos848
