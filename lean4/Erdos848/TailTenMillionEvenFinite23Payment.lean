import Erdos848.GeneratedTailTenMillionEvenFinite23.Certificate
import Erdos848.TailTenMillionEvenFinite23PairGap
import Erdos848.TailR263EvenOneFinite23ActualCount
import Erdos848.TailR263FourPivotDefs

namespace Erdos848

/-!
# Literal cutoff-23 finite payment on the ten-million block

The generated enumeration is used only as an untrusted source of a finite
Boolean certificate.  Its premise is supplied here from an actual close pivot
pair, and its arithmetic conclusion is converted to the exact rational budget
used by the ten-million terminal rows.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

theorem tenMillionFinite23Density_nonneg_and_payment_le
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern)
    (hp3 : p3 ≠ .allEqual)
    (hpair :
      4 * tenMillionEvenFinite23PairProduct 0
          p3 p7 p11 p13 p17 p19 p23 ^ 2 < 1_000_001 ∨
      4 * tenMillionEvenFinite23PairProduct 1
          p3 p7 p11 p13 p17 p19 p23 ^ 2 < 1_000_001 ∨
      4 * tenMillionEvenFinite23PairProduct 2
          p3 p7 p11 p13 p17 p19 p23 ^ 2 < 1_000_001) :
    0 <= e1FiniteAllThreeDensityRat p3 p7 p11 p13 p17 p19 p23 ∧
      e1FiniteAllThreeDensityRat p3 p7 p11 p13 p17 p19 p23 / 25 +
          (e1FiniteAllThreeDensityRat p3 p7 p11 p13 p17 p19 p23 +
            e1FiniteAllThreeEndpointRat
              p3 p7 p11 p13 p17 p19 p23) / 10_000_000 <=
        tenMillionFinitePayment
          tenMillionEvenFourDensity tenMillionEvenFourEndpoint := by
  have hp3Bool : p3 != .allEqual := by
    simpa using hp3
  have h := GeneratedTailTenMillionEvenFinite23.all
    p3 p7 p11 p13 p17 p19 p23 hp3Bool
  unfold TenMillionEvenFinite23CrossInequality at h
  have h := h hp3Bool hpair
  constructor
  · unfold e1FiniteAllThreeDensityRat
    apply div_nonneg
    · exact_mod_cast h.1
    · norm_num [e1FiniteFullModulus]
  · have hq :
        (10_000_000 : Rat) *
              (e1FiniteAllThreeNumerator
                p3 p7 p11 p13 p17 p19 p23 : Rat) +
            25 * (e1FiniteAllThreeNumerator
              p3 p7 p11 p13 p17 p19 p23 : Rat) +
            25 * e1FiniteFullModulus *
              e1FiniteAllThreeEndpoint
                p3 p7 p11 p13 p17 p19 p23 <=
          10_000_000 * 16_066_521_906_648 +
            25 * e1FiniteFullModulus * 607 := by
      exact_mod_cast h.2
    unfold e1FiniteAllThreeDensityRat e1FiniteAllThreeEndpointRat
      tenMillionFinitePayment tenMillionEvenFourDensity
      tenMillionEvenFourEndpoint tenMillionLower
    norm_num [e1FiniteFullModulus] at hq ⊢
    linarith

private theorem tenMillionFinite23Prefix_ratio_le
    {N count : Nat} {density endpoint : Rat}
    (hLower : 10_000_000 <= N)
    (hdensity : 0 <= density)
    (hendpoint : 0 <= endpoint)
    (hcount : (count : Rat) <=
      ((N / 25 + 1 : Nat) : Rat) * density + endpoint) :
    (count : Rat) / N <=
      density / 25 + (density + endpoint) / 10_000_000 := by
  have hNposNat : 0 < N := by omega
  have hNpos : (0 : Rat) < N := by exact_mod_cast hNposNat
  have hdiv : (((N / 25 : Nat) : Rat)) <= (N : Rat) / 25 :=
    Nat.cast_div_le
  have hlength :
      (((N / 25 + 1 : Nat) : Rat)) <= (N : Rat) / 25 + 1 := by
    norm_num at hdiv ⊢
    linarith
  have hraw :
      (count : Rat) <= ((N : Rat) / 25 + 1) * density + endpoint :=
    hcount.trans (add_le_add
      (mul_le_mul_of_nonneg_right hlength hdensity) le_rfl)
  have hsum : 0 <= density + endpoint :=
    add_nonneg hdensity hendpoint
  have hLowerQ : (10_000_000 : Rat) <= N := by
    exact_mod_cast hLower
  have hmonotone :
      (density + endpoint) / (N : Rat) <=
        (density + endpoint) / 10_000_000 :=
    div_le_div_of_nonneg_left hsum (by norm_num) hLowerQ
  calc
    (count : Rat) / N <=
        (((N : Rat) / 25 + 1) * density + endpoint) / N :=
      div_le_div_of_nonneg_right hraw hNpos.le
    _ = density / 25 + (density + endpoint) / N := by
      field_simp [ne_of_gt hNpos]
      ring
    _ <= density / 25 + (density + endpoint) / 10_000_000 := by
      gcongr

theorem tenMillionFinite23ActualAllThreeResidue_ratio_le
    {N baseResidue : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 10_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    (pair : Fin 3)
    (hthree :
      ¬ ∃ residue : Fin (e1FiniteModulus 0), ∀ i : Fin 3,
        globalMixedThreePivotAt pivots hcard i %
          e1FiniteModulus 0 = residue.val)
    (hne :
      globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairLeft pair) ≠
        globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairRight pair))
    (hgap :
      Nat.dist
        (globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairLeft pair))
        (globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairRight pair)) < 1_000_001) :
    ((e1FiniteActualAllThreeResidue
        N pivots baseResidue).card : Rat) / N <=
      tenMillionFinitePayment
        tenMillionEvenFourDensity tenMillionEvenFourEndpoint := by
  obtain ⟨roots, hextends, hp3, hfaithful⟩ :=
    tenMillionFinite23Actual_exists_pair_root_cover
      (baseResidue := baseResidue) pair hthree
  let p3 := e1FiniteRootPatternAt roots 0
  let p7 := e1FiniteRootPatternAt roots 1
  let p11 := e1FiniteRootPatternAt roots 2
  let p13 := e1FiniteRootPatternAt roots 3
  let p17 := e1FiniteRootPatternAt roots 4
  let p19 := e1FiniteRootPatternAt roots 5
  let p23 := e1FiniteRootPatternAt roots 6
  have hclose := tenMillionFinite23PairProduct_gap_of_actual_close
    hvaluation hpivots roots pair hfaithful hne hgap
  have hcloseAny :
      4 * tenMillionEvenFinite23PairProduct 0
          p3 p7 p11 p13 p17 p19 p23 ^ 2 < 1_000_001 ∨
      4 * tenMillionEvenFinite23PairProduct 1
          p3 p7 p11 p13 p17 p19 p23 ^ 2 < 1_000_001 ∨
      4 * tenMillionEvenFinite23PairProduct 2
          p3 p7 p11 p13 p17 p19 p23 ^ 2 < 1_000_001 := by
    fin_cases pair
    · exact Or.inl (by
        simpa [p3, p7, p11, p13, p17, p19, p23] using hclose)
    · exact Or.inr (Or.inl (by
        simpa [p3, p7, p11, p13, p17, p19, p23] using hclose))
    · exact Or.inr (Or.inr (by
        simpa [p3, p7, p11, p13, p17, p19, p23] using hclose))
  have hcert := tenMillionFinite23Density_nonneg_and_payment_le
    p3 p7 p11 p13 p17 p19 p23
      (by simpa [p3] using hp3) hcloseAny
  have hcount := e1FiniteActualAllThreeResidue_card_rat_le
    hBout hvaluation hpivots hcard hextends
  have hprefix := tenMillionFinite23Prefix_ratio_le
    hLower hcert.1 (by
      unfold e1FiniteAllThreeEndpointRat
      positivity) hcount
  exact hprefix.trans hcert.2

theorem tenMillionFinite23HallBaseTripleIntersection_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 10_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    (pair : Fin 3)
    (hthree :
      ¬ ∃ residue : Fin (e1FiniteModulus 0), ∀ i : Fin 3,
        globalMixedThreePivotAt pivots hcard i %
          e1FiniteModulus 0 = residue.val)
    (hne :
      globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairLeft pair) ≠
        globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairRight pair))
    (hgap :
      Nat.dist
        (globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairLeft pair))
        (globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairRight pair)) < 1_000_001) :
    ((eventIntersection (hallBasePart N B)
        (finiteSquarePrimeEvent 23) pivots).card : Rat) / N <=
      2 * tenMillionFinitePayment
        tenMillionEvenFourDensity tenMillionEvenFourEndpoint := by
  classical
  let source := eventIntersection (hallBasePart N B)
    (finiteSquarePrimeEvent 23) pivots
  let seven := e1FiniteActualAllThreeResidue N pivots 7
  let eighteen := e1FiniteActualAllThreeResidue N pivots 18
  have hsubset : source ⊆ seven ∪ eighteen := by
    intro point hpoint
    have hparts := Finset.mem_filter.mp hpoint
    have hbase := (Finset.mem_inter.mp hparts.1).2
    have hfinite :
        pivots.filter (fun pivot =>
          finiteSquarePrimeEvent 23 pivot point) = pivots :=
      Finset.filter_eq_self.mpr fun pivot hpivot =>
        hparts.2 pivot hpivot
    have hthreeCount :
        3 <= (pivots.filter fun pivot =>
          finiteSquarePrimeEvent 23 pivot point).card := by
      rw [hfinite, hcard]
    rcases Finset.mem_union.mp hbase with hseven | heightteen
    · apply Finset.mem_union_left
      apply Finset.mem_filter.mpr
      exact ⟨hbase, (Finset.mem_filter.mp hseven).2, hthreeCount⟩
    · apply Finset.mem_union_right
      apply Finset.mem_filter.mpr
      exact ⟨hbase, (Finset.mem_filter.mp heightteen).2, hthreeCount⟩
  have hcardNat : source.card <= seven.card + eighteen.card :=
    (Finset.card_le_card hsubset).trans
      (Finset.card_union_le seven eighteen)
  have hNposNat : 0 < N := by omega
  have hNpos : (0 : Rat) < N := by exact_mod_cast hNposNat
  have hsource :
      (source.card : Rat) / N <=
        (seven.card : Rat) / N + (eighteen.card : Rat) / N := by
    have hcardRat :
        (source.card : Rat) <=
          (seven.card : Rat) + (eighteen.card : Rat) := by
      exact_mod_cast hcardNat
    calc
      (source.card : Rat) / N <=
          ((seven.card : Rat) + (eighteen.card : Rat)) / N :=
        div_le_div_of_nonneg_right hcardRat hNpos.le
      _ = (seven.card : Rat) / N + (eighteen.card : Rat) / N := by
        rw [add_div]
  have hseven := tenMillionFinite23ActualAllThreeResidue_ratio_le
    (baseResidue := 7) hLower hBout hvaluation hpivots hcard
      pair hthree hne hgap
  have heightteen := tenMillionFinite23ActualAllThreeResidue_ratio_le
    (baseResidue := 18) hLower hBout hvaluation hpivots hcard
      pair hthree hne hgap
  dsimp [source, seven, eighteen] at hsource hseven heightteen ⊢
  linarith

private theorem tenMillionFinite23_exists_indexed_pair
    {pivots : Finset Nat} {hcard : pivots.card = 3}
    {left right : Nat}
    (hleft : left ∈ pivots) (hright : right ∈ pivots)
    (hne : left ≠ right)
    (hgap : Nat.dist left right < 1_000_001) :
    ∃ pair : Fin 3,
      globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairLeft pair) ≠
        globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairRight pair) ∧
      Nat.dist
        (globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairLeft pair))
        (globalMixedThreePivotAt pivots hcard
          (tenMillionFinite23PairRight pair)) < 1_000_001 := by
  obtain ⟨i, hi⟩ :=
    globalMixedThreePivotAt_surjective_on pivots hcard hleft
  obtain ⟨j, hj⟩ :=
    globalMixedThreePivotAt_surjective_on pivots hcard hright
  have hij :
      globalMixedThreePivotAt pivots hcard i ≠
        globalMixedThreePivotAt pivots hcard j := by
    simpa [hi, hj] using hne
  have hgapij :
      Nat.dist
        (globalMixedThreePivotAt pivots hcard i)
        (globalMixedThreePivotAt pivots hcard j) < 1_000_001 := by
    simpa [hi, hj] using hgap
  have hgapji :
      Nat.dist
        (globalMixedThreePivotAt pivots hcard j)
        (globalMixedThreePivotAt pivots hcard i) < 1_000_001 := by
    rw [Nat.dist_comm]
    exact hgapij
  fin_cases i <;> fin_cases j
  · exact (hij rfl).elim
  · exact ⟨0, by
      simpa [tenMillionFinite23PairLeft,
        tenMillionFinite23PairRight] using hij, by
      simpa [tenMillionFinite23PairLeft,
        tenMillionFinite23PairRight] using hgapij⟩
  · exact ⟨1, by
      simpa [tenMillionFinite23PairLeft,
        tenMillionFinite23PairRight] using hij, by
      simpa [tenMillionFinite23PairLeft,
        tenMillionFinite23PairRight] using hgapij⟩
  · exact ⟨0, by
      simpa [tenMillionFinite23PairLeft,
        tenMillionFinite23PairRight] using hij.symm, by
      simpa [tenMillionFinite23PairLeft,
        tenMillionFinite23PairRight] using hgapji⟩
  · exact (hij rfl).elim
  · exact ⟨2, by
      simpa [tenMillionFinite23PairLeft,
        tenMillionFinite23PairRight] using hij, by
      simpa [tenMillionFinite23PairLeft,
        tenMillionFinite23PairRight] using hgapij⟩
  · exact ⟨1, by
      simpa [tenMillionFinite23PairLeft,
        tenMillionFinite23PairRight] using hij.symm, by
      simpa [tenMillionFinite23PairLeft,
        tenMillionFinite23PairRight] using hgapji⟩
  · exact ⟨2, by
      simpa [tenMillionFinite23PairLeft,
        tenMillionFinite23PairRight] using hij.symm, by
      simpa [tenMillionFinite23PairLeft,
        tenMillionFinite23PairRight] using hgapji⟩
  · exact (hij rfl).elim

theorem tenMillionEvenFourPivotFinite_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 10_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hpivotsCard : pivots.card = 4)
    (hnoncommon :
      ∀ triple, triple ⊆ pivots → ∀ hcard : triple.card = 3,
        ¬ ∃ residue : Fin (e1FiniteModulus 0), ∀ i : Fin 3,
          globalMixedThreePivotAt triple hcard i %
            e1FiniteModulus 0 = residue.val)
    (hclose :
      ∀ triple, triple ⊆ pivots → triple.card = 3 →
        ∃ left ∈ triple, ∃ right ∈ triple,
          left ≠ right ∧ Nat.dist left right < 1_000_001) :
    fiveMillionR263BaseFiniteTriplePayment N B pivots 23 / N <=
      tenMillionFourPayment
        tenMillionEvenFourDensity tenMillionEvenFourEndpoint := by
  classical
  let triples := pivots.powersetCard 3
  have hper : ∀ triple ∈ triples,
      ((eventIntersection (hallBasePart N B)
        (finiteSquarePrimeEvent 23) triple).card : Rat) / N <=
          2 * tenMillionFinitePayment
            tenMillionEvenFourDensity tenMillionEvenFourEndpoint := by
    intro triple htriple
    have hparts := Finset.mem_powersetCard.mp htriple
    obtain ⟨left, hleft, right, hright, hne, hgap⟩ :=
      hclose triple hparts.1 hparts.2
    obtain ⟨pair, hpairNe, hpairGap⟩ :=
      tenMillionFinite23_exists_indexed_pair
        (hcard := hparts.2) hleft hright hne hgap
    exact tenMillionFinite23HallBaseTripleIntersection_ratio_le
      hLower hBout hvaluation (hparts.1.trans hpivots) hparts.2
        pair (hnoncommon triple hparts.1 hparts.2) hpairNe hpairGap
  have hsum := Finset.sum_le_sum fun triple htriple =>
    hper triple htriple
  have hcount : triples.card = 4 := by
    simp [triples, Finset.card_powersetCard, hpivotsCard]
  unfold fiveMillionR263BaseFiniteTriplePayment
  calc
    ((1 / 2 : Rat) *
        (∑ triple ∈ pivots.powersetCard 3,
          ((eventIntersection (hallBasePart N B)
            (finiteSquarePrimeEvent 23) triple).card : Rat))) / N =
        (1 / 2 : Rat) *
          (∑ triple ∈ triples,
            ((eventIntersection (hallBasePart N B)
              (finiteSquarePrimeEvent 23) triple).card : Rat) / N) := by
      simp only [triples, div_eq_mul_inv]
      rw [← Finset.sum_mul]
      ring
    _ <= (1 / 2 : Rat) *
        (∑ _triple ∈ triples,
          2 * tenMillionFinitePayment
            tenMillionEvenFourDensity tenMillionEvenFourEndpoint) := by
      gcongr
    _ = 4 * tenMillionFinitePayment
        tenMillionEvenFourDensity tenMillionEvenFourEndpoint := by
      simp [hcount]
      ring
    _ = tenMillionFourPayment
        tenMillionEvenFourDensity tenMillionEvenFourEndpoint := by
      unfold tenMillionFinitePayment tenMillionFourPayment
      ring

#print axioms tenMillionFinite23Density_nonneg_and_payment_le
#print axioms tenMillionFinite23ActualAllThreeResidue_ratio_le
#print axioms tenMillionFinite23HallBaseTripleIntersection_ratio_le
#print axioms tenMillionEvenFourPivotFinite_ratio_le

end Erdos848
