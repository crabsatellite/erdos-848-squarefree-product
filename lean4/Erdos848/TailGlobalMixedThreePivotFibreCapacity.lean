import Erdos848.TailGlobalMixedThreePivotPellActual

namespace Erdos848

/-!
# Six-layer capacity of an actual determinant fibre

The Pell calculation is useful only after it is converted into a literal
finite-set bound.  This module performs that conversion without enumerating
any interval.  Six strict doublings cannot fit inside `(N / 55, N]`, since
`2^6 = 64 > 55`.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/-- A finite set contained in `(N / 55, N]` whose ordered elements more than
double has at most six elements. -/
theorem card_le_six_of_pairwise_left_double
    {N : Nat} {values : Finset Nat}
    (hlower : ∀ p ∈ values, N / 55 < p)
    (hupper : ∀ p ∈ values, p ≤ N)
    (hdouble : ∀ p ∈ values, ∀ q ∈ values, p < q → 2 * p < q) :
    values.card ≤ 6 := by
  by_contra hcardNot
  have hcard : 7 ≤ values.card := by omega
  let e : Fin values.card ↪o Nat := values.orderEmbOfFin rfl
  let i0 : Fin values.card := ⟨0, by omega⟩
  let i1 : Fin values.card := ⟨1, by omega⟩
  let i2 : Fin values.card := ⟨2, by omega⟩
  let i3 : Fin values.card := ⟨3, by omega⟩
  let i4 : Fin values.card := ⟨4, by omega⟩
  let i5 : Fin values.card := ⟨5, by omega⟩
  let i6 : Fin values.card := ⟨6, by omega⟩
  have hi0 : e i0 ∈ values := by
    simpa [e] using values.orderEmbOfFin_mem rfl i0
  have hi1 : e i1 ∈ values := by
    simpa [e] using values.orderEmbOfFin_mem rfl i1
  have hi2 : e i2 ∈ values := by
    simpa [e] using values.orderEmbOfFin_mem rfl i2
  have hi3 : e i3 ∈ values := by
    simpa [e] using values.orderEmbOfFin_mem rfl i3
  have hi4 : e i4 ∈ values := by
    simpa [e] using values.orderEmbOfFin_mem rfl i4
  have hi5 : e i5 ∈ values := by
    simpa [e] using values.orderEmbOfFin_mem rfl i5
  have hi6 : e i6 ∈ values := by
    simpa [e] using values.orderEmbOfFin_mem rfl i6
  have h01 : 2 * e i0 < e i1 :=
    hdouble _ hi0 _ hi1 (e.strictMono (by simp [i0, i1]))
  have h12 : 2 * e i1 < e i2 :=
    hdouble _ hi1 _ hi2 (e.strictMono (by simp [i1, i2]))
  have h23 : 2 * e i2 < e i3 :=
    hdouble _ hi2 _ hi3 (e.strictMono (by simp [i2, i3]))
  have h34 : 2 * e i3 < e i4 :=
    hdouble _ hi3 _ hi4 (e.strictMono (by simp [i3, i4]))
  have h45 : 2 * e i4 < e i5 :=
    hdouble _ hi4 _ hi5 (e.strictMono (by simp [i4, i5]))
  have h56 : 2 * e i5 < e i6 :=
    hdouble _ hi5 _ hi6 (e.strictMono (by simp [i5, i6]))
  have hlower0 := hlower (e i0) hi0
  have hupper6 := hupper (e i6) hi6
  have hmod : N % 55 < 55 := Nat.mod_lt N (by norm_num)
  have hdecomp : 55 * (N / 55) + N % 55 = N := Nat.div_add_mod N 55
  omega

/-- An actual high-high determinant fibre contains at most six points.  The
left-prime projection is injective because strict point order forces strict
left-prime growth; its image then satisfies the abstract six-layer bound. -/
theorem globalMixedDistinctHighHigh_sameFiber_card_le_six
    {N x y r s z : Nat} {points : Finset Nat} {p q : Nat → Nat}
    (hN : 5_000_000 ≤ N)
    (hx : 0 < x) (hxy : x < y) (hspan : y - x < 2627)
    (hqPrime : ∀ point ∈ points, Nat.Prime (q point))
    (hqLarge : ∀ point ∈ points, N / 55 < q point)
    (hpEvent : ∀ point ∈ points,
      (p point) ^ 2 * r = x * point + 1)
    (hqEvent : ∀ point ∈ points,
      (q point) ^ 2 * s = y * point + 1)
    (hz : ∀ point ∈ points,
      primitiveDeterminantRatioRoot
        (y / x.gcd y - x / x.gcd y) (p point) (q point) = z)
    (hpLower : ∀ point ∈ points, N / 55 < p point)
    (hpUpper : ∀ point ∈ points, p point ≤ N) :
    points.card ≤ 6 := by
  have hpInjective : Set.InjOn p ↑points := by
    intro point1 hpoint1 point2 hpoint2 hpEq
    by_contra hpointNe
    rcases lt_or_gt_of_ne hpointNe with hpointOrder | hpointOrder
    · have hgrowth :=
        globalMixedDistinctHighHigh_sameFiber_leftPrime_growth_two
          hN hx hxy hspan
          (hqPrime point1 hpoint1) (hqPrime point2 hpoint2)
          (hqLarge point1 hpoint1) (hqLarge point2 hpoint2)
          (hpEvent point1 hpoint1) (hqEvent point1 hpoint1)
          (hpEvent point2 hpoint2) (hqEvent point2 hpoint2)
          (hz point1 hpoint1) (hz point2 hpoint2) hpointOrder
      omega
    · have hgrowth :=
        globalMixedDistinctHighHigh_sameFiber_leftPrime_growth_two
          hN hx hxy hspan
          (hqPrime point2 hpoint2) (hqPrime point1 hpoint1)
          (hqLarge point2 hpoint2) (hqLarge point1 hpoint1)
          (hpEvent point2 hpoint2) (hqEvent point2 hpoint2)
          (hpEvent point1 hpoint1) (hqEvent point1 hpoint1)
          (hz point2 hpoint2) (hz point1 hpoint1) hpointOrder
      omega
  have himageLower : ∀ value ∈ points.image p, N / 55 < value := by
    intro value hvalue
    rcases Finset.mem_image.mp hvalue with ⟨point, hpoint, rfl⟩
    exact hpLower point hpoint
  have himageUpper : ∀ value ∈ points.image p, value ≤ N := by
    intro value hvalue
    rcases Finset.mem_image.mp hvalue with ⟨point, hpoint, rfl⟩
    exact hpUpper point hpoint
  have himageDouble :
      ∀ value1 ∈ points.image p, ∀ value2 ∈ points.image p,
        value1 < value2 → 2 * value1 < value2 := by
    intro value1 hvalue1 value2 hvalue2 hvalueOrder
    rcases Finset.mem_image.mp hvalue1 with ⟨point1, hpoint1, rfl⟩
    rcases Finset.mem_image.mp hvalue2 with ⟨point2, hpoint2, rfl⟩
    have hpointOrder : point1 < point2 := by
      rcases lt_trichotomy point1 point2 with hlt | heq | hgt
      · exact hlt
      · subst point2
        omega
      · have hreverse :=
          globalMixedDistinctHighHigh_sameFiber_leftPrime_growth_two
            hN hx hxy hspan
            (hqPrime point2 hpoint2) (hqPrime point1 hpoint1)
            (hqLarge point2 hpoint2) (hqLarge point1 hpoint1)
            (hpEvent point2 hpoint2) (hqEvent point2 hpoint2)
            (hpEvent point1 hpoint1) (hqEvent point1 hpoint1)
            (hz point2 hpoint2) (hz point1 hpoint1) hgt
        omega
    exact globalMixedDistinctHighHigh_sameFiber_leftPrime_growth_two
      hN hx hxy hspan
      (hqPrime point1 hpoint1) (hqPrime point2 hpoint2)
      (hqLarge point1 hpoint1) (hqLarge point2 hpoint2)
      (hpEvent point1 hpoint1) (hqEvent point1 hpoint1)
      (hpEvent point2 hpoint2) (hqEvent point2 hpoint2)
      (hz point1 hpoint1) (hz point2 hpoint2) hpointOrder
  have himageCard : (points.image p).card = points.card :=
    Finset.card_image_iff.mpr hpInjective
  rw [← himageCard]
  exact card_le_six_of_pairwise_left_double
    himageLower himageUpper himageDouble

/-- Kernel-facing data of one literal high-high determinant fibre.  Packaging
the witnesses here keeps the aggregate theorem dependent on actual square
events rather than on an unattached cardinality premise. -/
structure GlobalMixedDistinctHighHighFibre
    (N x y r s z : Nat) where
  points : Finset Nat
  leftPrime : Nat → Nat
  rightPrime : Nat → Nat
  rightPrime_prime : ∀ point ∈ points, Nat.Prime (rightPrime point)
  rightPrime_large : ∀ point ∈ points, N / 55 < rightPrime point
  left_event : ∀ point ∈ points,
    (leftPrime point) ^ 2 * r = x * point + 1
  right_event : ∀ point ∈ points,
    (rightPrime point) ^ 2 * s = y * point + 1
  canonical_root : ∀ point ∈ points,
    primitiveDeterminantRatioRoot
      (y / x.gcd y - x / x.gcd y)
        (leftPrime point) (rightPrime point) = z
  leftPrime_lower : ∀ point ∈ points, N / 55 < leftPrime point
  leftPrime_upper : ∀ point ∈ points, leftPrime point ≤ N

/-- Every packaged actual fibre has the unconditional six-layer capacity. -/
theorem GlobalMixedDistinctHighHighFibre.card_le_six
    {N x y r s z : Nat}
    (fibre : GlobalMixedDistinctHighHighFibre N x y r s z)
    (hN : 5_000_000 ≤ N)
    (hx : 0 < x) (hxy : x < y) (hspan : y - x < 2627) :
    fibre.points.card ≤ 6 := by
  exact globalMixedDistinctHighHigh_sameFiber_card_le_six
    hN hx hxy hspan
    fibre.rightPrime_prime fibre.rightPrime_large
    fibre.left_event fibre.right_event fibre.canonical_root
    fibre.leftPrime_lower fibre.leftPrime_upper

#print axioms card_le_six_of_pairwise_left_double
#print axioms globalMixedDistinctHighHigh_sameFiber_card_le_six
#print axioms GlobalMixedDistinctHighHighFibre.card_le_six

end Erdos848
