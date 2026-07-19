import Erdos848.TailTransformedRootCounting

namespace Erdos848

/-!
# Refined transformed-root classes

The ordinary transformed equation has the form

`p^2 * m = constant + modulus * t`.

If an independent square-prime condition refines the witness prime from one
class modulo `modulus` to one class modulo `modulus * boost`, then consecutive
parameters are separated by an additional factor `boost`.  In the joint
high-low application, `boost = q^2`.
-/

/-- A refined root class multiplies the ordinary transformed-parameter gap by
the full refinement factor. -/
theorem transformedEquation_parameter_gap_refined
    {m modulus boost constant Y p₁ p₂ t₁ t₂ : ℕ}
    (hmodulus : 0 < modulus)
    (hp₁ : Y < p₁) (hp : p₁ < p₂)
    (hclass : p₁ ≡ p₂ [MOD modulus * boost])
    (heq₁ : p₁ ^ 2 * m = constant + modulus * t₁)
    (heq₂ : p₂ ^ 2 * m = constant + modulus * t₂) :
    2 * m * Y * boost ≤ t₂ - t₁ := by
  have hpLe : p₁ ≤ p₂ := Nat.le_of_lt hp
  have hdvd : modulus * boost ∣ p₂ - p₁ :=
    (Nat.modEq_iff_dvd' hpLe).mp hclass
  obtain ⟨step, hstep⟩ := hdvd
  have hstepPos : 0 < step := by
    by_contra hzero
    have : step = 0 := Nat.eq_zero_of_not_pos hzero
    subst step
    simp at hstep
    omega
  have hp₂eq : p₂ = p₁ + (modulus * boost) * step := by omega
  have heqExpanded :
      constant + modulus * t₂ =
        constant + modulus *
          (t₁ + boost * m * step * (p₂ + p₁)) := by
    calc
      constant + modulus * t₂ = p₂ ^ 2 * m := heq₂.symm
      _ = p₁ ^ 2 * m +
          modulus * (boost * m * step * (p₂ + p₁)) := by
        rw [hp₂eq]
        ring
      _ = (constant + modulus * t₁) +
          modulus * (boost * m * step * (p₂ + p₁)) := by rw [heq₁]
      _ = constant + modulus *
          (t₁ + boost * m * step * (p₂ + p₁)) := by ring
  have htMul :
      modulus * t₂ = modulus *
        (t₁ + boost * m * step * (p₂ + p₁)) :=
    Nat.add_left_cancel heqExpanded
  have ht :
      t₂ = t₁ + boost * m * step * (p₂ + p₁) :=
    Nat.mul_left_cancel hmodulus htMul
  have hsum : 2 * Y ≤ p₂ + p₁ := by omega
  have hstepOne : 1 ≤ step := hstepPos
  have hproduct :
      (boost * m * 1) * (2 * Y) ≤
        (boost * m * step) * (p₂ + p₁) :=
    Nat.mul_le_mul (Nat.mul_le_mul_left (boost * m) hstepOne) hsum
  rw [ht, Nat.add_sub_cancel_left]
  simpa [mul_assoc, mul_comm, mul_left_comm] using hproduct

/-- Literal witness predicate with separate equation and root-class moduli. -/
def refinedTransformedParameterWitness
    (X Y m modulus boost constant residue t : ℕ) : Prop :=
    ∃ p ∈ Finset.range (constant + modulus * X + 1),
      Y < p ∧ p ≡ residue [MOD modulus * boost] ∧
        p ^ 2 * m = constant + modulus * t

instance refinedTransformedParameterWitnessDecidable
    (X Y m modulus boost constant residue t : ℕ) :
    Decidable (refinedTransformedParameterWitness
      X Y m modulus boost constant residue t) := by
  unfold refinedTransformedParameterWitness
  infer_instance

def refinedTransformedParameterFibre
    (X Y m modulus boost constant residue : ℕ) : Finset ℕ :=
  (Finset.range X).filter fun t =>
    refinedTransformedParameterWitness
      X Y m modulus boost constant residue t

/-- Endpoint-plus-spacing payment for one refined root class. -/
theorem refinedTransformedParameterFibre_card_le
    {X Y m modulus boost constant residue : ℕ}
    (hY : 0 < Y) (hm : 0 < m)
    (hmodulus : 0 < modulus) (hboost : 0 < boost) :
    ((refinedTransformedParameterFibre
        X Y m modulus boost constant residue).card : ℚ) ≤
      1 + (X : ℚ) / (2 * m * Y * boost) := by
  have hupper : ∀ t ∈ refinedTransformedParameterFibre
      X Y m modulus boost constant residue, t < X := by
    intro t ht
    exact Finset.mem_range.mp (Finset.mem_filter.mp ht).1
  have hgap :
      ∀ t₁ ∈ refinedTransformedParameterFibre
          X Y m modulus boost constant residue,
      ∀ t₂ ∈ refinedTransformedParameterFibre
          X Y m modulus boost constant residue,
        t₁ < t₂ → 2 * m * Y * boost ≤ t₂ - t₁ := by
    intro t₁ ht₁ t₂ ht₂ hlt
    obtain ⟨p₁, hp₁Range, hp₁Y, hp₁Class, hp₁Eq⟩ :=
      (show refinedTransformedParameterWitness
        X Y m modulus boost constant residue t₁ from
          (Finset.mem_filter.mp ht₁).2)
    obtain ⟨p₂, hp₂Range, hp₂Y, hp₂Class, hp₂Eq⟩ :=
      (show refinedTransformedParameterWitness
        X Y m modulus boost constant residue t₂ from
          (Finset.mem_filter.mp ht₂).2)
    have hproduct : p₁ ^ 2 * m < p₂ ^ 2 * m := by
      rw [hp₁Eq, hp₂Eq]
      exact Nat.add_lt_add_left
        (Nat.mul_lt_mul_of_pos_left hlt hmodulus) constant
    have hsquare : p₁ ^ 2 < p₂ ^ 2 :=
      Nat.lt_of_mul_lt_mul_right hproduct
    have hpLt : p₁ < p₂ := by nlinarith
    exact transformedEquation_parameter_gap_refined
      hmodulus hp₁Y hpLt
        (hp₁Class.trans hp₂Class.symm) hp₁Eq hp₂Eq
  have hbound := card_cast_le_one_add_div_of_pairwise_gap
    (refinedTransformedParameterFibre
      X Y m modulus boost constant residue)
    X (2 * m * Y * boost) (by positivity) hupper hgap
  simpa only [Nat.cast_mul, Nat.cast_ofNat] using hbound

/-! ## A fixed parameter residue as an expanded transformed modulus -/

/-- The literal part of a transformed parameter set lying in one residue
class modulo `boost`. -/
def transformedParameterSetAtResidue
    (X Y modulus constant : ℕ) (survivors : Finset ℕ)
    (boost offset : ℕ) : Finset ℕ :=
  (transformedParameterSet X Y modulus constant survivors).filter fun t =>
    t % boost = offset

/-- Keeping the parameter residue modulo `boost` refines every root class to
modulus `modulus * boost`.  The adjusted constant is the literal substitution
`constant + modulus * offset`; no approximation or interval split occurs. -/
theorem transformedParameterSetAtResidue_subset_refinedRootFibres
    {X Y modulus constant boost offset : ℕ} (survivors : Finset ℕ)
    (hmodulus : 0 < modulus) (hboost : 0 < boost) :
    transformedParameterSetAtResidue
        X Y modulus constant survivors boost offset ⊆
      survivors.biUnion fun m =>
        (transformedRootResidues m (modulus * boost)
          (constant + modulus * offset)).biUnion fun residue =>
            refinedTransformedParameterFibre
              X Y m modulus boost constant residue := by
  intro t ht
  have htParts := Finset.mem_filter.mp ht
  have htSet := Finset.mem_filter.mp htParts.1
  obtain ⟨m, hm, p, hpRange, hpY, hequation⟩ :=
    (show transformedParameterSetWitness
      X Y modulus constant survivors t from htSet.2)
  have htDecomp : t = offset + boost * (t / boost) := by
    calc
      t = t % boost + boost * (t / boost) :=
        (Nat.mod_add_div t boost).symm
      _ = offset + boost * (t / boost) := by rw [htParts.2]
  have hadjusted :
      p ^ 2 * m =
        (constant + modulus * offset) +
          (modulus * boost) * (t / boost) := by
    calc
      p ^ 2 * m = constant + modulus * t := hequation
      _ = (constant + modulus * offset) +
          (modulus * boost) * (t / boost) := by
        conv_lhs => rw [htDecomp]
        ring
  apply Finset.mem_biUnion.mpr
  refine ⟨m, hm, ?_⟩
  apply Finset.mem_biUnion.mpr
  refine ⟨p % (modulus * boost), ?_, ?_⟩
  · exact transformedRootResidues_mem_of_equation
      (Nat.mul_pos hmodulus hboost) hadjusted
  · apply Finset.mem_filter.mpr
    refine ⟨htSet.1, ?_⟩
    exact ⟨p, hpRange, hpY,
      (Nat.mod_modEq p (modulus * boost)).symm, hequation⟩

/-- Refined transformed-root payment for one retained parameter residue.
Compared with the ordinary bound, the complete spacing term gains the factor
`boost`; only the number of roots of the expanded modulus remains to be
supplied by the arithmetic application. -/
theorem transformedParameterSetAtResidue_card_le
    {X Y modulus constant boost offset height : ℕ}
    (survivors : Finset ℕ)
    (hY : 0 < Y) (hmodulus : 0 < modulus) (hboost : 0 < boost)
    (hmPos : ∀ m ∈ survivors, 0 < m)
    (hroots : ∀ m ∈ survivors,
      (transformedRootResidues m (modulus * boost)
        (constant + modulus * offset)).card ≤ height)
    (hreciprocal : ∑ m ∈ survivors, (1 : ℚ) / m ≤ 4) :
    ((transformedParameterSetAtResidue
      X Y modulus constant survivors boost offset).card : ℚ) ≤
      height * ((survivors.card : ℚ) +
        2 * (X : ℚ) / (Y * boost)) := by
  simpa only [Nat.cast_mul] using
    (transformedRoot_card_le_of_fibre_spacing
      (transformedParameterSetAtResidue
        X Y modulus constant survivors boost offset)
      survivors
      (fun m => transformedRootResidues m (modulus * boost)
        (constant + modulus * offset))
      (fun m residue => refinedTransformedParameterFibre
        X Y m modulus boost constant residue)
      X (Y * boost) height (Nat.mul_pos hY hboost)
      (transformedParameterSetAtResidue_subset_refinedRootFibres
        survivors hmodulus hboost)
      hmPos hroots
      (by
        intro m hm residue hresidue
        simpa only [Nat.cast_mul, mul_assoc] using
          (refinedTransformedParameterFibre_card_le
            (X := X) (Y := Y) (m := m) (modulus := modulus)
            (boost := boost) (constant := constant) (residue := residue)
            hY (hmPos m hm) hmodulus hboost))
      hreciprocal)

#print axioms transformedEquation_parameter_gap_refined
#print axioms refinedTransformedParameterFibre_card_le
#print axioms transformedParameterSetAtResidue_subset_refinedRootFibres
#print axioms transformedParameterSetAtResidue_card_le

end Erdos848
