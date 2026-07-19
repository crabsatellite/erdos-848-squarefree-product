import Erdos848.TailGlobalMixedThreePivotTailSplit

namespace Erdos848

/-!
# Deduplicating common tail primes

Every active common prime is assigned an actual two-element pivot edge.  Two
different primes cannot be assigned the same edge inside a cluster of span
below `2627`, because their coprime squares would force a divisor at least
`(11 * 13)^2` into that positive edge difference.
-/

noncomputable def globalMixedThreePivotActiveCommonPrimes
    (N : ℕ) (pivots : Finset ℕ) : Finset ℕ := by
  classical
  exact (Finset.Icc 8 51).filter fun p =>
    Nat.Prime p ∧
      (globalMixedThreePivotCommonPrimePoints N pivots p).Nonempty

lemma mem_globalMixedThreePivotActiveCommonPrimes
    {N p : ℕ} {pivots : Finset ℕ} :
    p ∈ globalMixedThreePivotActiveCommonPrimes N pivots ↔
      Nat.Prime p ∧ 7 < p ∧ p ≤ 51 ∧
        (globalMixedThreePivotCommonPrimePoints N pivots p).Nonempty := by
  constructor
  · intro hp
    have hparts := Finset.mem_filter.mp hp
    have hbounds := Finset.mem_Icc.mp hparts.1
    exact ⟨hparts.2.1, by omega, hbounds.2, hparts.2.2⟩
  · rintro ⟨hpPrime, hpLarge, hpUpper, hpNonempty⟩
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_Icc.mpr ⟨by omega, hpUpper⟩,
        hpPrime, hpNonempty⟩

structure GlobalMixedCommonPrimeEdgeCertificate
    (N : ℕ) (pivots : Finset ℕ)
    (p : ↥(globalMixedThreePivotActiveCommonPrimes N pivots)) where
  edge : ↥(pivots.powersetCard 2)
  point : ℕ
  point_mem : point ∈ globalMixedThreePivotCommonPrimePoints N pivots p.1
  edge_events : ∀ pivot ∈ edge.1,
    p.1 ^ 2 ∣ pivot * point + 1

private theorem exists_commonPrimeEdgeCertificate
    (N : ℕ) (pivots : Finset ℕ)
    (p : ↥(globalMixedThreePivotActiveCommonPrimes N pivots)) :
    Nonempty (GlobalMixedCommonPrimeEdgeCertificate N pivots p) := by
  classical
  have hpParts := mem_globalMixedThreePivotActiveCommonPrimes.mp p.2
  obtain ⟨point, hpoint⟩ := hpParts.2.2.2
  have hpointParts := Finset.mem_filter.mp hpoint
  let active := pivots.filter fun pivot =>
    p.1 ^ 2 ∣ pivot * point + 1
  have hactive : 1 < active.card := by
    dsimp [active]
    omega
  obtain ⟨x, hx, y, hy, hxy⟩ := Finset.one_lt_card.mp hactive
  have hxParts := Finset.mem_filter.mp hx
  have hyParts := Finset.mem_filter.mp hy
  let edge : Finset ℕ := {x, y}
  have hedgeSubset : edge ⊆ pivots := by
    intro z hz
    simp only [edge, Finset.mem_insert, Finset.mem_singleton] at hz
    rcases hz with rfl | rfl
    · exact hxParts.1
    · exact hyParts.1
  have hedgeCard : edge.card = 2 := by
    simp [edge, hxy]
  have hedgeMem : edge ∈ pivots.powersetCard 2 :=
    Finset.mem_powersetCard.mpr ⟨hedgeSubset, hedgeCard⟩
  refine ⟨{
    edge := ⟨edge, hedgeMem⟩
    point := point
    point_mem := hpoint
    edge_events := ?_
  }⟩
  intro z hz
  simp only [edge, Finset.mem_insert, Finset.mem_singleton] at hz
  rcases hz with rfl | rfl
  · exact hxParts.2
  · exact hyParts.2

noncomputable def globalMixedCommonPrimeEdgeCertificate
    (N : ℕ) (pivots : Finset ℕ)
    (p : ↥(globalMixedThreePivotActiveCommonPrimes N pivots)) :
    GlobalMixedCommonPrimeEdgeCertificate N pivots p :=
  Classical.choice (exists_commonPrimeEdgeCertificate N pivots p)

private lemma prime_ge_eleven_of_seven_lt
    {p : ℕ} (hp : Nat.Prime p) (hpLarge : 7 < p) :
    11 ≤ p := by
  by_contra hnot
  have hpUpper : p ≤ 10 := by omega
  interval_cases p <;> norm_num at hp

private lemma one_of_distinct_primes_ge_thirteen
    {p q : ℕ} (hp : Nat.Prime p) (hq : Nat.Prime q)
    (hpLarge : 7 < p) (hqLarge : 7 < q) (hpq : p ≠ q) :
    13 ≤ p ∨ 13 ≤ q := by
  by_contra hnot
  push Not at hnot
  have hpLower := prime_ge_eleven_of_seven_lt hp hpLarge
  have hqLower := prime_ge_eleven_of_seven_lt hq hqLarge
  have hpUpper : p ≤ 12 := by omega
  have hqUpper : q ≤ 12 := by omega
  have hpNotTwelve : p ≠ 12 := by
    intro hpTwelve
    subst p
    norm_num at hp
  have hqNotTwelve : q ≠ 12 := by
    intro hqTwelve
    subst q
    norm_num at hq
  have hpEleven : p = 11 := by omega
  have hqEleven : q = 11 := by omega
  exact hpq (hpEleven.trans hqEleven.symm)

private lemma distinct_large_prime_square_product_gt
    {p q : ℕ} (hp : Nat.Prime p) (hq : Nat.Prime q)
    (hpLarge : 7 < p) (hqLarge : 7 < q) (hpq : p ≠ q) :
    2627 < p ^ 2 * q ^ 2 := by
  have hpEleven := prime_ge_eleven_of_seven_lt hp hpLarge
  have hqEleven := prime_ge_eleven_of_seven_lt hq hqLarge
  have hthirteen := one_of_distinct_primes_ge_thirteen
    hp hq hpLarge hqLarge hpq
  rcases hthirteen with hpThirteen | hqThirteen
  · have hlower : 13 ^ 2 * 11 ^ 2 ≤ p ^ 2 * q ^ 2 :=
      Nat.mul_le_mul (Nat.pow_le_pow_left hpThirteen 2)
        (Nat.pow_le_pow_left hqEleven 2)
    norm_num at hlower ⊢
    omega
  · have hlower : 11 ^ 2 * 13 ^ 2 ≤ p ^ 2 * q ^ 2 :=
      Nat.mul_le_mul (Nat.pow_le_pow_left hpEleven 2)
        (Nat.pow_le_pow_left hqThirteen 2)
    norm_num at hlower ⊢
    omega

private theorem globalMixedCommonPrimeEdge_injective
    {N : ℕ} {pivots : Finset ℕ}
    (hspan : ∀ x ∈ pivots, ∀ y ∈ pivots,
      x < y → y - x < 2627) :
    Function.Injective fun
      p : ↥(globalMixedThreePivotActiveCommonPrimes N pivots) =>
        (globalMixedCommonPrimeEdgeCertificate N pivots p).edge := by
  intro p q hedge
  apply Subtype.ext
  by_contra hpq
  have hpParts := mem_globalMixedThreePivotActiveCommonPrimes.mp p.2
  have hqParts := mem_globalMixedThreePivotActiveCommonPrimes.mp q.2
  let pCert := globalMixedCommonPrimeEdgeCertificate N pivots p
  let qCert := globalMixedCommonPrimeEdgeCertificate N pivots q
  have hpEdgeCard : pCert.edge.1.card = 2 :=
    (Finset.mem_powersetCard.mp pCert.edge.2).2
  have hpEdgeLarge : 1 < pCert.edge.1.card := by omega
  obtain ⟨x, hx, y, hy, hxy⟩ :=
    Finset.one_lt_card.mp hpEdgeLarge
  rcases lt_or_gt_of_ne hxy with hxyLt | hyxLt
  · have hxPivot : x ∈ pivots :=
      (Finset.mem_powersetCard.mp pCert.edge.2).1 hx
    have hyPivot : y ∈ pivots :=
      (Finset.mem_powersetCard.mp pCert.edge.2).1 hy
    have hxQ : x ∈ qCert.edge.1 := by
      have hedgeVal : pCert.edge.1 = qCert.edge.1 :=
        congrArg Subtype.val hedge
      rwa [← hedgeVal]
    have hyQ : y ∈ qCert.edge.1 := by
      have hedgeVal : pCert.edge.1 = qCert.edge.1 :=
        congrArg Subtype.val hedge
      rwa [← hedgeVal]
    have hpDiv := common_squarePrime_dvd_pivotDifference
      hpParts.1 hxyLt.le
      (pCert.edge_events x hx) (pCert.edge_events y hy)
    have hqDiv := common_squarePrime_dvd_pivotDifference
      hqParts.1 hxyLt.le
      (qCert.edge_events x hxQ) (qCert.edge_events y hyQ)
    have hpqCoprime : Nat.Coprime p.1 q.1 :=
      (Nat.coprime_primes hpParts.1 hqParts.1).mpr hpq
    have hsquaresCoprime : Nat.Coprime (p.1 ^ 2) (q.1 ^ 2) :=
      Nat.Coprime.pow_left 2 (Nat.Coprime.pow_right 2 hpqCoprime)
    have hproductDiv : p.1 ^ 2 * q.1 ^ 2 ∣ y - x :=
      hsquaresCoprime.mul_dvd_of_dvd_of_dvd hpDiv hqDiv
    have hdiffPos : 0 < y - x := Nat.sub_pos_of_lt hxyLt
    have hproductLe : p.1 ^ 2 * q.1 ^ 2 ≤ y - x :=
      Nat.le_of_dvd hdiffPos hproductDiv
    have hlargeProduct := distinct_large_prime_square_product_gt
      hpParts.1 hqParts.1 hpParts.2.1 hqParts.2.1 hpq
    have hgap := hspan x hxPivot y hyPivot hxyLt
    omega
  · have hyPivot : y ∈ pivots :=
      (Finset.mem_powersetCard.mp pCert.edge.2).1 hy
    have hxPivot : x ∈ pivots :=
      (Finset.mem_powersetCard.mp pCert.edge.2).1 hx
    have hyQ : y ∈ qCert.edge.1 := by
      have hedgeVal : pCert.edge.1 = qCert.edge.1 :=
        congrArg Subtype.val hedge
      rwa [← hedgeVal]
    have hxQ : x ∈ qCert.edge.1 := by
      have hedgeVal : pCert.edge.1 = qCert.edge.1 :=
        congrArg Subtype.val hedge
      rwa [← hedgeVal]
    have hpDiv := common_squarePrime_dvd_pivotDifference
      hpParts.1 hyxLt.le
      (pCert.edge_events y hy) (pCert.edge_events x hx)
    have hqDiv := common_squarePrime_dvd_pivotDifference
      hqParts.1 hyxLt.le
      (qCert.edge_events y hyQ) (qCert.edge_events x hxQ)
    have hpqCoprime : Nat.Coprime p.1 q.1 :=
      (Nat.coprime_primes hpParts.1 hqParts.1).mpr hpq
    have hsquaresCoprime : Nat.Coprime (p.1 ^ 2) (q.1 ^ 2) :=
      Nat.Coprime.pow_left 2 (Nat.Coprime.pow_right 2 hpqCoprime)
    have hproductDiv : p.1 ^ 2 * q.1 ^ 2 ∣ x - y :=
      hsquaresCoprime.mul_dvd_of_dvd_of_dvd hpDiv hqDiv
    have hdiffPos : 0 < x - y := Nat.sub_pos_of_lt hyxLt
    have hproductLe : p.1 ^ 2 * q.1 ^ 2 ≤ x - y :=
      Nat.le_of_dvd hdiffPos hproductDiv
    have hlargeProduct := distinct_large_prime_square_product_gt
      hpParts.1 hqParts.1 hpParts.2.1 hqParts.2.1 hpq
    have hgap := hspan y hyPivot x hxPivot hyxLt
    omega

/-- At most one deduplicated common prime can be assigned to each of the
three actual pivot edges. -/
theorem globalMixedThreePivotActiveCommonPrimes_card_le_three
    {N : ℕ} {pivots : Finset ℕ}
    (hcard : pivots.card = 3)
    (hspan : ∀ x ∈ pivots, ∀ y ∈ pivots,
      x < y → y - x < 2627) :
    (globalMixedThreePivotActiveCommonPrimes N pivots).card ≤ 3 := by
  let source := ↥(globalMixedThreePivotActiveCommonPrimes N pivots)
  let target := ↥(pivots.powersetCard 2)
  let edgeMap : source → target := fun p =>
    (globalMixedCommonPrimeEdgeCertificate N pivots p).edge
  have hinjective : Function.Injective edgeMap :=
    globalMixedCommonPrimeEdge_injective hspan
  have hcardTypes : Fintype.card source ≤ Fintype.card target :=
    Fintype.card_le_of_injective edgeMap hinjective
  simpa [source, target, Finset.card_powersetCard, hcard] using hcardTypes

private lemma prime_ge_seventeen_of_seven_lt_ne_eleven_ne_thirteen
    {p : ℕ} (hp : Nat.Prime p) (hpLarge : 7 < p)
    (hpEleven : p ≠ 11) (hpThirteen : p ≠ 13) :
    17 ≤ p := by
  by_contra hnot
  have hpUpper : p ≤ 16 := by omega
  have hpEight : p ≠ 8 := by intro h; subst p; norm_num at hp
  have hpNine : p ≠ 9 := by intro h; subst p; norm_num at hp
  have hpTen : p ≠ 10 := by intro h; subst p; norm_num at hp
  have hpTwelve : p ≠ 12 := by intro h; subst p; norm_num at hp
  have hpFourteen : p ≠ 14 := by intro h; subst p; norm_num at hp
  have hpFifteen : p ≠ 15 := by intro h; subst p; norm_num at hp
  have hpSixteen : p ≠ 16 := by intro h; subst p; norm_num at hp
  omega

/-- Among at most three distinct primes above `7`, the reciprocal-square sum
is maximized by `11, 13, 17`. -/
theorem three_large_primes_reciprocalSquare_sum_le
    (primes : Finset ℕ)
    (hprime : ∀ p ∈ primes, Nat.Prime p)
    (hlarge : ∀ p ∈ primes, 7 < p)
    (hcard : primes.card ≤ 3) :
    (∑ p ∈ primes, (1 : ℚ) / p ^ 2) ≤
      globalMixedThreePivotCommonTail51Envelope := by
  classical
  let rest := (primes.erase 11).erase 13
  have hrestTerm : ∀ p ∈ rest,
      (1 : ℚ) / p ^ 2 ≤ 1 / 17 ^ 2 := by
    intro p hpRest
    have hpPrime : Nat.Prime p :=
      hprime p (Finset.mem_of_mem_erase
        (Finset.mem_of_mem_erase hpRest))
    have hpLarge : 7 < p :=
      hlarge p (Finset.mem_of_mem_erase
        (Finset.mem_of_mem_erase hpRest))
    have hpNotThirteen : p ≠ 13 := (Finset.mem_erase.mp hpRest).1
    have hpNotEleven : p ≠ 11 :=
      (Finset.mem_erase.mp (Finset.mem_erase.mp hpRest).2).1
    have hpSeventeen :=
      prime_ge_seventeen_of_seven_lt_ne_eleven_ne_thirteen
        hpPrime hpLarge hpNotEleven hpNotThirteen
    have hpowNat : 17 ^ 2 ≤ p ^ 2 :=
      Nat.pow_le_pow_left hpSeventeen 2
    have hpowQ : (17 : ℚ) ^ 2 ≤ (p : ℚ) ^ 2 := by
      exact_mod_cast hpowNat
    exact div_le_div_of_nonneg_left (by norm_num)
      (by norm_num) hpowQ
  have hrestSum : (∑ p ∈ rest, (1 : ℚ) / p ^ 2) ≤
      (rest.card : ℚ) / 17 ^ 2 := by
    calc
      (∑ p ∈ rest, (1 : ℚ) / p ^ 2) ≤
          ∑ _p ∈ rest, (1 : ℚ) / 17 ^ 2 :=
        Finset.sum_le_sum hrestTerm
      _ = (rest.card : ℚ) / 17 ^ 2 := by
        simp
        rw [div_eq_mul_inv]
  by_cases hEleven : 11 ∈ primes
  · have hsumEleven := Finset.add_sum_erase primes
      (fun p => (1 : ℚ) / p ^ 2) hEleven
    by_cases hThirteen : 13 ∈ primes
    · have hThirteenErase : 13 ∈ primes.erase 11 :=
        Finset.mem_erase.mpr ⟨by norm_num, hThirteen⟩
      have hsumThirteen := Finset.add_sum_erase (primes.erase 11)
        (fun p => (1 : ℚ) / p ^ 2) hThirteenErase
      have hrestCard : rest.card ≤ 1 := by
        have hcardEleven := Finset.card_erase_of_mem hEleven
        have hcardThirteen := Finset.card_erase_of_mem hThirteenErase
        dsimp [rest]
        omega
      have hrestNumeric : (∑ p ∈ rest, (1 : ℚ) / p ^ 2) ≤
          1 / 17 ^ 2 := hrestSum.trans (by
        have hcast : (rest.card : ℚ) ≤ 1 := by exact_mod_cast hrestCard
        gcongr)
      calc
        (∑ p ∈ primes, (1 : ℚ) / p ^ 2) =
            1 / 11 ^ 2 + 1 / 13 ^ 2 +
              ∑ p ∈ rest, (1 : ℚ) / p ^ 2 := by
          rw [← hsumEleven, ← hsumThirteen]
          dsimp [rest]
          norm_num
          ring
        _ ≤ 1 / 11 ^ 2 + 1 / 13 ^ 2 + 1 / 17 ^ 2 := by
          linarith
        _ = globalMixedThreePivotCommonTail51Envelope := by
          rfl
    · have hThirteenErase : 13 ∉ primes.erase 11 := by
        simp [hThirteen]
      have hrestEq : rest = primes.erase 11 := by
        simp [rest, hThirteenErase]
      have hrestCard : rest.card ≤ 2 := by
        have hcardEleven := Finset.card_erase_of_mem hEleven
        rw [hrestEq]
        omega
      have hrestNumeric : (∑ p ∈ rest, (1 : ℚ) / p ^ 2) ≤
          2 / 17 ^ 2 := hrestSum.trans (by
        have hcast : (rest.card : ℚ) ≤ 2 := by exact_mod_cast hrestCard
        gcongr)
      calc
        (∑ p ∈ primes, (1 : ℚ) / p ^ 2) =
            1 / 11 ^ 2 + ∑ p ∈ rest, (1 : ℚ) / p ^ 2 := by
          rw [← hsumEleven, hrestEq]
          norm_num
        _ ≤ 1 / 11 ^ 2 + 2 / 17 ^ 2 := by linarith
        _ ≤ globalMixedThreePivotCommonTail51Envelope := by
          norm_num [globalMixedThreePivotCommonTail51Envelope]
  · have hElevenErase : primes.erase 11 = primes :=
      Finset.erase_eq_self.mpr hEleven
    by_cases hThirteen : 13 ∈ primes
    · have hsumThirteen := Finset.add_sum_erase primes
        (fun p => (1 : ℚ) / p ^ 2) hThirteen
      have hrestEq : rest = primes.erase 13 := by
        simp [rest, hElevenErase]
      have hrestCard : rest.card ≤ 2 := by
        have hcardThirteen := Finset.card_erase_of_mem hThirteen
        rw [hrestEq]
        omega
      have hrestNumeric : (∑ p ∈ rest, (1 : ℚ) / p ^ 2) ≤
          2 / 17 ^ 2 := hrestSum.trans (by
        have hcast : (rest.card : ℚ) ≤ 2 := by exact_mod_cast hrestCard
        gcongr)
      calc
        (∑ p ∈ primes, (1 : ℚ) / p ^ 2) =
            1 / 13 ^ 2 + ∑ p ∈ rest, (1 : ℚ) / p ^ 2 := by
          rw [← hsumThirteen, hrestEq]
          norm_num
        _ ≤ 1 / 13 ^ 2 + 2 / 17 ^ 2 := by linarith
        _ ≤ globalMixedThreePivotCommonTail51Envelope := by
          norm_num [globalMixedThreePivotCommonTail51Envelope]
    · have hrestEq : rest = primes := by
        simp [rest, hEleven, hThirteen]
      have hrestNumeric : (∑ p ∈ rest, (1 : ℚ) / p ^ 2) ≤
          3 / 17 ^ 2 := hrestSum.trans (by
        have hcast : (rest.card : ℚ) ≤ 3 := by
          rw [hrestEq]
          exact_mod_cast hcard
        gcongr)
      calc
        (∑ p ∈ primes, (1 : ℚ) / p ^ 2) =
            ∑ p ∈ rest, (1 : ℚ) / p ^ 2 := by rw [hrestEq]
        _ ≤ 3 / 17 ^ 2 := hrestNumeric
        _ ≤ globalMixedThreePivotCommonTail51Envelope := by
          norm_num [globalMixedThreePivotCommonTail51Envelope]

/-- Complete common-prime payment: the actual common tail set is bounded by
the deduplicated reciprocal-square envelope plus two progression endpoints
for each of at most three active primes. -/
theorem globalMixedThreePivotCommonTailPoints_ratio_le
    {N : ℕ} {pivots : Finset ℕ}
    (hN : 0 < N) (hcard : pivots.card = 3)
    (hspan : ∀ x ∈ pivots, ∀ y ∈ pivots,
      x < y → y - x < 2627) :
    ((globalMixedThreePivotCommonTailPoints N pivots).card : ℚ) / N ≤
      2 / 25 * globalMixedThreePivotCommonTail51Envelope + 6 / N := by
  classical
  let active := globalMixedThreePivotActiveCommonPrimes N pivots
  let cover := active.biUnion fun p =>
    globalMixedThreePivotCommonPrimePoints N pivots p
  have hsubset : globalMixedThreePivotCommonTailPoints N pivots ⊆ cover := by
    intro point hpoint
    have hparts := Finset.mem_filter.mp hpoint
    obtain ⟨p, hpPrime, hpLarge, hpUpper, hpThreshold⟩ := hparts.2
    have hpPoint : point ∈
        globalMixedThreePivotCommonPrimePoints N pivots p :=
      Finset.mem_filter.mpr ⟨hparts.1, hpThreshold⟩
    have hpActive : p ∈ active :=
      mem_globalMixedThreePivotActiveCommonPrimes.mpr
        ⟨hpPrime, hpLarge, hpUpper, ⟨point, hpPoint⟩⟩
    exact Finset.mem_biUnion.mpr ⟨p, hpActive, hpPoint⟩
  have hcoverCard :
      (globalMixedThreePivotCommonTailPoints N pivots).card ≤
        ∑ p ∈ active,
          (globalMixedThreePivotCommonPrimePoints N pivots p).card :=
    (Finset.card_le_card hsubset).trans Finset.card_biUnion_le
  have hcoverQ :
      ((globalMixedThreePivotCommonTailPoints N pivots).card : ℚ) ≤
        ∑ p ∈ active,
          ((globalMixedThreePivotCommonPrimePoints N pivots p).card : ℚ) := by
    exact_mod_cast hcoverCard
  have hNq : (0 : ℚ) < N := by exact_mod_cast hN
  have hprime : ∀ p ∈ active, Nat.Prime p := by
    intro p hp
    exact (mem_globalMixedThreePivotActiveCommonPrimes.mp hp).1
  have hlarge : ∀ p ∈ active, 7 < p := by
    intro p hp
    exact (mem_globalMixedThreePivotActiveCommonPrimes.mp hp).2.1
  have hactiveCard : active.card ≤ 3 :=
    globalMixedThreePivotActiveCommonPrimes_card_le_three hcard hspan
  have hreciprocal :
      (∑ p ∈ active, (1 : ℚ) / p ^ 2) ≤
        globalMixedThreePivotCommonTail51Envelope :=
    three_large_primes_reciprocalSquare_sum_le
      active hprime hlarge hactiveCard
  have hterm : ∀ p ∈ active,
      ((globalMixedThreePivotCommonPrimePoints N pivots p).card : ℚ) / N ≤
        2 / (25 * p ^ 2 : ℕ) + 2 / N := by
    intro p hp
    exact globalMixedThreePivotCommonPrimePoints_ratio_le
      hN hcard (hprime p hp) (hlarge p hp)
  have hsumIdentity :
      (∑ p ∈ active, (2 / (25 * p ^ 2 : ℕ) + 2 / N : ℚ)) =
        2 / 25 * (∑ p ∈ active, (1 : ℚ) / p ^ 2) +
          2 * active.card / N := by
    rw [Finset.sum_add_distrib]
    have hfirst :
        (∑ p ∈ active, (2 / (25 * p ^ 2 : ℕ) : ℚ)) =
          2 / 25 * (∑ p ∈ active, (1 : ℚ) / p ^ 2) := by
      calc
        (∑ p ∈ active, (2 / (25 * p ^ 2 : ℕ) : ℚ)) =
            ∑ p ∈ active, (2 / 25 : ℚ) * (1 / p ^ 2 : ℚ) := by
          apply Finset.sum_congr rfl
          intro p _hp
          norm_num only [Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat]
          ring
        _ = 2 / 25 * (∑ p ∈ active, (1 : ℚ) / p ^ 2) := by
          rw [Finset.mul_sum]
    rw [hfirst]
    simp
    ring
  have hcardQ : (active.card : ℚ) ≤ 3 := by
    exact_mod_cast hactiveCard
  have hendpoint : 2 * (active.card : ℚ) / N ≤ 6 / N := by
    apply div_le_div_of_nonneg_right _ hNq.le
    linarith
  calc
    ((globalMixedThreePivotCommonTailPoints N pivots).card : ℚ) / N ≤
        (∑ p ∈ active,
          ((globalMixedThreePivotCommonPrimePoints N pivots p).card : ℚ)) /
            N := div_le_div_of_nonneg_right hcoverQ hNq.le
    _ = ∑ p ∈ active,
        ((globalMixedThreePivotCommonPrimePoints N pivots p).card : ℚ) / N := by
      rw [Finset.sum_div]
    _ ≤ ∑ p ∈ active,
        (2 / (25 * p ^ 2 : ℕ) + 2 / N : ℚ) :=
      Finset.sum_le_sum hterm
    _ = 2 / 25 * (∑ p ∈ active, (1 : ℚ) / p ^ 2) +
          2 * active.card / N := hsumIdentity
    _ ≤ 2 / 25 * globalMixedThreePivotCommonTail51Envelope + 6 / N := by
      have hmain :
          2 / 25 * (∑ p ∈ active, (1 : ℚ) / p ^ 2) ≤
            2 / 25 * globalMixedThreePivotCommonTail51Envelope := by
        exact mul_le_mul_of_nonneg_left hreciprocal (by norm_num)
      linarith

#print axioms globalMixedThreePivotActiveCommonPrimes_card_le_three
#print axioms three_large_primes_reciprocalSquare_sum_le
#print axioms globalMixedThreePivotCommonTailPoints_ratio_le

end Erdos848
