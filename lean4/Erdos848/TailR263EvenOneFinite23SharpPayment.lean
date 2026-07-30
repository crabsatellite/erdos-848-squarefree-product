import Erdos848.TailR263EvenOneFinite23ActualCount
import Erdos848.TailR263EvenOneFinite23SharpCertificateABI
import Erdos848.TailTenMillionEvenFinite23PairGap

namespace Erdos848

/-!
# Rational and actual-pivot consumers of the sharp cutoff-23 certificate

All non-finite work is proved here: the actual-pivot feasibility premise,
the endpoint monotonicity at five million, and the conversion from literal
root-event counts to the sharp rational payments.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

def e1FiniteSharpFourTargetRat (cellType : E1FiniteCellType) : Rat :=
  e1FiniteSharpFourTargetMillion cellType / 1_000_000

theorem e1FiniteSharpFourDensity_nonneg_and_payment_le
    [E1Finite23SharpCertificate]
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern)
    (hp3 : p3 ≠ .allEqual)
    (hfeasible : e1FinitePatternAllPairsFeasibleBelowTenMillion
      p3 p7 p11 p13 p17 p19 p23) :
    0 ≤ e1FiniteAllThreeDensityRat p3 p7 p11 p13 p17 p19 p23 ∧
      e1FiniteAllThreeDensityRat p3 p7 p11 p13 p17 p19 p23 / 25 +
        (e1FiniteAllThreeDensityRat p3 p7 p11 p13 p17 p19 p23 +
          e1FiniteAllThreeEndpointRat p3 p7 p11 p13 p17 p19 p23) /
            5_000_000 ≤
        e1FiniteSharpFourTargetRat (e1FiniteCellTypeOf p7 p11) := by
  have h := e1FiniteSharpFour_all
    p3 p7 p11 p13 p17 p19 p23 hp3 hfeasible
  unfold e1FiniteSharpFourPaymentCrossInequality at h
  dsimp only at h
  constructor
  · unfold e1FiniteAllThreeDensityRat
    apply div_nonneg
    · exact_mod_cast h.1
    · norm_num [e1FiniteFullModulus]
  · have hq :
        (1_000_000 : Rat) *
            ((e1FiniteAllThreeNumerator
                p3 p7 p11 p13 p17 p19 p23 : Rat) * 5_000_000 +
              25 * ((e1FiniteAllThreeNumerator
                  p3 p7 p11 p13 p17 p19 p23 : Rat) +
                e1FiniteAllThreeEndpoint
                    p3 p7 p11 p13 p17 p19 p23 *
                  e1FiniteFullModulus)) ≤
          e1FiniteSharpFourTargetMillion (e1FiniteCellTypeOf p7 p11) *
            e1FiniteFullModulus * 25 * 5_000_000 := by
      exact_mod_cast h.2
    unfold e1FiniteAllThreeDensityRat e1FiniteAllThreeEndpointRat
      e1FiniteSharpFourTargetRat
    norm_num [e1FiniteFullModulus] at hq ⊢
    linarith

private theorem e1FiniteSharpPrefix_ratio_le
    {N count : Nat} {density endpoint : Rat}
    (hLower : 5_000_000 ≤ N)
    (hdensity : 0 ≤ density)
    (hendpoint : 0 ≤ endpoint)
    (hcount : (count : Rat) ≤
      ((N / 25 + 1 : Nat) : Rat) * density + endpoint) :
    (count : Rat) / N ≤
      density / 25 + (density + endpoint) / 5_000_000 := by
  have hNposNat : 0 < N := by omega
  have hNpos : (0 : Rat) < N := by exact_mod_cast hNposNat
  have hdiv : (((N / 25 : Nat) : Rat)) ≤ (N : Rat) / 25 :=
    Nat.cast_div_le
  have hlength :
      (((N / 25 + 1 : Nat) : Rat)) ≤ (N : Rat) / 25 + 1 := by
    norm_num at hdiv ⊢
    linarith
  have hraw :
      (count : Rat) ≤ ((N : Rat) / 25 + 1) * density + endpoint :=
    hcount.trans (add_le_add
      (mul_le_mul_of_nonneg_right hlength hdensity) le_rfl)
  have hsum : 0 ≤ density + endpoint :=
    add_nonneg hdensity hendpoint
  have hLowerQ : (5_000_000 : Rat) ≤ N := by exact_mod_cast hLower
  have hmonotone :
      (density + endpoint) / (N : Rat) ≤
        (density + endpoint) / 5_000_000 :=
    div_le_div_of_nonneg_left hsum (by norm_num) hLowerQ
  calc
    (count : Rat) / N ≤
        (((N : Rat) / 25 + 1) * density + endpoint) / N :=
      div_le_div_of_nonneg_right hraw hNpos.le
    _ = density / 25 + (density + endpoint) / N := by
      field_simp [ne_of_gt hNpos]
      ring
    _ ≤ density / 25 + (density + endpoint) / 5_000_000 := by
      gcongr

private theorem e1FiniteSharpPayment_add
    (a b c d : Rat) :
    (a / 25 + (a + c) / 5_000_000) +
        (b / 25 + (b + d) / 5_000_000) =
      (a + b) / 25 + (a + b + c + d) / 5_000_000 := by
  ring

private theorem e1FiniteSharpCombinePrefix
    {x y a b c d target : Rat}
    (hx : x ≤ a / 25 + (a + c) / 5_000_000)
    (hy : y ≤ b / 25 + (b + d) / 5_000_000)
    (htarget :
      (a + b) / 25 + (a + b + c + d) / 5_000_000 ≤ target) :
    x + y ≤ target := by
  calc
    x + y ≤
        (a / 25 + (a + c) / 5_000_000) +
          (b / 25 + (b + d) / 5_000_000) :=
      add_le_add hx hy
    _ = (a + b) / 25 + (a + b + c + d) / 5_000_000 :=
      e1FiniteSharpPayment_add a b c d
    _ ≤ target := htarget

theorem e1FinitePatternFeasibleBelowTenMillion_of_actual_pair
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    {hcard : pivots.card = 3}
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (roots : E1FinitePivotRootFamily) (pair : Fin 3)
    (hmodFaithful : ∀ index,
      roots (tenMillionFinite23PairLeft pair) index =
          roots (tenMillionFinite23PairRight pair) index →
        globalMixedThreePivotAt pivots hcard
              (tenMillionFinite23PairLeft pair) %
            e1FiniteModulus index =
          globalMixedThreePivotAt pivots hcard
              (tenMillionFinite23PairRight pair) %
            e1FiniteModulus index) :
    e1FinitePatternPairFeasibleBelowTenMillion pair
      (e1FiniteRootPatternAt roots 0)
      (e1FiniteRootPatternAt roots 1)
      (e1FiniteRootPatternAt roots 2)
      (e1FiniteRootPatternAt roots 3)
      (e1FiniteRootPatternAt roots 4)
      (e1FiniteRootPatternAt roots 5)
      (e1FiniteRootPatternAt roots 6) := by
  let left := globalMixedThreePivotAt pivots hcard
    (tenMillionFinite23PairLeft pair)
  let right := globalMixedThreePivotAt pivots hcard
    (tenMillionFinite23PairRight pair)
  have hne : left ≠ right := by
    dsimp [left, right]
    intro heq
    exact tenMillionFinite23PairLeft_ne_right pair
      (globalMixedThreePivotAt_injective pivots hcard heq)
  have hleftPart := hpivots
    (globalMixedThreePivotAt_mem pivots hcard
      (tenMillionFinite23PairLeft pair))
  have hrightPart := hpivots
    (globalMixedThreePivotAt_mem pivots hcard
      (tenMillionFinite23PairRight pair))
  have hleftCompletion : left ∈ hallCompletion N B := by
    exact (Finset.mem_sdiff.mp
      (fiveMillionValuationPart_subset_residual
        N B valuation hleftPart)).1
  have hrightCompletion : right ∈ hallCompletion N B := by
    exact (Finset.mem_sdiff.mp
      (fiveMillionValuationPart_subset_residual
        N B valuation hrightPart)).1
  have hleftBounds := Finset.mem_Icc.mp
    (hallCompletion_subset_Icc hBout hleftCompletion)
  have hrightBounds := Finset.mem_Icc.mp
    (hallCompletion_subset_Icc hBout hrightCompletion)
  have hdist : Nat.dist left right < 10_000_000 := by
    rcases le_total left right with hlr | hrl
    · rw [Nat.dist_eq_sub_of_le hlr]
      omega
    · rw [Nat.dist_eq_sub_of_le_right hrl]
      omega
  have hclose := e1FinitePairProduct_gap_of_actual
    hvaluation hpivots roots pair hmodFaithful hne hdist
  simpa [e1FinitePatternPairFeasibleBelowTenMillion,
    tenMillionEvenFinite23PairProduct] using hclose

theorem e1FiniteSharpActualAllThreeResidue_ratio_le
    [E1Finite23SharpCertificate]
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 5_000_000 ≤ N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    {baseResidue : Nat} {roots : E1FinitePivotRootFamily}
    (hextends : ∀ index i q,
      e1FiniteActualPartialRoots baseResidue pivots hcard index i =
        some q → roots i index = q)
    (hp3 : e1FiniteRootPatternAt roots 0 ≠ .allEqual)
    (hmodFaithful : ∀ pair index,
      roots (tenMillionFinite23PairLeft pair) index =
          roots (tenMillionFinite23PairRight pair) index →
        globalMixedThreePivotAt pivots hcard
              (tenMillionFinite23PairLeft pair) %
            e1FiniteModulus index =
          globalMixedThreePivotAt pivots hcard
              (tenMillionFinite23PairRight pair) %
            e1FiniteModulus index) :
    ((e1FiniteActualAllThreeResidue
        N pivots baseResidue).card : Rat) / N ≤
      e1FiniteSharpFourTargetRat
        (e1FiniteCellTypeOf
          (e1FiniteRootPatternAt roots 1)
          (e1FiniteRootPatternAt roots 2)) := by
  let p3 := e1FiniteRootPatternAt roots 0
  let p7 := e1FiniteRootPatternAt roots 1
  let p11 := e1FiniteRootPatternAt roots 2
  let p13 := e1FiniteRootPatternAt roots 3
  let p17 := e1FiniteRootPatternAt roots 4
  let p19 := e1FiniteRootPatternAt roots 5
  let p23 := e1FiniteRootPatternAt roots 6
  have hfeasible : e1FinitePatternAllPairsFeasibleBelowTenMillion
      p3 p7 p11 p13 p17 p19 p23 := by
    intro pair
    exact e1FinitePatternFeasibleBelowTenMillion_of_actual_pair
      hUpper hBout hvaluation hpivots roots pair (hmodFaithful pair)
  have hcert := e1FiniteSharpFourDensity_nonneg_and_payment_le
    p3 p7 p11 p13 p17 p19 p23 (by simpa [p3] using hp3)
      (by simpa [p3, p7, p11, p13, p17, p19, p23] using hfeasible)
  have hraw := e1FiniteActualAllThreeResidue_card_rat_le
    hBout hvaluation hpivots hcard hextends
  exact (e1FiniteSharpPrefix_ratio_le
    hLower hcert.1 (by
      unfold e1FiniteAllThreeEndpointRat
      positivity) hraw).trans hcert.2

end Erdos848
