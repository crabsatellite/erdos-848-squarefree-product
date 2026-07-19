import Erdos848.TailCRTCounting
import Erdos848.TailFiveMillionFiniteDensity
import Erdos848.TailPureFiveMillionMedium
import Erdos848.TailZModArithmetic

namespace Erdos848

/-!
# Exact periodic union for the primes two, three, and seven

On one fixed residue class modulo `25`, write a point as `25 * q + r`.
For one pivot, each of the events

* `4 ∣ pivot * point + 1`,
* `9 ∣ pivot * point + 1`,
* `49 ∣ pivot * point + 1`

occupies at most one coordinate hyperplane in
`Fin 4 × Fin 9 × Fin 49`.  Their union therefore has at most

`4 * 9 * 49 - 3 * 8 * 48 = 612`

residues in a period of length `1764`.  This is a structural count; no
enumeration over the pivot or over values of `N` is used.
-/

def globalMixedSmallCoordinateHyperplanes
    (rootFour : Fin 4) (rootNine : Fin 9) (rootFortyNine : Fin 49) :
    Finset FiveMillionPeriodicResidue :=
  Finset.univ.filter fun residue =>
    residue.1 = rootFour ∨
      residue.2.1 = rootNine ∨
        residue.2.2 = rootFortyNine

/-- The exact three-hyperplane union count `441 + 196 + 36 - 49 - 9 - 4 + 1`.
The proof is symbolic in the three roots. -/
theorem globalMixedSmallCoordinateHyperplanes_card
    (rootFour : Fin 4) (rootNine : Fin 9) (rootFortyNine : Fin 49) :
    (globalMixedSmallCoordinateHyperplanes
      rootFour rootNine rootFortyNine).card = 612 := by
  classical
  let predicate : FiveMillionPeriodicResidue → Prop := fun residue =>
    residue.1 = rootFour ∨
      residue.2.1 = rootNine ∨
        residue.2.2 = rootFortyNine
  have hcomplement :
      ((Finset.univ : Finset FiveMillionPeriodicResidue).filter fun residue =>
        ¬ predicate residue).card = 1152 := by
    have hset :
        ((Finset.univ : Finset FiveMillionPeriodicResidue).filter fun residue =>
          ¬ predicate residue) =
        ((Finset.univ : Finset (Fin 4)).erase rootFour).product
          (((Finset.univ : Finset (Fin 9)).erase rootNine).product
            ((Finset.univ : Finset (Fin 49)).erase rootFortyNine)) := by
      ext residue
      simp [predicate]
    rw [hset]
    simp
  have hpartition := Finset.card_filter_add_card_filter_not
    (s := (Finset.univ : Finset FiveMillionPeriodicResidue))
    (p := predicate)
  change
    (globalMixedSmallCoordinateHyperplanes
      rootFour rootNine rootFortyNine).card +
        ((Finset.univ : Finset FiveMillionPeriodicResidue).filter fun residue =>
          ¬ predicate residue).card =
      (Finset.univ : Finset FiveMillionPeriodicResidue).card at hpartition
  rw [hcomplement] at hpartition
  norm_num at hpartition ⊢
  omega

def globalMixedSmallTriple (q : Nat) : FiveMillionPeriodicResidue :=
  (⟨q % 4, Nat.mod_lt q (by norm_num)⟩,
    (⟨q % 9, Nat.mod_lt q (by norm_num)⟩,
      ⟨q % 49, Nat.mod_lt q (by norm_num)⟩))

lemma globalMixedSmallTriple_injective_in_period
    {x y : Nat} (hx : x < 1764) (hy : y < 1764)
    (hxy : globalMixedSmallTriple x = globalMixedSmallTriple y) :
    x = y := by
  simp only [globalMixedSmallTriple, Prod.mk.injEq, Fin.mk.injEq] at hxy
  rcases hxy with ⟨h4, h9, h49⟩
  omega

lemma globalMixedSmallTriple_mod_period (q : Nat) :
    globalMixedSmallTriple (q % 1764) = globalMixedSmallTriple q := by
  simp only [globalMixedSmallTriple, Prod.mk.injEq, Fin.mk.injEq]
  omega

def globalMixedSmallFourEquation
    (baseResidue pivot : Nat) (q : Fin 4) : Prop :=
  (pivot : ZMod 4) *
      ((25 : ZMod 4) * (q.val : ZMod 4) + baseResidue) + 1 = 0

def globalMixedSmallNineEquation
    (baseResidue pivot : Nat) (q : Fin 9) : Prop :=
  (pivot : ZMod 9) *
      ((25 : ZMod 9) * (q.val : ZMod 9) + baseResidue) + 1 = 0

def globalMixedSmallFortyNineEquation
    (baseResidue pivot : Nat) (q : Fin 49) : Prop :=
  (pivot : ZMod 49) *
      ((25 : ZMod 49) * (q.val : ZMod 49) + baseResidue) + 1 = 0

noncomputable def globalMixedSmallFourRoot
    (baseResidue pivot : Nat) : Fin 4 := by
  classical
  exact if h : ∃ q, globalMixedSmallFourEquation baseResidue pivot q then
    Classical.choose h
  else 0

noncomputable def globalMixedSmallNineRoot
    (baseResidue pivot : Nat) : Fin 9 := by
  classical
  exact if h : ∃ q, globalMixedSmallNineEquation baseResidue pivot q then
    Classical.choose h
  else 0

noncomputable def globalMixedSmallFortyNineRoot
    (baseResidue pivot : Nat) : Fin 49 := by
  classical
  exact if h : ∃ q, globalMixedSmallFortyNineEquation baseResidue pivot q then
    Classical.choose h
  else 0

lemma globalMixedSmallFourRoot_eq_of_equation
    {baseResidue pivot : Nat} {q : Fin 4}
    (hq : globalMixedSmallFourEquation baseResidue pivot q) :
    globalMixedSmallFourRoot baseResidue pivot = q := by
  rw [globalMixedSmallFourRoot, dif_pos ⟨q, hq⟩]
  have hchosen := Classical.choose_spec
    (show ∃ r, globalMixedSmallFourEquation baseResidue pivot r from ⟨q, hq⟩)
  have haffine := mul_add_one_right_unique hchosen hq
  apply fin_eq_of_zmod_val_eq
  exact affine_eq_of_unit_coefficient
    (by decide : (1 : ZMod 4) * 25 = 1) haffine

lemma globalMixedSmallNineRoot_eq_of_equation
    {baseResidue pivot : Nat} {q : Fin 9}
    (hq : globalMixedSmallNineEquation baseResidue pivot q) :
    globalMixedSmallNineRoot baseResidue pivot = q := by
  rw [globalMixedSmallNineRoot, dif_pos ⟨q, hq⟩]
  have hchosen := Classical.choose_spec
    (show ∃ r, globalMixedSmallNineEquation baseResidue pivot r from ⟨q, hq⟩)
  have haffine := mul_add_one_right_unique hchosen hq
  apply fin_eq_of_zmod_val_eq
  exact affine_eq_of_unit_coefficient
    (by decide : (4 : ZMod 9) * 25 = 1) haffine

lemma globalMixedSmallFortyNineRoot_eq_of_equation
    {baseResidue pivot : Nat} {q : Fin 49}
    (hq : globalMixedSmallFortyNineEquation baseResidue pivot q) :
    globalMixedSmallFortyNineRoot baseResidue pivot = q := by
  rw [globalMixedSmallFortyNineRoot, dif_pos ⟨q, hq⟩]
  have hchosen := Classical.choose_spec
    (show ∃ r, globalMixedSmallFortyNineEquation baseResidue pivot r from
      ⟨q, hq⟩)
  have haffine := mul_add_one_right_unique hchosen hq
  apply fin_eq_of_zmod_val_eq
  exact affine_eq_of_unit_coefficient
    (by decide : (2 : ZMod 49) * 25 = 1) haffine

lemma globalMixedSmallTriple_four_cast (q : Nat) :
    (((globalMixedSmallTriple q).1.val : Nat) : ZMod 4) =
      (q : ZMod 4) := by
  change ((q % 4 : Nat) : ZMod 4) = (q : ZMod 4)
  simpa [ZMod.val_natCast] using
    (ZMod.natCast_zmod_val (q : ZMod 4))

lemma globalMixedSmallTriple_nine_cast (q : Nat) :
    (((globalMixedSmallTriple q).2.1.val : Nat) : ZMod 9) =
      (q : ZMod 9) := by
  change ((q % 9 : Nat) : ZMod 9) = (q : ZMod 9)
  simpa [ZMod.val_natCast] using
    (ZMod.natCast_zmod_val (q : ZMod 9))

lemma globalMixedSmallTriple_fortyNine_cast (q : Nat) :
    (((globalMixedSmallTriple q).2.2.val : Nat) : ZMod 49) =
      (q : ZMod 49) := by
  change ((q % 49 : Nat) : ZMod 49) = (q : ZMod 49)
  simpa [ZMod.val_natCast] using
    (ZMod.natCast_zmod_val (q : ZMod 49))

lemma globalMixedSmallFourRoot_classifies
    {baseResidue pivot point : Nat}
    (hpoint : point % 25 = baseResidue)
    (hevent : 4 ∣ pivot * point + 1) :
    (globalMixedSmallTriple (point / 25)).1 =
      globalMixedSmallFourRoot baseResidue pivot := by
  have hequation := zmod_base_quotient_equation_of_event
    (modulus := 4) hpoint hevent
  rw [← globalMixedSmallTriple_four_cast (point / 25)] at hequation
  exact (globalMixedSmallFourRoot_eq_of_equation hequation).symm

lemma globalMixedSmallNineRoot_classifies
    {baseResidue pivot point : Nat}
    (hpoint : point % 25 = baseResidue)
    (hevent : 9 ∣ pivot * point + 1) :
    (globalMixedSmallTriple (point / 25)).2.1 =
      globalMixedSmallNineRoot baseResidue pivot := by
  have hequation := zmod_base_quotient_equation_of_event
    (modulus := 9) hpoint hevent
  rw [← globalMixedSmallTriple_nine_cast (point / 25)] at hequation
  exact (globalMixedSmallNineRoot_eq_of_equation hequation).symm

lemma globalMixedSmallFortyNineRoot_classifies
    {baseResidue pivot point : Nat}
    (hpoint : point % 25 = baseResidue)
    (hevent : 49 ∣ pivot * point + 1) :
    (globalMixedSmallTriple (point / 25)).2.2 =
      globalMixedSmallFortyNineRoot baseResidue pivot := by
  have hequation := zmod_base_quotient_equation_of_event
    (modulus := 49) hpoint hevent
  rw [← globalMixedSmallTriple_fortyNine_cast (point / 25)] at hequation
  exact (globalMixedSmallFortyNineRoot_eq_of_equation hequation).symm

noncomputable def globalMixedSmallPeriodicNatResidues
    (baseResidue pivot : Nat) : Finset Nat :=
  (Finset.range 1764).filter fun q =>
    globalMixedSmallTriple q ∈
      globalMixedSmallCoordinateHyperplanes
        (globalMixedSmallFourRoot baseResidue pivot)
        (globalMixedSmallNineRoot baseResidue pivot)
        (globalMixedSmallFortyNineRoot baseResidue pivot)

lemma globalMixedSmallPeriodicNatResidues_subset_range
    (baseResidue pivot : Nat) :
    globalMixedSmallPeriodicNatResidues baseResidue pivot ⊆
      Finset.range 1764 :=
  Finset.filter_subset _ _

theorem globalMixedSmallPeriodicNatResidues_card_le
    (baseResidue pivot : Nat) :
    (globalMixedSmallPeriodicNatResidues baseResidue pivot).card ≤ 612 := by
  let residues := globalMixedSmallPeriodicNatResidues baseResidue pivot
  let hyperplanes := globalMixedSmallCoordinateHyperplanes
    (globalMixedSmallFourRoot baseResidue pivot)
    (globalMixedSmallNineRoot baseResidue pivot)
    (globalMixedSmallFortyNineRoot baseResidue pivot)
  have hmap : Set.MapsTo globalMixedSmallTriple
      (residues : Set Nat) hyperplanes := by
    intro q hq
    exact (Finset.mem_filter.mp hq).2
  have hinj : Set.InjOn globalMixedSmallTriple (residues : Set Nat) := by
    intro x hx y hy hxy
    exact globalMixedSmallTriple_injective_in_period
      (Finset.mem_range.mp (Finset.mem_filter.mp hx).1)
      (Finset.mem_range.mp (Finset.mem_filter.mp hy).1) hxy
  have hcard : residues.card ≤ hyperplanes.card :=
    Finset.card_le_card_of_injOn globalMixedSmallTriple hmap hinj
  rw [globalMixedSmallCoordinateHyperplanes_card] at hcard
  exact hcard

theorem globalMixedSmallPeriodicNatResidues_classifies
    {baseResidue pivot point : Nat}
    (hpoint : point % 25 = baseResidue)
    (hevent :
      4 ∣ pivot * point + 1 ∨
        9 ∣ pivot * point + 1 ∨
          49 ∣ pivot * point + 1) :
    (point / 25) % 1764 ∈
      globalMixedSmallPeriodicNatResidues baseResidue pivot := by
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_range.mpr (Nat.mod_lt _ (by norm_num)), ?_⟩
  rw [globalMixedSmallTriple_mod_period]
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_univ _, ?_⟩
  rcases hevent with hfour | hnine | hfortyNine
  · exact Or.inl (globalMixedSmallFourRoot_classifies hpoint hfour)
  · exact Or.inr (Or.inl
      (globalMixedSmallNineRoot_classifies hpoint hnine))
  · exact Or.inr (Or.inr
      (globalMixedSmallFortyNineRoot_classifies hpoint hfortyNine))

/-- A `612`-residue periodic set has density `17/49` and exact worst-prefix
excess `19584/49`. -/
theorem globalMixedPeriodicResidueSet_count_le_612
    (residues : Finset Nat) (length : Nat)
    (hresidues : residues ⊆ Finset.range 1764)
    (hcard : residues.card ≤ 612) :
    (((Finset.range length).filter fun q =>
        q % 1764 ∈ residues).card : Rat) ≤
      (17 / 49 : Rat) * length + 19584 / 49 := by
  have hscaled := finiteResidueCount_scaled_le
    residues 1764 length (by norm_num) hresidues
  have hperiodCard : residues.card ≤ 1764 := by
    simpa using Finset.card_le_card hresidues
  have hprefixMono :
      residues.card * (1764 - residues.card) ≤
        612 * (1764 - 612) := by
    have hsub : 1764 - residues.card + residues.card = 1764 :=
      Nat.sub_add_cancel hperiodCard
    nlinarith
  have hmainMono : residues.card * length ≤ 612 * length :=
    Nat.mul_le_mul_right length hcard
  have hscaled' :
      1764 * ((Finset.range length).filter fun q =>
          q % 1764 ∈ residues).card ≤
        612 * length + 612 * (1764 - 612) := by
    exact hscaled.trans (Nat.add_le_add hmainMono hprefixMono)
  norm_num at hscaled'
  have hscaledQ :
      (1764 : Rat) * (((Finset.range length).filter fun q =>
          q % 1764 ∈ residues).card : Rat) ≤
        612 * (length : Rat) + 705024 := by
    exact_mod_cast hscaled'
  linarith

/-- Inject one literal mod-25 progression into its quotient coordinate and
apply the `612 / 1764` periodic prefix bound. -/
theorem globalMixedBaseProgressionSubset_card_le_periodic
    {N : Nat} {S residues : Finset Nat} {baseResidue : Nat}
    (hSBounds : ∀ point ∈ S, point ∈ Finset.Icc 1 N)
    (hSMod : ∀ point ∈ S, point % 25 = baseResidue)
    (hresidue : ∀ point ∈ S, (point / 25) % 1764 ∈ residues)
    (hresidues : residues ⊆ Finset.range 1764)
    (hcard : residues.card ≤ 612) :
    (S.card : Rat) ≤
      (17 / 49 : Rat) * ((N : Rat) / 25 + 1) + 19584 / 49 := by
  let target := (Finset.range (N / 25 + 1)).filter fun q =>
    q % 1764 ∈ residues
  have hmap : Set.MapsTo (fun point : Nat => point / 25)
      (S : Set Nat) target := by
    intro point hpoint
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_range.mpr ?_, hresidue point hpoint⟩
    change point / 25 < N / 25 + 1
    have hpointN := (Finset.mem_Icc.mp (hSBounds point hpoint)).2
    have hdiv : point / 25 ≤ N / 25 := Nat.div_le_div_right hpointN
    exact Nat.lt_succ_of_le hdiv
  have hinj : Set.InjOn (fun point : Nat => point / 25) (S : Set Nat) := by
    intro x hx y hy hquotient
    have hxmod := hSMod x hx
    have hymod := hSMod y hy
    change x / 25 = y / 25 at hquotient
    calc
      x = x % 25 + 25 * (x / 25) := (Nat.mod_add_div x 25).symm
      _ = y % 25 + 25 * (y / 25) := by rw [hxmod, hymod, hquotient]
      _ = y := Nat.mod_add_div y 25
  have hSCard : S.card ≤ target.card :=
    Finset.card_le_card_of_injOn (fun point : Nat => point / 25) hmap hinj
  have htarget := globalMixedPeriodicResidueSet_count_le_612
    residues (N / 25 + 1) hresidues hcard
  have hSCardQ : (S.card : Rat) ≤ (target.card : Rat) := by
    exact_mod_cast hSCard
  have hdiv : (((N / 25 : Nat) : Rat)) ≤ (N : Rat) / 25 :=
    Nat.cast_div_le
  calc
    (S.card : Rat) ≤ (target.card : Rat) := hSCardQ
    _ ≤ (17 / 49 : Rat) * (N / 25 + 1 : Nat) + 19584 / 49 := by
      simpa [target] using htarget
    _ ≤ (17 / 49 : Rat) * ((N : Rat) / 25 + 1) + 19584 / 49 := by
      push_cast
      gcongr

def globalMixedDegreeSmallPrimes : Finset Nat := {2, 3, 7}

/-- The literal union of the `2²`, `3²`, and `7²` events on one sharp base
progression.  The endpoint payment is one periodic-prefix excess, rather than
three independent ceiling errors. -/
theorem globalMixedDegreeSmallPoints_periodic_ratio_le
    {N pivot baseResidue : Nat} (hN : 0 < N) :
    ((baseResiduePrimeSquareUnion N pivot baseResidue
      globalMixedDegreeSmallPrimes).card : Rat) / N ≤
        17 / 1225 + 19601 / (49 * N) := by
  let small := baseResiduePrimeSquareUnion N pivot baseResidue
    globalMixedDegreeSmallPrimes
  let residues := globalMixedSmallPeriodicNatResidues baseResidue pivot
  have hbounds : ∀ point ∈ small, point ∈ Finset.Icc 1 N := by
    intro point hpoint
    obtain ⟨prime, _hprime, hpointPrime⟩ := Finset.mem_biUnion.mp hpoint
    exact (Finset.mem_filter.mp
      (Finset.mem_filter.mp hpointPrime).1).1
  have hmod : ∀ point ∈ small, point % 25 = baseResidue := by
    intro point hpoint
    obtain ⟨prime, _hprime, hpointPrime⟩ := Finset.mem_biUnion.mp hpoint
    exact (Finset.mem_filter.mp
      (Finset.mem_filter.mp hpointPrime).1).2
  have hclassifies : ∀ point ∈ small,
      (point / 25) % 1764 ∈ residues := by
    intro point hpoint
    obtain ⟨prime, hprime, hpointPrime⟩ := Finset.mem_biUnion.mp hpoint
    have hpointMod := (Finset.mem_filter.mp
      (Finset.mem_filter.mp hpointPrime).1).2
    have hevent := (Finset.mem_filter.mp hpointPrime).2
    apply globalMixedSmallPeriodicNatResidues_classifies hpointMod
    simp [globalMixedDegreeSmallPrimes] at hprime
    rcases hprime with rfl | rfl | rfl
    · exact Or.inl (by norm_num at hevent ⊢; exact hevent)
    · exact Or.inr (Or.inl (by norm_num at hevent ⊢; exact hevent))
    · exact Or.inr (Or.inr (by norm_num at hevent ⊢; exact hevent))
  have hbound := globalMixedBaseProgressionSubset_card_le_periodic
    (S := small) (residues := residues) (baseResidue := baseResidue)
    hbounds hmod hclassifies
    (globalMixedSmallPeriodicNatResidues_subset_range baseResidue pivot)
    (globalMixedSmallPeriodicNatResidues_card_le baseResidue pivot)
  have hNQ : (0 : Rat) < N := by exact_mod_cast hN
  calc
    ((baseResiduePrimeSquareUnion N pivot baseResidue
      globalMixedDegreeSmallPrimes).card : Rat) / N =
        (small.card : Rat) / N := rfl
    _ ≤ ((17 / 49 : Rat) * ((N : Rat) / 25 + 1) + 19584 / 49) / N :=
      div_le_div_of_nonneg_right hbound hNQ.le
    _ = 17 / 1225 + 19601 / (49 * N) := by
      field_simp
      ring

def globalMixedEvenSmallCoordinateHyperplanes
    (rootNine : Fin 9) (rootFortyNine : Fin 49) :
    Finset FiveMillionPeriodicResidue :=
  Finset.univ.filter fun residue =>
    residue.2.1 = rootNine ∨ residue.2.2 = rootFortyNine

/-- When the pivot is even, the `2²` event is empty.  The two remaining
coordinate hyperplanes occupy `4 * (49 + 9 - 1) = 228` residues. -/
theorem globalMixedEvenSmallCoordinateHyperplanes_card
    (rootNine : Fin 9) (rootFortyNine : Fin 49) :
    (globalMixedEvenSmallCoordinateHyperplanes
      rootNine rootFortyNine).card = 228 := by
  classical
  let predicate : FiveMillionPeriodicResidue → Prop := fun residue =>
    residue.2.1 = rootNine ∨ residue.2.2 = rootFortyNine
  have hcomplement :
      ((Finset.univ : Finset FiveMillionPeriodicResidue).filter fun residue =>
        ¬ predicate residue).card = 1536 := by
    have hset :
        ((Finset.univ : Finset FiveMillionPeriodicResidue).filter fun residue =>
          ¬ predicate residue) =
        (Finset.univ : Finset (Fin 4)).product
          (((Finset.univ : Finset (Fin 9)).erase rootNine).product
            ((Finset.univ : Finset (Fin 49)).erase rootFortyNine)) := by
      ext residue
      simp [predicate]
    rw [hset]
    simp
  have hpartition := Finset.card_filter_add_card_filter_not
    (s := (Finset.univ : Finset FiveMillionPeriodicResidue))
    (p := predicate)
  change
    (globalMixedEvenSmallCoordinateHyperplanes
      rootNine rootFortyNine).card +
        ((Finset.univ : Finset FiveMillionPeriodicResidue).filter fun residue =>
          ¬ predicate residue).card =
      (Finset.univ : Finset FiveMillionPeriodicResidue).card at hpartition
  rw [hcomplement] at hpartition
  norm_num at hpartition ⊢
  omega

noncomputable def globalMixedEvenSmallPeriodicNatResidues
    (baseResidue pivot : Nat) : Finset Nat :=
  (Finset.range 1764).filter fun q =>
    globalMixedSmallTriple q ∈
      globalMixedEvenSmallCoordinateHyperplanes
        (globalMixedSmallNineRoot baseResidue pivot)
        (globalMixedSmallFortyNineRoot baseResidue pivot)

lemma globalMixedEvenSmallPeriodicNatResidues_subset_range
    (baseResidue pivot : Nat) :
    globalMixedEvenSmallPeriodicNatResidues baseResidue pivot ⊆
      Finset.range 1764 :=
  Finset.filter_subset _ _

theorem globalMixedEvenSmallPeriodicNatResidues_card_le
    (baseResidue pivot : Nat) :
    (globalMixedEvenSmallPeriodicNatResidues baseResidue pivot).card ≤ 228 := by
  let residues := globalMixedEvenSmallPeriodicNatResidues baseResidue pivot
  let hyperplanes := globalMixedEvenSmallCoordinateHyperplanes
    (globalMixedSmallNineRoot baseResidue pivot)
    (globalMixedSmallFortyNineRoot baseResidue pivot)
  have hmap : Set.MapsTo globalMixedSmallTriple
      (residues : Set Nat) hyperplanes := by
    intro q hq
    exact (Finset.mem_filter.mp hq).2
  have hinj : Set.InjOn globalMixedSmallTriple (residues : Set Nat) := by
    intro x hx y hy hxy
    exact globalMixedSmallTriple_injective_in_period
      (Finset.mem_range.mp (Finset.mem_filter.mp hx).1)
      (Finset.mem_range.mp (Finset.mem_filter.mp hy).1) hxy
  have hcard : residues.card ≤ hyperplanes.card :=
    Finset.card_le_card_of_injOn globalMixedSmallTriple hmap hinj
  rw [globalMixedEvenSmallCoordinateHyperplanes_card] at hcard
  exact hcard

theorem globalMixedEvenSmallPeriodicNatResidues_classifies
    {baseResidue pivot point : Nat}
    (hpoint : point % 25 = baseResidue)
    (hevent :
      9 ∣ pivot * point + 1 ∨ 49 ∣ pivot * point + 1) :
    (point / 25) % 1764 ∈
      globalMixedEvenSmallPeriodicNatResidues baseResidue pivot := by
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_range.mpr (Nat.mod_lt _ (by norm_num)), ?_⟩
  rw [globalMixedSmallTriple_mod_period]
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_univ _, ?_⟩
  rcases hevent with hnine | hfortyNine
  · exact Or.inl (globalMixedSmallNineRoot_classifies hpoint hnine)
  · exact Or.inr
      (globalMixedSmallFortyNineRoot_classifies hpoint hfortyNine)

theorem globalMixedPeriodicResidueSet_count_le_228
    (residues : Finset Nat) (length : Nat)
    (hresidues : residues ⊆ Finset.range 1764)
    (hcard : residues.card ≤ 228) :
    (((Finset.range length).filter fun q =>
        q % 1764 ∈ residues).card : Rat) ≤
      (19 / 147 : Rat) * length + 9728 / 49 := by
  have hscaled := finiteResidueCount_scaled_le
    residues 1764 length (by norm_num) hresidues
  have hperiodCard : residues.card ≤ 1764 := by
    simpa using Finset.card_le_card hresidues
  have hprefixMono :
      residues.card * (1764 - residues.card) ≤
        228 * (1764 - 228) := by
    have hsub : 1764 - residues.card + residues.card = 1764 :=
      Nat.sub_add_cancel hperiodCard
    nlinarith
  have hmainMono : residues.card * length ≤ 228 * length :=
    Nat.mul_le_mul_right length hcard
  have hscaled' :
      1764 * ((Finset.range length).filter fun q =>
          q % 1764 ∈ residues).card ≤
        228 * length + 228 * (1764 - 228) := by
    exact hscaled.trans (Nat.add_le_add hmainMono hprefixMono)
  norm_num at hscaled'
  have hscaledQ :
      (1764 : Rat) * (((Finset.range length).filter fun q =>
          q % 1764 ∈ residues).card : Rat) ≤
        228 * (length : Rat) + 350208 := by
    exact_mod_cast hscaled'
  linarith

theorem globalMixedEvenBaseProgressionSubset_card_le_periodic
    {N : Nat} {S residues : Finset Nat} {baseResidue : Nat}
    (hSBounds : ∀ point ∈ S, point ∈ Finset.Icc 1 N)
    (hSMod : ∀ point ∈ S, point % 25 = baseResidue)
    (hresidue : ∀ point ∈ S, (point / 25) % 1764 ∈ residues)
    (hresidues : residues ⊆ Finset.range 1764)
    (hcard : residues.card ≤ 228) :
    (S.card : Rat) ≤
      (19 / 147 : Rat) * ((N : Rat) / 25 + 1) + 9728 / 49 := by
  let target := (Finset.range (N / 25 + 1)).filter fun q =>
    q % 1764 ∈ residues
  have hmap : Set.MapsTo (fun point : Nat => point / 25)
      (S : Set Nat) target := by
    intro point hpoint
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_range.mpr ?_, hresidue point hpoint⟩
    change point / 25 < N / 25 + 1
    have hpointN := (Finset.mem_Icc.mp (hSBounds point hpoint)).2
    exact Nat.lt_succ_of_le (Nat.div_le_div_right hpointN)
  have hinj : Set.InjOn (fun point : Nat => point / 25) (S : Set Nat) := by
    intro x hx y hy hquotient
    have hxmod := hSMod x hx
    have hymod := hSMod y hy
    change x / 25 = y / 25 at hquotient
    calc
      x = x % 25 + 25 * (x / 25) := (Nat.mod_add_div x 25).symm
      _ = y % 25 + 25 * (y / 25) := by rw [hxmod, hymod, hquotient]
      _ = y := Nat.mod_add_div y 25
  have hSCard : S.card ≤ target.card :=
    Finset.card_le_card_of_injOn (fun point : Nat => point / 25) hmap hinj
  have htarget := globalMixedPeriodicResidueSet_count_le_228
    residues (N / 25 + 1) hresidues hcard
  have hSCardQ : (S.card : Rat) ≤ (target.card : Rat) := by
    exact_mod_cast hSCard
  have hdiv : (((N / 25 : Nat) : Rat)) ≤ (N : Rat) / 25 :=
    Nat.cast_div_le
  calc
    (S.card : Rat) ≤ (target.card : Rat) := hSCardQ
    _ ≤ (19 / 147 : Rat) * (N / 25 + 1 : Nat) + 9728 / 49 := by
      simpa [target] using htarget
    _ ≤ (19 / 147 : Rat) * ((N : Rat) / 25 + 1) + 9728 / 49 := by
      push_cast
      gcongr

theorem globalMixedDegreeEvenSmallPoints_periodic_ratio_le
    {N pivot baseResidue : Nat} (hN : 0 < N) (hpivotEven : Even pivot) :
    ((baseResiduePrimeSquareUnion N pivot baseResidue
      globalMixedDegreeSmallPrimes).card : Rat) / N ≤
        19 / 3675 + 29203 / (147 * N) := by
  let small := baseResiduePrimeSquareUnion N pivot baseResidue
    globalMixedDegreeSmallPrimes
  let residues := globalMixedEvenSmallPeriodicNatResidues baseResidue pivot
  have hbounds : ∀ point ∈ small, point ∈ Finset.Icc 1 N := by
    intro point hpoint
    obtain ⟨prime, _hprime, hpointPrime⟩ := Finset.mem_biUnion.mp hpoint
    exact (Finset.mem_filter.mp
      (Finset.mem_filter.mp hpointPrime).1).1
  have hmod : ∀ point ∈ small, point % 25 = baseResidue := by
    intro point hpoint
    obtain ⟨prime, _hprime, hpointPrime⟩ := Finset.mem_biUnion.mp hpoint
    exact (Finset.mem_filter.mp
      (Finset.mem_filter.mp hpointPrime).1).2
  have hclassifies : ∀ point ∈ small,
      (point / 25) % 1764 ∈ residues := by
    intro point hpoint
    obtain ⟨prime, hprime, hpointPrime⟩ := Finset.mem_biUnion.mp hpoint
    have hpointMod := (Finset.mem_filter.mp
      (Finset.mem_filter.mp hpointPrime).1).2
    have hevent := (Finset.mem_filter.mp hpointPrime).2
    apply globalMixedEvenSmallPeriodicNatResidues_classifies hpointMod
    simp [globalMixedDegreeSmallPrimes] at hprime
    rcases hprime with rfl | rfl | rfl
    · exfalso
      have hpivotMod : pivot % 2 = 0 := Nat.even_iff.mp hpivotEven
      have htwo : 2 ∣ pivot * point + 1 := by
        exact dvd_trans (by norm_num : 2 ∣ 2 ^ 2) hevent
      have hzero := Nat.dvd_iff_mod_eq_zero.mp htwo
      rw [Nat.add_mod, Nat.mul_mod, hpivotMod] at hzero
      norm_num at hzero
    · exact Or.inl (by norm_num at hevent ⊢; exact hevent)
    · exact Or.inr (by norm_num at hevent ⊢; exact hevent)
  have hbound := globalMixedEvenBaseProgressionSubset_card_le_periodic
    (S := small) (residues := residues) (baseResidue := baseResidue)
    hbounds hmod hclassifies
    (globalMixedEvenSmallPeriodicNatResidues_subset_range baseResidue pivot)
    (globalMixedEvenSmallPeriodicNatResidues_card_le baseResidue pivot)
  have hNQ : (0 : Rat) < N := by exact_mod_cast hN
  calc
    ((baseResiduePrimeSquareUnion N pivot baseResidue
      globalMixedDegreeSmallPrimes).card : Rat) / N =
        (small.card : Rat) / N := rfl
    _ ≤ ((19 / 147 : Rat) * ((N : Rat) / 25 + 1) + 9728 / 49) / N :=
      div_le_div_of_nonneg_right hbound hNQ.le
    _ = 19 / 3675 + 29203 / (147 * N) := by
      field_simp
      ring

#print axioms globalMixedSmallCoordinateHyperplanes_card
#print axioms globalMixedSmallPeriodicNatResidues_card_le
#print axioms globalMixedDegreeSmallPoints_periodic_ratio_le
#print axioms globalMixedEvenSmallCoordinateHyperplanes_card
#print axioms globalMixedDegreeEvenSmallPoints_periodic_ratio_le

end Erdos848
