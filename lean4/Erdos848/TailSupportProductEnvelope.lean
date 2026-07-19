import Erdos848.TailRootEnvelope

namespace Erdos848

/-!
# Product-indexed uniform tail envelopes

The five-million tail is not a scan over values of `N`.  For a fixed prime
support, its product supplies the first `N` at which that support can occur.
All reciprocal endpoint terms then decrease with `N`.  This file isolates
that monotonicity so generated support certificates can be checked only at
their genuine first endpoint and still yield a theorem for every larger `N`.
-/

/-- The part of `transformedRootRow` depending on a fixed support profile.
The prime-count contribution is kept separate because its numerator changes
at prime jumps. -/
def transformedSupportRow
    (N Y height survivors : ℕ) : ℚ :=
  (6 * height * survivors : ℕ) / (N : ℚ) +
    (12 * height : ℕ) / (25 * Y : ℚ) +
    (24 * height : ℕ) / (Y * N : ℚ)

theorem transformedRootRow_eq_prime_add_support
    (N Y primeDelta height survivors : ℕ) :
    transformedRootRow N Y primeDelta height survivors =
      (6 * primeDelta : ℕ) / (N : ℚ) +
        transformedSupportRow N Y height survivors := by
  simp only [transformedRootRow, transformedSupportRow]
  push_cast
  ring

/-- The changing prime-count numerator can be discharged by any uniform
normalized bound, independently of the support-profile monotonicity. -/
theorem transformedRootRow_le_of_prime_ratio
    {N Y primeDelta height survivors : ℕ} {primeRatio bound : ℚ}
    (hN : 0 < N)
    (hprime : (primeDelta : ℚ) / N ≤ primeRatio)
    (hsupport : transformedSupportRow N Y height survivors ≤
      bound - 6 * primeRatio) :
    transformedRootRow N Y primeDelta height survivors ≤ bound := by
  rw [transformedRootRow_eq_prime_add_support]
  have hscaled : (6 * primeDelta : ℕ) / (N : ℚ) ≤
      6 * primeRatio := by
    have hNQ : (N : ℚ) ≠ 0 := by exact_mod_cast hN.ne'
    push_cast
    field_simp at hprime ⊢
    linarith
  linarith

/-- Once the support profile is fixed, increasing both the ambient endpoint
and the large-prime split can only reduce its payment. -/
theorem transformedSupportRow_antitone
    {N₁ N₂ Y₁ Y₂ height survivors : ℕ}
    (hN₁ : 0 < N₁) (hY₁ : 0 < Y₁)
    (hN : N₁ ≤ N₂) (hY : Y₁ ≤ Y₂) :
    transformedSupportRow N₂ Y₂ height survivors ≤
      transformedSupportRow N₁ Y₁ height survivors := by
  have hN₂ : 0 < N₂ := lt_of_lt_of_le hN₁ hN
  have hY₂ : 0 < Y₂ := lt_of_lt_of_le hY₁ hY
  have hNQ : (0 : ℚ) < N₁ := by exact_mod_cast hN₁
  have hNQ₂ : (0 : ℚ) < N₂ := by exact_mod_cast hN₂
  have hYQ : (0 : ℚ) < Y₁ := by exact_mod_cast hY₁
  have hYQ₂ : (0 : ℚ) < Y₂ := by exact_mod_cast hY₂
  have hNcast : (N₁ : ℚ) ≤ N₂ := by exact_mod_cast hN
  have hYcast : (Y₁ : ℚ) ≤ Y₂ := by exact_mod_cast hY
  have hYN : (Y₁ * N₁ : ℚ) ≤ Y₂ * N₂ := by
    exact_mod_cast Nat.mul_le_mul hY hN
  have hYNpos : (0 : ℚ) < Y₁ * N₁ := mul_pos hYQ hNQ
  unfold transformedSupportRow
  have hfirst :
      (6 * height * survivors : ℕ) / (N₂ : ℚ) ≤
        (6 * height * survivors : ℕ) / (N₁ : ℚ) := by
    exact div_le_div_of_nonneg_left (by positivity) hNQ hNcast
  have hsecond :
      (12 * height : ℕ) / (25 * Y₂ : ℚ) ≤
        (12 * height : ℕ) / (25 * Y₁ : ℚ) := by
    apply div_le_div_of_nonneg_left (by positivity) (by positivity)
    exact mul_le_mul_of_nonneg_left hYcast (by norm_num)
  have hthird :
      (24 * height : ℕ) / (Y₂ * N₂ : ℚ) ≤
        (24 * height : ℕ) / (Y₁ * N₁ : ℚ) := by
    exact div_le_div_of_nonneg_left (by positivity) hYNpos hYN
  linarith

/-- First endpoint at which a support of the given product can occur, after
also enforcing the global five-million floor.  `(product + 1) / 2` is the
natural-number ceiling of `product / 2`. -/
def supportProductLowerEndpoint (floor product : ℕ) : ℕ :=
  max floor ((product + 1) / 2)

theorem supportProductLowerEndpoint_le
    {floor product N : ℕ}
    (hfloor : floor ≤ N) (hproduct : product ≤ 2 * N) :
    supportProductLowerEndpoint floor product ≤ N := by
  unfold supportProductLowerEndpoint
  apply max_le hfloor
  omega

theorem supportProductLowerEndpoint_pos
    {floor product : ℕ} (hfloor : 0 < floor) :
    0 < supportProductLowerEndpoint floor product := by
  exact lt_of_lt_of_le hfloor (Nat.le_max_left _ _)

/-- A support-row inequality checked at its product-forced first endpoint is
valid for every ambient `N` containing that support.  This is the central
no-range-scan bridge for the direct `N ≥ 5,000,000` tail. -/
theorem transformedSupportRow_le_of_product_endpoint
    {floor product N split height survivors : ℕ} {bound : ℚ}
    (hfloorPos : 0 < floor)
    (hfloor : floor ≤ N) (hproduct : product ≤ 2 * N)
    (hendpointSplit :
      0 < supportProductLowerEndpoint floor product / split)
    (hendpoint :
      transformedSupportRow
          (supportProductLowerEndpoint floor product)
          (supportProductLowerEndpoint floor product / split)
          height survivors ≤ bound) :
    transformedSupportRow N (N / split) height survivors ≤ bound := by
  have hLower := supportProductLowerEndpoint_le hfloor hproduct
  have hLowerPos := supportProductLowerEndpoint_pos
    (product := product) hfloorPos
  have hSplitMono :
      supportProductLowerEndpoint floor product / split ≤ N / split :=
    Nat.div_le_div_right hLower
  exact (transformedSupportRow_antitone hLowerPos hendpointSplit
    hLower hSplitMono).trans hendpoint

#print axioms transformedSupportRow_antitone
#print axioms transformedRootRow_le_of_prime_ratio
#print axioms supportProductLowerEndpoint_le
#print axioms transformedSupportRow_le_of_product_endpoint

end Erdos848
