import Mathlib

namespace Erdos848

/-!
# Kernel counting lemma for the transformed large-prime tail

The transformed-root argument is not a finite scan over `N`.  For every
surviving quotient `m`, the possible witness primes split into finitely many
root classes.  The first point in each class is paid by the survivor count;
all later points are paid by their spacing.  The reciprocal sum over the
surviving quotients is bounded independently.

This file isolates that combinatorial summation.  Arithmetic producers still
have to prove the actual cover, the root-class bound, the spacing estimate and
the reciprocal bound for the literal Erdős 848 point set.
-/

/-- A finite set inside `[0,X)` whose distinct elements are at least `D`
apart has at most `X / D + 1` elements.  The proof maps every element to its
length-`D` block; the gap condition makes that map injective. -/
theorem card_le_div_add_one_of_pairwise_gap
    (s : Finset ℕ) (X D : ℕ) (hD : 0 < D)
    (hupper : ∀ x ∈ s, x < X)
    (hgap : ∀ a ∈ s, ∀ b ∈ s, a < b → D ≤ b - a) :
    s.card ≤ X / D + 1 := by
  let block : ℕ → ℕ := fun x => x / D
  have hinjective : Set.InjOn block s := by
    intro a ha b hb hab
    by_contra hne
    rcases lt_or_gt_of_ne hne with hlt | hgt
    · have hsep := hgap a ha b hb hlt
      have haMod := Nat.mod_lt a hD
      have hbMod := Nat.mod_lt b hD
      have haDecomp := Nat.div_add_mod a D
      have hbDecomp := Nat.div_add_mod b D
      dsimp [block] at hab
      rw [← hab] at hbDecomp
      omega
    · have hsep := hgap b hb a ha hgt
      have haMod := Nat.mod_lt a hD
      have hbMod := Nat.mod_lt b hD
      have haDecomp := Nat.div_add_mod a D
      have hbDecomp := Nat.div_add_mod b D
      dsimp [block] at hab
      rw [hab] at haDecomp
      omega
  have himage : s.image block ⊆ Finset.range (X / D + 1) := by
    intro q hq
    obtain ⟨x, hx, rfl⟩ := Finset.mem_image.mp hq
    simp only [Finset.mem_range]
    have hdiv := Nat.div_le_div_right (c := D)
      (Nat.le_of_lt (hupper x hx))
    dsimp [block]
    omega
  calc
    s.card = (s.image block).card :=
      (Finset.card_image_iff.mpr hinjective).symm
    _ ≤ (Finset.range (X / D + 1)).card := Finset.card_le_card himage
    _ = X / D + 1 := Finset.card_range _

/-- Rational form of `card_le_div_add_one_of_pairwise_gap`; this is the exact
endpoint-plus-spacing payment used by transformed-root fibres. -/
theorem card_cast_le_one_add_div_of_pairwise_gap
    (s : Finset ℕ) (X D : ℕ) (hD : 0 < D)
    (hupper : ∀ x ∈ s, x < X)
    (hgap : ∀ a ∈ s, ∀ b ∈ s, a < b → D ≤ b - a) :
    (s.card : ℚ) ≤ 1 + (X : ℚ) / D := by
  have hcard := card_le_div_add_one_of_pairwise_gap
    s X D hD hupper hgap
  have hcardQ : (s.card : ℚ) ≤ ((X / D + 1 : ℕ) : ℚ) := by
    exact_mod_cast hcard
  calc
    (s.card : ℚ) ≤ ((X / D + 1 : ℕ) : ℚ) := hcardQ
    _ = ((X / D : ℕ) : ℚ) + 1 := by push_cast; ring
    _ ≤ (X : ℚ) / D + 1 := by
      gcongr
      exact Nat.cast_div_le
    _ = 1 + (X : ℚ) / D := by ring

/-! ## Literal transformed-equation fibres -/

/-- Two witnesses in one residue class of the transformed modulus force the
corresponding progression parameters apart by at least `2*m*Y`. -/
theorem transformedEquation_parameter_gap
    {m modulus constant Y p₁ p₂ t₁ t₂ : ℕ}
    (hmodulus : 0 < modulus)
    (hp₁ : Y < p₁) (hp : p₁ < p₂)
    (hclass : p₁ ≡ p₂ [MOD modulus])
    (heq₁ : p₁ ^ 2 * m = constant + modulus * t₁)
    (heq₂ : p₂ ^ 2 * m = constant + modulus * t₂) :
    2 * m * Y ≤ t₂ - t₁ := by
  have hpLe : p₁ ≤ p₂ := Nat.le_of_lt hp
  have hdvd : modulus ∣ p₂ - p₁ :=
    (Nat.modEq_iff_dvd' hpLe).mp hclass
  obtain ⟨step, hstep⟩ := hdvd
  have hstepPos : 0 < step := by
    by_contra hzero
    have : step = 0 := Nat.eq_zero_of_not_pos hzero
    subst step
    simp at hstep
    omega
  have hp₂eq : p₂ = p₁ + modulus * step := by omega
  have heqExpanded :
      constant + modulus * t₂ =
        constant + modulus * (t₁ + m * step * (p₂ + p₁)) := by
    calc
      constant + modulus * t₂ = p₂ ^ 2 * m := heq₂.symm
      _ = p₁ ^ 2 * m + modulus * (m * step * (p₂ + p₁)) := by
        rw [hp₂eq]
        ring
      _ = (constant + modulus * t₁) +
          modulus * (m * step * (p₂ + p₁)) := by rw [heq₁]
      _ = constant + modulus * (t₁ + m * step * (p₂ + p₁)) := by
        ring
  have htMul :
      modulus * t₂ = modulus * (t₁ + m * step * (p₂ + p₁)) :=
    Nat.add_left_cancel heqExpanded
  have ht : t₂ = t₁ + m * step * (p₂ + p₁) :=
    Nat.mul_left_cancel hmodulus htMul
  have hsum : 2 * Y ≤ p₂ + p₁ := by omega
  have hstepOne : 1 ≤ step := hstepPos
  have hproduct : (m * 1) * (2 * Y) ≤
      (m * step) * (p₂ + p₁) :=
    Nat.mul_le_mul (Nat.mul_le_mul_left m hstepOne) hsum
  rw [ht, Nat.add_sub_cancel_left]
  simpa only [mul_one] using (by
    nlinarith [hproduct] : 2 * m * Y ≤ m * step * (p₂ + p₁))

/-- The decidable literal witness predicate for one transformed root class. -/
def transformedParameterWitness
    (X Y m modulus constant residue t : ℕ) : Prop :=
    ∃ p ∈ Finset.range (constant + modulus * X + 1),
      Y < p ∧ p ≡ residue [MOD modulus] ∧
        p ^ 2 * m = constant + modulus * t

instance transformedParameterWitnessDecidable
    (X Y m modulus constant residue t : ℕ) :
    Decidable (transformedParameterWitness
      X Y m modulus constant residue t) := by
  unfold transformedParameterWitness
  infer_instance

/-- The actual finite set of progression parameters belonging to one
transformed root class.  The deliberately coarse prime range only makes the
definition finite; the equation itself supplies the sharp count. -/
def transformedParameterFibre
    (X Y m modulus constant residue : ℕ) : Finset ℕ :=
  (Finset.range X).filter fun t =>
    transformedParameterWitness X Y m modulus constant residue t

/-- Every literal transformed-equation fibre has the exact
endpoint-plus-spacing bound used by `transformedRoot_card_le_of_fibre_spacing`.
-/
theorem transformedParameterFibre_card_le
    {X Y m modulus constant residue : ℕ}
    (hY : 0 < Y) (hm : 0 < m) (hmodulus : 0 < modulus) :
    ((transformedParameterFibre X Y m modulus constant residue).card : ℚ) ≤
      1 + (X : ℚ) / (2 * m * Y) := by
  have hupper : ∀ t ∈ transformedParameterFibre X Y m modulus constant residue,
      t < X := by
    intro t ht
    exact Finset.mem_range.mp (Finset.mem_filter.mp ht).1
  have hgap :
      ∀ t₁ ∈ transformedParameterFibre X Y m modulus constant residue,
      ∀ t₂ ∈ transformedParameterFibre X Y m modulus constant residue,
        t₁ < t₂ → 2 * m * Y ≤ t₂ - t₁ := by
    intro t₁ ht₁ t₂ ht₂ hlt
    obtain ⟨p₁, hp₁Range, hp₁Y, hp₁Class, hp₁Eq⟩ :=
      (show transformedParameterWitness X Y m modulus constant residue t₁ from
        (Finset.mem_filter.mp ht₁).2)
    obtain ⟨p₂, hp₂Range, hp₂Y, hp₂Class, hp₂Eq⟩ :=
      (show transformedParameterWitness X Y m modulus constant residue t₂ from
        (Finset.mem_filter.mp ht₂).2)
    have hproduct : p₁ ^ 2 * m < p₂ ^ 2 * m := by
      rw [hp₁Eq, hp₂Eq]
      exact Nat.add_lt_add_left (Nat.mul_lt_mul_of_pos_left hlt hmodulus) constant
    have hsquare : p₁ ^ 2 < p₂ ^ 2 :=
      Nat.lt_of_mul_lt_mul_right hproduct
    have hpLt : p₁ < p₂ := by nlinarith
    exact transformedEquation_parameter_gap hmodulus hp₁Y hpLt
      (hp₁Class.trans hp₂Class.symm) hp₁Eq hp₂Eq
  have hbound := card_cast_le_one_add_div_of_pairwise_gap
    (transformedParameterFibre X Y m modulus constant residue)
    X (2 * m * Y) (by positivity) hupper hgap
  simpa only [Nat.cast_mul, Nat.cast_ofNat] using hbound

/-! ## Root-class cover for a literal transformed equation -/

def transformedRootResidues
    (m modulus constant : ℕ) : Finset ℕ :=
  (Finset.range modulus).filter fun residue =>
    residue ^ 2 * m ≡ constant [MOD modulus]

def transformedParameterSetWitness
    (X Y modulus constant : ℕ) (survivors : Finset ℕ) (t : ℕ) : Prop :=
  ∃ m ∈ survivors, ∃ p ∈ Finset.range (constant + modulus * X + 1),
    Y < p ∧ p ^ 2 * m = constant + modulus * t

instance transformedParameterSetWitnessDecidable
    (X Y modulus constant : ℕ) (survivors : Finset ℕ) (t : ℕ) :
    Decidable (transformedParameterSetWitness
      X Y modulus constant survivors t) := by
  unfold transformedParameterSetWitness
  infer_instance

def transformedParameterSet
    (X Y modulus constant : ℕ) (survivors : Finset ℕ) : Finset ℕ :=
  (Finset.range X).filter fun t =>
    transformedParameterSetWitness X Y modulus constant survivors t

lemma transformedRootResidues_mem_of_equation
    {m modulus constant t p : ℕ}
    (hmodulus : 0 < modulus)
    (hequation : p ^ 2 * m = constant + modulus * t) :
    p % modulus ∈ transformedRootResidues m modulus constant := by
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_range.mpr (Nat.mod_lt p hmodulus), ?_⟩
  have hpmod : (p % modulus) ^ 2 * m ≡ p ^ 2 * m [MOD modulus] :=
    ((Nat.mod_modEq p modulus).pow 2).mul_right m
  have heqmod : p ^ 2 * m ≡ constant [MOD modulus] := by
    rw [hequation]
    exact ((Nat.modEq_add_modulus_mul_iff).mpr
      (Nat.ModEq.refl constant)).symm
  exact hpmod.trans heqmod

theorem transformedParameterSet_subset_root_fibres
    {X Y modulus constant : ℕ} (survivors : Finset ℕ)
    (hmodulus : 0 < modulus) :
    transformedParameterSet X Y modulus constant survivors ⊆
      survivors.biUnion fun m =>
        (transformedRootResidues m modulus constant).biUnion fun residue =>
          transformedParameterFibre X Y m modulus constant residue := by
  intro t ht
  have htRange := (Finset.mem_filter.mp ht).1
  obtain ⟨m, hm, p, hpRange, hpY, hequation⟩ :=
    (show transformedParameterSetWitness
      X Y modulus constant survivors t from (Finset.mem_filter.mp ht).2)
  apply Finset.mem_biUnion.mpr
  refine ⟨m, hm, ?_⟩
  apply Finset.mem_biUnion.mpr
  refine ⟨p % modulus,
    transformedRootResidues_mem_of_equation hmodulus hequation, ?_⟩
  apply Finset.mem_filter.mpr
  refine ⟨htRange, ?_⟩
  exact ⟨p, hpRange, hpY, (Nat.mod_modEq p modulus).symm,
    hequation⟩

/-- A two-level finite union is bounded by the sum of all its fibre cards,
after coercion to the rationals. -/
theorem card_le_sum_biUnion_fibres
    {α : Type*} [DecidableEq α]
    (points : Finset α) (survivors : Finset ℕ)
    (roots : ℕ → Finset ℕ) (fibre : ℕ → ℕ → Finset α)
    (hcover : points ⊆ survivors.biUnion fun m =>
      (roots m).biUnion fun r => fibre m r) :
    (points.card : ℚ) ≤
      ∑ m ∈ survivors, ∑ r ∈ roots m, ((fibre m r).card : ℚ) := by
  have hcard :
      points.card ≤
        (survivors.biUnion fun m =>
          (roots m).biUnion fun r => fibre m r).card :=
    Finset.card_le_card hcover
  have houter :
      (survivors.biUnion fun m =>
        (roots m).biUnion fun r => fibre m r).card ≤
        ∑ m ∈ survivors,
          ((roots m).biUnion fun r => fibre m r).card := by
    simpa using Finset.card_biUnion_le
      (s := survivors)
      (t := fun m => (roots m).biUnion fun r => fibre m r)
  have hinner :
      ∑ m ∈ survivors,
          ((roots m).biUnion fun r => fibre m r).card ≤
        ∑ m ∈ survivors, ∑ r ∈ roots m, (fibre m r).card := by
    apply Finset.sum_le_sum
    intro m hm
    exact Finset.card_biUnion_le
  exact_mod_cast hcard.trans (houter.trans hinner)

/-- Abstract transformed-root payment.

For a fixed survivor `m` and root class `r`, the fibre is charged by one
endpoint plus the rational spacing term `X / (2*m*Y)`.  At most `height`
root classes occur, and the reciprocal mass of all survivors is at most four.
Consequently the complete point set costs at most
`height * (survivors.card + 2*X/Y)`.

The statement is deliberately uniform in all finite sets and maps: applying
it to an actual tail is a genuine all-`N` argument, not evaluation of a list
of values of `N`.
-/
theorem transformedRoot_card_le_of_fibre_spacing
    {α : Type*} [DecidableEq α]
    (points : Finset α) (survivors : Finset ℕ)
    (roots : ℕ → Finset ℕ) (fibre : ℕ → ℕ → Finset α)
    (X Y height : ℕ)
    (hY : 0 < Y)
    (hcover : points ⊆ survivors.biUnion fun m =>
      (roots m).biUnion fun r => fibre m r)
    (hmPos : ∀ m ∈ survivors, 0 < m)
    (hroots : ∀ m ∈ survivors, (roots m).card ≤ height)
    (hfibre : ∀ m ∈ survivors, ∀ r ∈ roots m,
      ((fibre m r).card : ℚ) ≤
        1 + (X : ℚ) / (2 * m * Y))
    (hreciprocal :
      ∑ m ∈ survivors, (1 : ℚ) / m ≤ 4) :
    (points.card : ℚ) ≤
      height * ((survivors.card : ℚ) + 2 * (X : ℚ) / Y) := by
  have hYQ : (0 : ℚ) < Y := by exact_mod_cast hY
  have hsum := card_le_sum_biUnion_fibres
    points survivors roots fibre hcover
  calc
    (points.card : ℚ) ≤
        ∑ m ∈ survivors, ∑ r ∈ roots m, ((fibre m r).card : ℚ) := hsum
    _ ≤ ∑ m ∈ survivors, ∑ _r ∈ roots m,
          (1 + (X : ℚ) / (2 * m * Y)) := by
      apply Finset.sum_le_sum
      intro m hm
      apply Finset.sum_le_sum
      intro r hr
      exact hfibre m hm r hr
    _ = ∑ m ∈ survivors,
          ((roots m).card : ℚ) *
            (1 + (X : ℚ) / (2 * m * Y)) := by
      apply Finset.sum_congr rfl
      intro m hm
      simp
      ring
    _ ≤ ∑ m ∈ survivors,
          (height : ℚ) * (1 + (X : ℚ) / (2 * m * Y)) := by
      apply Finset.sum_le_sum
      intro m hm
      have hmQ : (0 : ℚ) < m := by exact_mod_cast hmPos m hm
      have hrootQ : ((roots m).card : ℚ) ≤ height := by
        exact_mod_cast hroots m hm
      gcongr
    _ = (height : ℚ) *
          ((survivors.card : ℚ) +
            (X : ℚ) / (2 * Y) *
              (∑ m ∈ survivors, (1 : ℚ) / m)) := by
      calc
        ∑ m ∈ survivors,
            (height : ℚ) * (1 + (X : ℚ) / (2 * m * Y)) =
            ∑ m ∈ survivors,
              ((height : ℚ) +
                height * ((X : ℚ) / (2 * Y) * ((1 : ℚ) / m))) := by
          apply Finset.sum_congr rfl
          intro m hm
          have hmQ : (m : ℚ) ≠ 0 := by
            exact_mod_cast (Nat.ne_of_gt (hmPos m hm))
          field_simp
        _ = (height : ℚ) * (survivors.card : ℚ) +
              height * ((X : ℚ) / (2 * Y) *
                (∑ m ∈ survivors, (1 : ℚ) / m)) := by
          rw [Finset.sum_add_distrib]
          simp only [Finset.sum_const, nsmul_eq_mul]
          rw [Finset.mul_sum]
          rw [Finset.mul_sum]
          ring
        _ = (height : ℚ) *
              ((survivors.card : ℚ) +
                (X : ℚ) / (2 * Y) *
                  (∑ m ∈ survivors, (1 : ℚ) / m)) := by
          rw [mul_add]
    _ ≤ (height : ℚ) *
          ((survivors.card : ℚ) + (X : ℚ) / (2 * Y) * 4) := by
      gcongr
    _ = height * ((survivors.card : ℚ) + 2 * (X : ℚ) / Y) := by
      field_simp
      ring

/-- Literal transformed-equation specialization of
`transformedRoot_card_le_of_fibre_spacing`.  This theorem performs the
root-class cover internally, so an application only has to supply positivity,
the number of modular roots, and the reciprocal mass of the actual survivor
set. -/
theorem transformedParameterSet_card_le
    {X Y modulus constant height : ℕ} (survivors : Finset ℕ)
    (hY : 0 < Y) (hmodulus : 0 < modulus)
    (hmPos : ∀ m ∈ survivors, 0 < m)
    (hroots : ∀ m ∈ survivors,
      (transformedRootResidues m modulus constant).card ≤ height)
    (hreciprocal : ∑ m ∈ survivors, (1 : ℚ) / m ≤ 4) :
    ((transformedParameterSet X Y modulus constant survivors).card : ℚ) ≤
      height * ((survivors.card : ℚ) + 2 * (X : ℚ) / Y) := by
  exact transformedRoot_card_le_of_fibre_spacing
    (transformedParameterSet X Y modulus constant survivors)
    survivors (fun m => transformedRootResidues m modulus constant)
    (fun m residue =>
      transformedParameterFibre X Y m modulus constant residue)
    X Y height hY
    (transformedParameterSet_subset_root_fibres survivors hmodulus)
    hmPos hroots
    (fun m hm residue hresidue =>
      transformedParameterFibre_card_le hY (hmPos m hm) hmodulus)
    hreciprocal

#print axioms card_le_sum_biUnion_fibres
#print axioms card_le_div_add_one_of_pairwise_gap
#print axioms card_cast_le_one_add_div_of_pairwise_gap
#print axioms transformedEquation_parameter_gap
#print axioms transformedParameterFibre_card_le
#print axioms transformedParameterSet_card_le
#print axioms transformedRoot_card_le_of_fibre_spacing

end Erdos848
