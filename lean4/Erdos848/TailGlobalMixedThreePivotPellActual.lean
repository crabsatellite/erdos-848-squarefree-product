import Erdos848.TailGlobalMixedThreePivotDeterminantActual
import Erdos848.TailGlobalMixedThreePivotPellOrbit

namespace Erdos848

/-!
# Actual high-high fibres produce determinant Pell units

This module connects the abstract same-root calculation to two literal
high-high square events on one edge of the unchanged three-pivot cluster.  The
large witness primes are automatically coprime to the normalized pivot gap;
there is no exceptional-prime premise.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/-- Two actual high-high solutions with the same complementary quotients and
canonical determinant root lie in one Pell-unit orbit. -/
theorem globalMixedDistinctHighHigh_sameFiber_pellUnit
    {N x y p₁ q₁ p₂ q₂ point₁ point₂ r s z : Nat}
    (hN : 5_000_000 ≤ N)
    (hx : 0 < x) (hxy : x < y) (hspan : y - x < 2627)
    (hq₁Prime : Nat.Prime q₁) (hq₂Prime : Nat.Prime q₂)
    (hq₁Large : N / 55 < q₁) (hq₂Large : N / 55 < q₂)
    (hp₁Event : p₁ ^ 2 * r = x * point₁ + 1)
    (hq₁Event : q₁ ^ 2 * s = y * point₁ + 1)
    (hp₂Event : p₂ ^ 2 * r = x * point₂ + 1)
    (hq₂Event : q₂ ^ 2 * s = y * point₂ + 1)
    (hz₁ : primitiveDeterminantRatioRoot
      (y / x.gcd y - x / x.gcd y) p₁ q₁ = z)
    (hz₂ : primitiveDeterminantRatioRoot
      (y / x.gcd y - x / x.gcd y) p₂ q₂ = z) :
    ∃ u v : Int,
      (y / x.gcd y * r : Int) * p₁ * p₂ -
          (x / x.gcd y * s : Int) * q₁ * q₂ =
        (y / x.gcd y - x / x.gcd y : Nat) * u ∧
      (p₁ : Int) * q₂ - p₂ * q₁ =
        (y / x.gcd y - x / x.gcd y : Nat) * v ∧
      u ^ 2 -
          (y / x.gcd y * r : Int) *
            (x / x.gcd y * s : Int) * v ^ 2 = 1 := by
  have hcutLarge : 2627 < N / 55 := by omega
  have hq₁Difference : y - x < q₁ := by omega
  have hq₂Difference : y - x < q₂ := by omega
  have hq₁Gap : Nat.Coprime q₁
      (y / x.gcd y - x / x.gcd y) :=
    prime_coprime_gcdQuotientGap_of_pivotDifference_lt
      hxy hq₁Prime hq₁Difference
  have hq₂Gap : Nat.Coprime q₂
      (y / x.gcd y - x / x.gcd y) :=
    prime_coprime_gcdQuotientGap_of_pivotDifference_lt
      hxy hq₂Prime hq₂Difference
  have hgapPos : 0 < y / x.gcd y - x / x.gcd y :=
    gcdQuotientGap_pos hxy
  have hquotientLt : x / x.gcd y < y / x.gcd y :=
    Nat.sub_pos_iff_lt.mp hgapPos
  have hz₁Mod : z * q₁ ≡ p₁
      [MOD y / x.gcd y - x / x.gcd y] := by
    have hcanonical := primitiveDeterminantRatioRoot_mul_modEq
      (p := p₁) (q := q₁) hgapPos hq₁Gap
    rw [hz₁] at hcanonical
    exact hcanonical
  have hz₂Mod : z * q₂ ≡ p₂
      [MOD y / x.gcd y - x / x.gcd y] := by
    have hcanonical := primitiveDeterminantRatioRoot_mul_modEq
      (p := p₂) (q := q₂) hgapPos hq₂Gap
    rw [hz₂] at hcanonical
    exact hcanonical
  have hroot : r * z ^ 2 ≡ s
      [MOD y / x.gcd y - x / x.gcd y] := by
    have hcanonical := squareEvent_gcdQuotient_canonicalRoot_modEq
      hx hxy hp₁Event hq₁Event hq₁Gap
    rw [hz₁] at hcanonical
    exact hcanonical
  exact primitiveDeterminant_sameRoot_pellUnit hquotientLt
    (squareEvent_gcdQuotient_determinant hxy.le hp₁Event hq₁Event)
    (squareEvent_gcdQuotient_determinant hxy.le hp₂Event hq₂Event)
    hz₁Mod hz₂Mod hroot

/-- A square-discriminant fibre contains at most one literal point.  Two
same-fibre points first give a Pell unit.  The square coefficient forces its
cross coordinate to vanish, and the four original square-event equations then
cancel to `(y - x) * (point₂ - point₁) = 0`; strict pivot order removes the
first factor. -/
theorem globalMixedDistinctHighHigh_squareDiscriminant_sameFiber_point_eq
    {N x y p1 q1 p2 q2 point1 point2 r s z : Nat}
    (hN : 5_000_000 ≤ N)
    (hx : 0 < x) (hxy : x < y) (hspan : y - x < 2627)
    (hq1Prime : Nat.Prime q1) (hq2Prime : Nat.Prime q2)
    (hq1Large : N / 55 < q1) (hq2Large : N / 55 < q2)
    (hp1Event : p1 ^ 2 * r = x * point1 + 1)
    (hq1Event : q1 ^ 2 * s = y * point1 + 1)
    (hp2Event : p2 ^ 2 * r = x * point2 + 1)
    (hq2Event : q2 ^ 2 * s = y * point2 + 1)
    (hz1 : primitiveDeterminantRatioRoot
      (y / x.gcd y - x / x.gcd y) p1 q1 = z)
    (hz2 : primitiveDeterminantRatioRoot
      (y / x.gcd y - x / x.gcd y) p2 q2 = z)
    (hsquare : ∃ k : Int, k ≠ 0 ∧
      (y / x.gcd y * r : Int) *
          (x / x.gcd y * s : Int) = k ^ 2) :
    point1 = point2 := by
  obtain ⟨u, v, hu, hv, hpell⟩ :=
    globalMixedDistinctHighHigh_sameFiber_pellUnit hN hx hxy hspan
      hq1Prime hq2Prime hq1Large hq2Large
      hp1Event hq1Event hp2Event hq2Event hz1 hz2
  obtain ⟨k, hk, hcoefficient⟩ := hsquare
  have hvZero : v = 0 :=
    pellUnit_squareCoefficient_v_eq_zero hk (by
      simpa [hcoefficient] using hpell)
  have hcrossInt : (p1 : Int) * q2 = p2 * q1 := by
    apply sub_eq_zero.mp
    simpa [hvZero] using hv
  have hcross : p1 * q2 = p2 * q1 := by
    exact_mod_cast hcrossInt
  have hproduct :
      (x * point1 + 1) * (y * point2 + 1) =
        (x * point2 + 1) * (y * point1 + 1) := by
    calc
      (x * point1 + 1) * (y * point2 + 1) =
          (p1 ^ 2 * r) * (q2 ^ 2 * s) := by
            rw [hp1Event, hq2Event]
      _ = r * s * (p1 * q2) ^ 2 := by ring
      _ = r * s * (p2 * q1) ^ 2 := by rw [hcross]
      _ = (p2 ^ 2 * r) * (q1 ^ 2 * s) := by ring
      _ = (x * point2 + 1) * (y * point1 + 1) := by
            rw [hp2Event, hq1Event]
  have hproductInt :
      ((x * point1 + 1) * (y * point2 + 1) : Int) =
        (x * point2 + 1) * (y * point1 + 1) := by
    exact_mod_cast hproduct
  have hfactor :
      ((y : Int) - x) * ((point2 : Int) - point1) = 0 := by
    nlinarith [hproductInt]
  have hpivotDifference : (y : Int) - x ≠ 0 := by
    have hxyInt : (x : Int) < y := by exact_mod_cast hxy
    omega
  have hpointDifference : (point2 : Int) - point1 = 0 :=
    (mul_eq_zero.mp hfactor).resolve_left hpivotDifference
  have hpointInt : (point2 : Int) = point1 := sub_eq_zero.mp hpointDifference
  exact_mod_cast hpointInt.symm

/-- Ordered actual points in one determinant fibre have witnessing left primes
that more than double.  This is the direct geometric-growth input for a
six-layer capacity bound on the interval `(N/55, N]`. -/
theorem globalMixedDistinctHighHigh_sameFiber_leftPrime_growth_two
    {N x y p1 q1 p2 q2 point1 point2 r s z : Nat}
    (hN : 5_000_000 ≤ N)
    (hx : 0 < x) (hxy : x < y) (hspan : y - x < 2627)
    (hq1Prime : Nat.Prime q1) (hq2Prime : Nat.Prime q2)
    (hq1Large : N / 55 < q1) (hq2Large : N / 55 < q2)
    (hp1Event : p1 ^ 2 * r = x * point1 + 1)
    (hq1Event : q1 ^ 2 * s = y * point1 + 1)
    (hp2Event : p2 ^ 2 * r = x * point2 + 1)
    (hq2Event : q2 ^ 2 * s = y * point2 + 1)
    (hz1 : primitiveDeterminantRatioRoot
      (y / x.gcd y - x / x.gcd y) p1 q1 = z)
    (hz2 : primitiveDeterminantRatioRoot
      (y / x.gcd y - x / x.gcd y) p2 q2 = z)
    (hpointOrder : point1 < point2) :
    2 * p1 < p2 := by
  obtain ⟨u, v, huEq, hvEq, hpell⟩ :=
    globalMixedDistinctHighHigh_sameFiber_pellUnit hN hx hxy hspan
      hq1Prime hq2Prime hq1Large hq2Large
      hp1Event hq1Event hp2Event hq2Event hz1 hz2
  have hp1Pos : 0 < p1 := by
    apply Nat.pos_of_ne_zero
    intro hp1Zero
    subst p1
    simp at hp1Event
  have hq1Pos : 0 < q1 := hq1Prime.pos
  have hrPos : 0 < r := by
    apply Nat.pos_of_ne_zero
    intro hrZero
    subst r
    simp at hp1Event
  have hsPos : 0 < s := by
    apply Nat.pos_of_ne_zero
    intro hsZero
    subst s
    simp at hq1Event
  have hxyCast : (x : Int) < y := by exact_mod_cast hxy
  have hxyInt : 0 < (y : Int) - x := sub_pos.mpr hxyCast
  have hpointOrderInt : 0 < (point2 : Int) - point1 := by
    have hpointOrderCast : (point1 : Int) < point2 := by
      exact_mod_cast hpointOrder
    exact sub_pos.mpr hpointOrderCast
  have hbaseProductInt :
      (((x * point2 + 1) * (y * point1 + 1) : Nat) : Int) <
        ((x * point1 + 1) * (y * point2 + 1) : Nat) := by
    push_cast
    rw [← sub_pos]
    convert mul_pos hxyInt hpointOrderInt using 1 <;> ring
  have hbaseProduct :
      (x * point2 + 1) * (y * point1 + 1) <
        (x * point1 + 1) * (y * point2 + 1) := by
    exact_mod_cast hbaseProductInt
  have hscaledCross :
      r * s * (p2 * q1) ^ 2 < r * s * (p1 * q2) ^ 2 := by
    calc
      r * s * (p2 * q1) ^ 2 =
          (p2 ^ 2 * r) * (q1 ^ 2 * s) := by ring
      _ = (x * point2 + 1) * (y * point1 + 1) := by
            rw [hp2Event, hq1Event]
      _ < (x * point1 + 1) * (y * point2 + 1) := hbaseProduct
      _ = (p1 ^ 2 * r) * (q2 ^ 2 * s) := by
            rw [hp1Event, hq2Event]
      _ = r * s * (p1 * q2) ^ 2 := by ring
  have hcrossSquares : (p2 * q1) ^ 2 < (p1 * q2) ^ 2 :=
    Nat.lt_of_mul_lt_mul_left hscaledCross
  have hcross : p2 * q1 < p1 * q2 :=
    (Nat.pow_lt_pow_iff_left (by norm_num : 2 ≠ 0)).mp hcrossSquares
  have hcrossInt :
      0 < (p1 : Int) * q2 - p2 * q1 := by
    have hcrossCast : ((p2 * q1 : Nat) : Int) < p1 * q2 := by
      exact_mod_cast hcross
    exact sub_pos.mpr (by simpa only [Nat.cast_mul] using hcrossCast)
  have hgapPos : 0 < y / x.gcd y - x / x.gcd y :=
    gcdQuotientGap_pos hxy
  have hgapPosInt :
      (0 : Int) < (y / x.gcd y - x / x.gcd y : Nat) := by
    exact_mod_cast hgapPos
  have hvPos : 0 < v := by nlinarith [hvEq]
  let leftCoefficient := y / x.gcd y * r
  let rightCoefficient := x / x.gcd y * s
  have hleftPrimitivePos : 0 < x / x.gcd y := by
    exact Nat.div_pos
      (Nat.gcd_le_left y hx) (Nat.gcd_pos_of_pos_left y hx)
  have hrightPrimitivePos : 0 < y / x.gcd y := by
    have hquotientLt : x / x.gcd y < y / x.gcd y :=
      Nat.sub_pos_iff_lt.mp hgapPos
    omega
  have hleftCoefficientPos : 0 < leftCoefficient := by
    exact Nat.mul_pos hrightPrimitivePos hrPos
  have hrightCoefficientPos : 0 < rightCoefficient := by
    exact Nat.mul_pos hleftPrimitivePos hsPos
  have hdet1Nat :
      leftCoefficient * p1 ^ 2 =
        rightCoefficient * q1 ^ 2 +
          (y / x.gcd y - x / x.gcd y) := by
    dsimp [leftCoefficient, rightCoefficient]
    have hdet := squareEvent_gcdQuotient_determinant hxy.le
      hp1Event hq1Event
    simpa only [mul_assoc, mul_left_comm, mul_comm] using hdet
  have hdet2Nat :
      leftCoefficient * p2 ^ 2 =
        rightCoefficient * q2 ^ 2 +
          (y / x.gcd y - x / x.gcd y) := by
    dsimp [leftCoefficient, rightCoefficient]
    have hdet := squareEvent_gcdQuotient_determinant hxy.le
      hp2Event hq2Event
    simpa only [mul_assoc, mul_left_comm, mul_comm] using hdet
  let delta := y / x.gcd y - x / x.gcd y
  have hextraPos :
      0 < delta * (rightCoefficient * q1 ^ 2 +
        rightCoefficient * q2 ^ 2 + delta) := by
    exact Nat.mul_pos hgapPos (by positivity)
  have hcoefficientProduct :
      rightCoefficient * q1 * q2 < leftCoefficient * p1 * p2 := by
    have hsquareLt :
        (rightCoefficient * q1 * q2) ^ 2 <
          (leftCoefficient * p1 * p2) ^ 2 := by
      calc
        (rightCoefficient * q1 * q2) ^ 2 =
            (rightCoefficient * q1 ^ 2) *
              (rightCoefficient * q2 ^ 2) := by ring
        _ < (rightCoefficient * q1 ^ 2) *
              (rightCoefficient * q2 ^ 2) +
            delta * (rightCoefficient * q1 ^ 2 +
              rightCoefficient * q2 ^ 2 + delta) :=
              Nat.lt_add_of_pos_right hextraPos
        _ = (rightCoefficient * q1 ^ 2 + delta) *
              (rightCoefficient * q2 ^ 2 + delta) := by ring
        _ = (leftCoefficient * p1 ^ 2) *
              (leftCoefficient * p2 ^ 2) := by
                rw [← hdet1Nat, ← hdet2Nat]
        _ = (leftCoefficient * p1 * p2) ^ 2 := by ring
    exact (Nat.pow_lt_pow_iff_left (by norm_num : 2 ≠ 0)).mp hsquareLt
  have hcoefficientProductInt :
      0 < (leftCoefficient : Int) * p1 * p2 -
        (rightCoefficient : Int) * q1 * q2 := by
    have hcoefficientProductCast :
        (((rightCoefficient * q1 * q2 : Nat) : Int)) <
          leftCoefficient * p1 * p2 := by
      exact_mod_cast hcoefficientProduct
    exact sub_pos.mpr (by
      simpa only [Nat.cast_mul] using hcoefficientProductCast)
  have huPos : 0 < u := by
    dsimp [leftCoefficient, rightCoefficient] at hcoefficientProductInt
    nlinarith [huEq, hgapPosInt]
  have hdet1Int :
      (leftCoefficient : Int) * p1 ^ 2 -
          (rightCoefficient : Int) * q1 ^ 2 = delta := by
    have hcast := congrArg Int.ofNat hdet1Nat
    push_cast at hcast
    exact sub_eq_iff_eq_add.mpr (by simpa only [add_comm] using hcast)
  have hdeltaNe : (delta : Int) ≠ 0 := by exact_mod_cast hgapPos.ne'
  have haction :
      (p2 : Int) = u * p1 + (rightCoefficient : Int) * v * q1 :=
    pellUnitAction_left hdeltaNe hdet1Int huEq hvEq
  have hleftCoefficientPosInt : (0 : Int) < leftCoefficient := by
    exact_mod_cast hleftCoefficientPos
  have hrightCoefficientPosInt : (0 : Int) < rightCoefficient := by
    exact_mod_cast hrightCoefficientPos
  have hp1PosInt : (0 : Int) < p1 := by exact_mod_cast hp1Pos
  have hq1PosInt : (0 : Int) < q1 := by exact_mod_cast hq1Pos
  have hgrowthInt : (2 : Int) * p1 < p2 :=
    pellUnitAction_left_growth_two
      hleftCoefficientPosInt hrightCoefficientPosInt hp1PosInt hq1PosInt
      huPos hvPos (by simpa [leftCoefficient, rightCoefficient] using hpell)
      haction
  exact_mod_cast hgrowthInt

#print axioms globalMixedDistinctHighHigh_sameFiber_pellUnit
#print axioms globalMixedDistinctHighHigh_squareDiscriminant_sameFiber_point_eq
#print axioms globalMixedDistinctHighHigh_sameFiber_leftPrime_growth_two

end Erdos848
