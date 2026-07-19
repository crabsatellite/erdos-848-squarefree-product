import Mathlib.Tactic

namespace Erdos848

/-!
# An integer negative-Pell gap

The eventwise diagonal certificate truncates its Möbius sum at a fixed
squarefree modulus bound.  The remaining large-square events are grouped by

`x ^ 2 + 1 = d * y ^ 2`.

The paper bounds the number of positive solutions for a fixed `d` using the
real quadratic unit `3 + 2 * sqrt 2`.  For the kernel package a slightly
weaker integral statement is enough: distinct positive solutions have
`x`-coordinates growing by a factor strictly larger than five.  This avoids
real logarithms and still gives fourteen layers below two billion.
-/

set_option maxHeartbeats 0

/-- Two ordered positive solutions of the same negative Pell equation have
`x`-coordinates separated by a factor strictly larger than `29 / 5`. -/
theorem negativePell_x_growth_twentyNine_fifths
    {d x₁ y₁ x₂ y₂ : Nat}
    (hd : 2 ≤ d)
    (hx₁ : 0 < x₁) (hy₁ : 0 < y₁)
    (hx₂ : 0 < x₂) (hy₂ : 0 < y₂)
    (h₁ : x₁ ^ 2 + 1 = d * y₁ ^ 2)
    (h₂ : x₂ ^ 2 + 1 = d * y₂ ^ 2)
    (horder : x₁ < x₂) :
    29 * x₁ < 5 * x₂ := by
  have hxSquare : x₁ ^ 2 < x₂ ^ 2 :=
    Nat.pow_lt_pow_left horder (by norm_num)
  have hyOrder : y₁ < y₂ := by
    by_contra hnot
    have hyLe : y₂ ≤ y₁ := Nat.le_of_not_gt hnot
    have hySquare : y₂ ^ 2 ≤ y₁ ^ 2 :=
      Nat.pow_le_pow_left hyLe 2
    nlinarith
  have h₁z :
      (x₁ : Int) ^ 2 + 1 = (d : Int) * (y₁ : Int) ^ 2 := by
    exact_mod_cast h₁
  have h₂z :
      (x₂ : Int) ^ 2 + 1 = (d : Int) * (y₂ : Int) ^ 2 := by
    exact_mod_cast h₂
  let u : Int :=
    (d : Int) * (y₁ : Int) * (y₂ : Int) - (x₁ : Int) * (x₂ : Int)
  let v : Int :=
    (x₂ : Int) * (y₁ : Int) - (x₁ : Int) * (y₂ : Int)
  have huPositive : 0 < u := by
    have hsquare :
        ((x₁ : Int) * (x₂ : Int)) ^ 2 <
          ((d : Int) * (y₁ : Int) * (y₂ : Int)) ^ 2 := by
      calc
        ((x₁ : Int) * (x₂ : Int)) ^ 2 <
            ((x₁ : Int) ^ 2 + 1) * ((x₂ : Int) ^ 2 + 1) := by
              nlinarith [sq_nonneg (x₁ : Int), sq_nonneg (x₂ : Int)]
        _ = ((d : Int) * (y₁ : Int) * (y₂ : Int)) ^ 2 := by
              rw [h₁z, h₂z]
              ring
    have hright :
        0 ≤ (d : Int) * (y₁ : Int) * (y₂ : Int) := by positivity
    have hleft :
        0 ≤ (x₁ : Int) * (x₂ : Int) := by positivity
    dsimp [u]
    nlinarith [((sq_lt_sq₀ hleft hright).mp hsquare)]
  have hvPositive : 0 < v := by
    have hsquare :
        ((x₁ : Int) * (y₂ : Int)) ^ 2 <
          ((x₂ : Int) * (y₁ : Int)) ^ 2 := by
      have hdPositive : (0 : Int) < d := by
        exact_mod_cast (lt_of_lt_of_le (by omega) hd)
      have hscaled :
          (d : Int) *
              (((x₂ : Int) * (y₁ : Int)) ^ 2 -
                ((x₁ : Int) * (y₂ : Int)) ^ 2) =
            (x₂ : Int) ^ 2 - (x₁ : Int) ^ 2 := by
        calc
          (d : Int) *
                (((x₂ : Int) * (y₁ : Int)) ^ 2 -
                  ((x₁ : Int) * (y₂ : Int)) ^ 2) =
              (x₂ : Int) ^ 2 * ((d : Int) * (y₁ : Int) ^ 2) -
                (x₁ : Int) ^ 2 * ((d : Int) * (y₂ : Int) ^ 2) := by ring
          _ = (x₂ : Int) ^ 2 * ((x₁ : Int) ^ 2 + 1) -
                (x₁ : Int) ^ 2 * ((x₂ : Int) ^ 2 + 1) := by
                  rw [← h₁z, ← h₂z]
          _ = (x₂ : Int) ^ 2 - (x₁ : Int) ^ 2 := by ring
      have hxSquareInt :
          (x₁ : Int) ^ 2 < (x₂ : Int) ^ 2 := by exact_mod_cast hxSquare
      nlinarith
    have hright :
        0 ≤ (x₂ : Int) * (y₁ : Int) := by positivity
    have hleft :
        0 ≤ (x₁ : Int) * (y₂ : Int) := by positivity
    dsimp [v]
    nlinarith [((sq_lt_sq₀ hleft hright).mp hsquare)]
  have hpell : u ^ 2 - (d : Int) * v ^ 2 = 1 := by
    calc
      u ^ 2 - (d : Int) * v ^ 2 =
          ((x₁ : Int) ^ 2 - (d : Int) * (y₁ : Int) ^ 2) *
            ((x₂ : Int) ^ 2 - (d : Int) * (y₂ : Int) ^ 2) := by
              dsimp [u, v]
              ring
      _ = 1 := by nlinarith
  have huNotOne : u ≠ 1 := by
    intro hu
    rw [hu] at hpell
    have hdPositive : (0 : Int) < d := by
      exact_mod_cast (lt_of_lt_of_le (by omega) hd)
    nlinarith [sq_pos_of_pos hvPositive]
  have huNotTwo : u ≠ 2 := by
    intro hu
    have hdv : (d : Int) * v ^ 2 = 3 := by
      rw [hu] at hpell
      norm_num at hpell
      nlinarith
    have hvOne : v = 1 := by
      have hvLe : v ≤ 1 := by
        by_contra hvNot
        have hvTwo : 2 ≤ v := by omega
        have hdInt : (2 : Int) ≤ d := by exact_mod_cast hd
        nlinarith [sq_nonneg (v - 2)]
      omega
    have hdThree : d = 3 := by
      rw [hvOne] at hdv
      norm_num at hdv
      exact_mod_cast hdv
    have hmod : (x₁ ^ 2 + 1) % 3 = 0 := by
      rw [h₁, hdThree]
      simp
    have hxResidue :
        x₁ % 3 = 0 ∨ x₁ % 3 = 1 ∨ x₁ % 3 = 2 := by
      omega
    rcases hxResidue with hzero | hone | htwo
    · norm_num [Nat.add_mod, Nat.pow_mod, hzero] at hmod
    · norm_num [Nat.add_mod, Nat.pow_mod, hone] at hmod
    · norm_num [Nat.add_mod, Nat.pow_mod, htwo] at hmod
  have huThree : (3 : Int) ≤ u := by omega
  have haction :
      (x₂ : Int) =
        u * (x₁ : Int) + (d : Int) * v * (y₁ : Int) := by
    calc
      (x₂ : Int) =
          (x₂ : Int) * ((d : Int) * (y₁ : Int) ^ 2 -
            (x₁ : Int) ^ 2) := by
              have : (d : Int) * (y₁ : Int) ^ 2 -
                  (x₁ : Int) ^ 2 = 1 := by linarith
              rw [this]
              ring
      _ = u * (x₁ : Int) + (d : Int) * v * (y₁ : Int) := by
            dsimp [u, v]
            ring
  have htailSquare :
      ((d : Int) * v * (y₁ : Int)) ^ 2 =
        (u ^ 2 - 1) * ((x₁ : Int) ^ 2 + 1) := by
    calc
      ((d : Int) * v * (y₁ : Int)) ^ 2 =
          ((d : Int) * v ^ 2) *
            ((d : Int) * (y₁ : Int) ^ 2) := by ring
      _ = (u ^ 2 - 1) * ((x₁ : Int) ^ 2 + 1) := by
            rw [show (d : Int) * v ^ 2 = u ^ 2 - 1 by linarith,
              show (d : Int) * (y₁ : Int) ^ 2 =
                (x₁ : Int) ^ 2 + 1 by linarith]
  have htailScaled :
      14 * (x₁ : Int) <
        5 * ((d : Int) * v * (y₁ : Int)) := by
    have htailPositive :
        0 < (d : Int) * v * (y₁ : Int) := by positivity
    have huFactor : (8 : Int) ≤ u ^ 2 - 1 := by
      nlinarith [sq_nonneg (u - 3)]
    have hxFactor : (0 : Int) ≤ (x₁ : Int) ^ 2 + 1 := by positivity
    have hproduct :
        8 * ((x₁ : Int) ^ 2 + 1) ≤
          (u ^ 2 - 1) * ((x₁ : Int) ^ 2 + 1) :=
      mul_le_mul_of_nonneg_right huFactor hxFactor
    have htailSquareLower :
        (14 * (x₁ : Int)) ^ 2 <
          (5 * ((d : Int) * v * (y₁ : Int))) ^ 2 := by
      calc
        (14 * (x₁ : Int)) ^ 2 =
            196 * (x₁ : Int) ^ 2 := by ring
        _ < 200 * ((x₁ : Int) ^ 2 + 1) := by
          nlinarith [sq_nonneg (x₁ : Int)]
        _ ≤ 25 * ((u ^ 2 - 1) * ((x₁ : Int) ^ 2 + 1)) := by
          nlinarith
        _ = (5 * ((d : Int) * v * (y₁ : Int))) ^ 2 := by
          rw [← htailSquare]
          ring
    have hleft : (0 : Int) ≤ 14 * (x₁ : Int) := by positivity
    have hright :
        (0 : Int) ≤ 5 * ((d : Int) * v * (y₁ : Int)) := by
      positivity
    exact (sq_lt_sq₀ hleft hright).mp htailSquareLower
  have hgrowthInt : 29 * (x₁ : Int) < 5 * (x₂ : Int) := by
    rw [haction]
    nlinarith
  exact_mod_cast hgrowthInt

/-- Convenient weaker corollary used by the older capacity interface. -/
theorem negativePell_x_growth_five
    {d x₁ y₁ x₂ y₂ : Nat}
    (hd : 2 ≤ d)
    (hx₁ : 0 < x₁) (hy₁ : 0 < y₁)
    (hx₂ : 0 < x₂) (hy₂ : 0 < y₂)
    (h₁ : x₁ ^ 2 + 1 = d * y₁ ^ 2)
    (h₂ : x₂ ^ 2 + 1 = d * y₂ ^ 2)
    (horder : x₁ < x₂) :
    5 * x₁ < x₂ := by
  have hstrong := negativePell_x_growth_twentyNine_fifths
    hd hx₁ hy₁ hx₂ hy₂ h₁ h₂ horder
  nlinarith

/-- Fifteen positive integers with successive growth greater than five cannot
fit below two billion.  This is the discrete capacity form used by the
large-square tail. -/
theorem card_le_fourteen_of_pairwise_left_five
    {values : Finset Nat}
    (hpositive : ∀ x ∈ values, 0 < x)
    (hupper : ∀ x ∈ values, x < 2_000_000_000)
    (hfive : ∀ x ∈ values, ∀ y ∈ values, x < y → 5 * x < y) :
    values.card ≤ 14 := by
  by_contra hcardNot
  have hcard : 15 ≤ values.card := by omega
  let e : Fin values.card ↪o Nat := values.orderEmbOfFin rfl
  let i0 : Fin values.card := ⟨0, by omega⟩
  let i1 : Fin values.card := ⟨1, by omega⟩
  let i2 : Fin values.card := ⟨2, by omega⟩
  let i3 : Fin values.card := ⟨3, by omega⟩
  let i4 : Fin values.card := ⟨4, by omega⟩
  let i5 : Fin values.card := ⟨5, by omega⟩
  let i6 : Fin values.card := ⟨6, by omega⟩
  let i7 : Fin values.card := ⟨7, by omega⟩
  let i8 : Fin values.card := ⟨8, by omega⟩
  let i9 : Fin values.card := ⟨9, by omega⟩
  let i10 : Fin values.card := ⟨10, by omega⟩
  let i11 : Fin values.card := ⟨11, by omega⟩
  let i12 : Fin values.card := ⟨12, by omega⟩
  let i13 : Fin values.card := ⟨13, by omega⟩
  let i14 : Fin values.card := ⟨14, by omega⟩
  have hmem (i : Fin values.card) : e i ∈ values := by
    simpa [e] using values.orderEmbOfFin_mem rfl i
  have hstep (i j : Fin values.card) (hij : i < j) :
      5 * e i < e j :=
    hfive _ (hmem i) _ (hmem j) (e.strictMono hij)
  have h01 := hstep i0 i1 (by simp [i0, i1])
  have h12 := hstep i1 i2 (by simp [i1, i2])
  have h23 := hstep i2 i3 (by simp [i2, i3])
  have h34 := hstep i3 i4 (by simp [i3, i4])
  have h45 := hstep i4 i5 (by simp [i4, i5])
  have h56 := hstep i5 i6 (by simp [i5, i6])
  have h67 := hstep i6 i7 (by simp [i6, i7])
  have h78 := hstep i7 i8 (by simp [i7, i8])
  have h89 := hstep i8 i9 (by simp [i8, i9])
  have h910 := hstep i9 i10 (by simp [i9, i10])
  have h1011 := hstep i10 i11 (by simp [i10, i11])
  have h1112 := hstep i11 i12 (by simp [i11, i12])
  have h1213 := hstep i12 i13 (by simp [i12, i13])
  have h1314 := hstep i13 i14 (by simp [i13, i14])
  have hfirst := hpositive (e i0) (hmem i0)
  have hlast := hupper (e i14) (hmem i14)
  omega

/-- Fourteen positive integers with pairwise growth greater than `29 / 5`
cannot fit below two billion.  The explicit integer recurrence avoids real
logarithms while retaining the paper's sharp coefficient thirteen. -/
theorem card_le_thirteen_of_pairwise_twentyNine_fifths
    {values : Finset Nat}
    (hpositive : ∀ x ∈ values, 0 < x)
    (hupper : ∀ x ∈ values, x < 2_000_000_000)
    (hgrowth : ∀ x ∈ values, ∀ y ∈ values,
      x < y → 29 * x < 5 * y) :
    values.card ≤ 13 := by
  by_contra hcardNot
  have hcard : 14 ≤ values.card := by omega
  let e : Fin values.card ↪o Nat := values.orderEmbOfFin rfl
  let i0 : Fin values.card := ⟨0, by omega⟩
  let i1 : Fin values.card := ⟨1, by omega⟩
  let i2 : Fin values.card := ⟨2, by omega⟩
  let i3 : Fin values.card := ⟨3, by omega⟩
  let i4 : Fin values.card := ⟨4, by omega⟩
  let i5 : Fin values.card := ⟨5, by omega⟩
  let i6 : Fin values.card := ⟨6, by omega⟩
  let i7 : Fin values.card := ⟨7, by omega⟩
  let i8 : Fin values.card := ⟨8, by omega⟩
  let i9 : Fin values.card := ⟨9, by omega⟩
  let i10 : Fin values.card := ⟨10, by omega⟩
  let i11 : Fin values.card := ⟨11, by omega⟩
  let i12 : Fin values.card := ⟨12, by omega⟩
  let i13 : Fin values.card := ⟨13, by omega⟩
  have hmem (i : Fin values.card) : e i ∈ values := by
    simpa [e] using values.orderEmbOfFin_mem rfl i
  have hstep (i j : Fin values.card) (hij : i < j) :
      29 * e i < 5 * e j :=
    hgrowth _ (hmem i) _ (hmem j) (e.strictMono hij)
  have h01 := hstep i0 i1 (by simp [i0, i1])
  have h12 := hstep i1 i2 (by simp [i1, i2])
  have h23 := hstep i2 i3 (by simp [i2, i3])
  have h34 := hstep i3 i4 (by simp [i3, i4])
  have h45 := hstep i4 i5 (by simp [i4, i5])
  have h56 := hstep i5 i6 (by simp [i5, i6])
  have h67 := hstep i6 i7 (by simp [i6, i7])
  have h78 := hstep i7 i8 (by simp [i7, i8])
  have h89 := hstep i8 i9 (by simp [i8, i9])
  have h910 := hstep i9 i10 (by simp [i9, i10])
  have h1011 := hstep i10 i11 (by simp [i10, i11])
  have h1112 := hstep i11 i12 (by simp [i11, i12])
  have h1213 := hstep i12 i13 (by simp [i12, i13])
  have h0Lower : 1 ≤ e i0 := hpositive (e i0) (hmem i0)
  have h1Lower : 6 ≤ e i1 := by omega
  have h2Lower : 35 ≤ e i2 := by omega
  have h3Lower : 204 ≤ e i3 := by omega
  have h4Lower : 1_184 ≤ e i4 := by omega
  have h5Lower : 6_868 ≤ e i5 := by omega
  have h6Lower : 39_835 ≤ e i6 := by omega
  have h7Lower : 231_044 ≤ e i7 := by omega
  have h8Lower : 1_340_056 ≤ e i8 := by omega
  have h9Lower : 7_772_325 ≤ e i9 := by omega
  have h10Lower : 45_079_486 ≤ e i10 := by omega
  have h11Lower : 261_461_019 ≤ e i11 := by omega
  have h12Lower : 1_516_473_911 ≤ e i12 := by omega
  have h13Lower : 8_795_548_684 ≤ e i13 := by omega
  have hlast := hupper (e i13) (hmem i13)
  omega

/-- Positive `x`-coordinates of negative-Pell solutions below a strict
endpoint.  The witness coordinate is bounded by the same endpoint; for
`d ≥ 2` this loses nothing because every positive solution has `y ≤ x`. -/
def negativePellXValues (d bound : Nat) : Finset Nat :=
  (Finset.range bound).filter fun x =>
    0 < x ∧ ∃ y ∈ Finset.range bound, x ^ 2 + 1 = d * y ^ 2

theorem negativePellXValues_card_le_fourteen
    {d bound : Nat} (hd : 2 ≤ d) (hbound : bound ≤ 2_000_000_000) :
    (negativePellXValues d bound).card ≤ 14 := by
  classical
  apply card_le_fourteen_of_pairwise_left_five
  · intro x hx
    exact (Finset.mem_filter.mp hx).2.1
  · intro x hx
    have hxBound := (Finset.mem_filter.mp hx).1
    have : x < bound := Finset.mem_range.mp hxBound
    omega
  · intro x hx y hy hxyOrder
    rcases Finset.mem_filter.mp hx with
      ⟨_hxBound, hxPositive, xWitness, _hxWitnessBound, hxEquation⟩
    rcases Finset.mem_filter.mp hy with
      ⟨_hyBound, hyPositive, yWitness, _hyWitnessBound, hyEquation⟩
    have hxWitnessPositive : 0 < xWitness := by
      by_contra hzero
      have : xWitness = 0 := by omega
      subst xWitness
      norm_num at hxEquation
    have hyWitnessPositive : 0 < yWitness := by
      by_contra hzero
      have : yWitness = 0 := by omega
      subst yWitness
      norm_num at hyEquation
    exact negativePell_x_growth_five hd hxPositive hxWitnessPositive
      hyPositive hyWitnessPositive hxEquation hyEquation hxyOrder

theorem negativePellXValues_card_le_thirteen
    {d bound : Nat} (hd : 2 ≤ d) (hbound : bound ≤ 2_000_000_000) :
    (negativePellXValues d bound).card ≤ 13 := by
  classical
  apply card_le_thirteen_of_pairwise_twentyNine_fifths
  · intro x hx
    exact (Finset.mem_filter.mp hx).2.1
  · intro x hx
    have hxBound := (Finset.mem_filter.mp hx).1
    have : x < bound := Finset.mem_range.mp hxBound
    omega
  · intro x hx y hy hxyOrder
    rcases Finset.mem_filter.mp hx with
      ⟨_hxBound, hxPositive, xWitness, _hxWitnessBound, hxEquation⟩
    rcases Finset.mem_filter.mp hy with
      ⟨_hyBound, hyPositive, yWitness, _hyWitnessBound, hyEquation⟩
    have hxWitnessPositive : 0 < xWitness := by
      by_contra hzero
      have : xWitness = 0 := by omega
      subst xWitness
      norm_num at hxEquation
    have hyWitnessPositive : 0 < yWitness := by
      by_contra hzero
      have : yWitness = 0 := by omega
      subst yWitness
      norm_num at hyEquation
    exact negativePell_x_growth_twentyNine_fifths
      hd hxPositive hxWitnessPositive hyPositive hyWitnessPositive
      hxEquation hyEquation hxyOrder

#print axioms negativePell_x_growth_twentyNine_fifths
#print axioms negativePell_x_growth_five
#print axioms card_le_fourteen_of_pairwise_left_five
#print axioms negativePellXValues_card_le_fourteen
#print axioms card_le_thirteen_of_pairwise_twentyNine_fifths
#print axioms negativePellXValues_card_le_thirteen

end Erdos848
