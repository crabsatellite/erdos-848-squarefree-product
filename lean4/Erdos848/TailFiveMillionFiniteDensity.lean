import Mathlib

namespace Erdos848

/-!
## Exact finite density in the controlling five-million odd branch

This file replaces the statewise Python dynamic programme for the finite part
of the archived `O1, s = 7` row by a uniform combinatorial theorem.

There are six finite-bad forms.  Before the mod-49 layer, a mod-9 residue can
activate at most one of them.  Each form has one bad mod-49 residue, so the
nonempty mod-49 fibres partition the six forms.  Consequently at most two
mod-49 fibres can raise the number of active forms to three.  One of the four
mod-4 residues activates every form; the other three contribute at most
`9 * 2` successful residues each.  Hence the complete period contains at most

`49 * 9 + 3 * (9 * 2) = 495`

successful residues out of `4 * 9 * 49 = 1764`.
-/

abbrev FiveMillionFiniteForm := Fin 6
abbrev FiveMillionModFour := Fin 4
abbrev FiveMillionModNine := Fin 9
abbrev FiveMillionModFortyNine := Fin 49

def optionalSingleton
    (j : Option FiveMillionFiniteForm) : Finset FiveMillionFiniteForm :=
  match j with
  | none => ∅
  | some i => {i}

def modFortyNineFibre
    (root : FiveMillionFiniteForm → FiveMillionModFortyNine)
    (r : FiveMillionModFortyNine) : Finset FiveMillionFiniteForm :=
  Finset.univ.filter fun i => root i = r

def successfulModFortyNineRoots
    (root : FiveMillionFiniteForm → FiveMillionModFortyNine)
    (j : Option FiveMillionFiniteForm) : Finset FiveMillionModFortyNine :=
  Finset.univ.filter fun r =>
    3 ≤ ((modFortyNineFibre root r) ∪ optionalSingleton j).card

private theorem sum_modFortyNineFibre_card
    (root : FiveMillionFiniteForm → FiveMillionModFortyNine) :
    ∑ r : FiveMillionModFortyNine, (modFortyNineFibre root r).card = 6 := by
  classical
  have h := Finset.card_eq_sum_card_fiberwise
    (s := (Finset.univ : Finset FiveMillionFiniteForm))
    (t := (Finset.univ : Finset FiveMillionModFortyNine))
    (f := root) (by simp)
  calc
    ∑ r : FiveMillionModFortyNine,
        (modFortyNineFibre root r).card =
        (Finset.univ : Finset FiveMillionFiniteForm).card := by
          simpa only [modFortyNineFibre] using h.symm
    _ = 6 := by simp

private theorem sum_modFortyNineFibre_erase_card
    (root : FiveMillionFiniteForm → FiveMillionModFortyNine)
    (j : FiveMillionFiniteForm) :
    ∑ r : FiveMillionModFortyNine,
        ((modFortyNineFibre root r).erase j).card = 5 := by
  classical
  have h := Finset.card_eq_sum_card_fiberwise
    (s := (Finset.univ.erase j : Finset FiveMillionFiniteForm))
    (t := (Finset.univ : Finset FiveMillionModFortyNine))
    (f := root) (by simp)
  have hfibre : ∀ r : FiveMillionModFortyNine,
      ((Finset.univ.erase j).filter fun i => root i = r) =
        (modFortyNineFibre root r).erase j := by
    intro r
    ext i
    simp [modFortyNineFibre]
  calc
    ∑ r : FiveMillionModFortyNine,
        ((modFortyNineFibre root r).erase j).card =
        ∑ r : FiveMillionModFortyNine,
          (((Finset.univ.erase j).filter fun i => root i = r).card) := by
            apply Finset.sum_congr rfl
            intro r _hr
            rw [hfibre r]
    _ = (Finset.univ.erase j : Finset FiveMillionFiniteForm).card := by
      simpa only using h.symm
    _ = 5 := by simp

private theorem successfulModFortyNineRoots_none_card_le_two
    (root : FiveMillionFiniteForm → FiveMillionModFortyNine) :
    (successfulModFortyNineRoots root none).card ≤ 2 := by
  classical
  have hterm : ∀ r ∈ successfulModFortyNineRoots root none,
      3 ≤ (modFortyNineFibre root r).card := by
    intro r hr
    simpa [successfulModFortyNineRoots, optionalSingleton] using
      (Finset.mem_filter.mp hr).2
  have hlower : 3 * (successfulModFortyNineRoots root none).card ≤
      ∑ r ∈ successfulModFortyNineRoots root none,
        (modFortyNineFibre root r).card := by
    simpa [Nat.mul_comm] using Finset.sum_le_sum hterm
  have hupper :
      (∑ r ∈ successfulModFortyNineRoots root none,
        (modFortyNineFibre root r).card) ≤ 6 := by
    calc
      (∑ r ∈ successfulModFortyNineRoots root none,
          (modFortyNineFibre root r).card) ≤
          ∑ r : FiveMillionModFortyNine,
            (modFortyNineFibre root r).card := by
              exact Finset.sum_le_sum_of_subset (by
                intro r hr
                exact Finset.mem_univ r)
      _ = 6 := sum_modFortyNineFibre_card root
  omega

private theorem successfulModFortyNineRoots_some_card_le_two
    (root : FiveMillionFiniteForm → FiveMillionModFortyNine)
    (j : FiveMillionFiniteForm) :
    (successfulModFortyNineRoots root (some j)).card ≤ 2 := by
  classical
  have hterm : ∀ r ∈ successfulModFortyNineRoots root (some j),
      2 ≤ ((modFortyNineFibre root r).erase j).card := by
    intro r hr
    have hsuccess :
        3 ≤ ((modFortyNineFibre root r) ∪ {j}).card := by
      simpa [successfulModFortyNineRoots, optionalSingleton] using
        (Finset.mem_filter.mp hr).2
    have hcard :
        ((modFortyNineFibre root r) ∪ {j}).card ≤
          ((modFortyNineFibre root r).erase j).card + 1 := by
      have hsubset :
          (modFortyNineFibre root r) ∪ {j} ⊆
            insert j ((modFortyNineFibre root r).erase j) := by
        intro i hi
        by_cases hij : i = j
        · simp [hij]
        · have : i ∈ modFortyNineFibre root r := by
            simpa [hij] using hi
          exact Finset.mem_insert_of_mem (Finset.mem_erase.mpr ⟨hij, this⟩)
      calc
        ((modFortyNineFibre root r) ∪ {j}).card ≤
            (insert j ((modFortyNineFibre root r).erase j)).card :=
          Finset.card_le_card hsubset
        _ = ((modFortyNineFibre root r).erase j).card + 1 := by simp
    omega
  have hlower : 2 * (successfulModFortyNineRoots root (some j)).card ≤
      ∑ r ∈ successfulModFortyNineRoots root (some j),
        ((modFortyNineFibre root r).erase j).card := by
    simpa [Nat.mul_comm] using Finset.sum_le_sum hterm
  have hupper :
      (∑ r ∈ successfulModFortyNineRoots root (some j),
        ((modFortyNineFibre root r).erase j).card) ≤ 5 := by
    calc
      (∑ r ∈ successfulModFortyNineRoots root (some j),
          ((modFortyNineFibre root r).erase j).card) ≤
          ∑ r : FiveMillionModFortyNine,
            ((modFortyNineFibre root r).erase j).card := by
              exact Finset.sum_le_sum_of_subset (by
                intro r hr
                exact Finset.mem_univ r)
      _ = 5 := sum_modFortyNineFibre_erase_card root j
  omega

/-- No choice of mod-49 collision partition can make more than two residues
successful once at most one of the six forms was already activated. -/
theorem successfulModFortyNineRoots_card_le_two
    (root : FiveMillionFiniteForm → FiveMillionModFortyNine)
    (j : Option FiveMillionFiniteForm) :
    (successfulModFortyNineRoots root j).card ≤ 2 := by
  cases j with
  | none => exact successfulModFortyNineRoots_none_card_le_two root
  | some j => exact successfulModFortyNineRoots_some_card_le_two root j

def fiveMillionPeriodicFiniteCount
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine → Option FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm → FiveMillionModFortyNine) : ℕ :=
  ∑ r4 : FiveMillionModFour,
    if r4 = fullModFour then 9 * 49
    else ∑ r9 : FiveMillionModNine,
      (successfulModFortyNineRoots modFortyNineRoot
        (modNineEvent r9)).card

abbrev FiveMillionPeriodicResidue :=
  FiveMillionModFour ×
    (FiveMillionModNine × FiveMillionModFortyNine)

def fiveMillionPeriodicFiniteResidues
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine → Option FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm → FiveMillionModFortyNine) :
    Finset FiveMillionPeriodicResidue :=
  Finset.univ.filter fun residue =>
    residue.1 = fullModFour ∨
      residue.2.2 ∈ successfulModFortyNineRoots modFortyNineRoot
        (modNineEvent residue.2.1)

/-- The nested count used by the density theorem is literally the cardinality
of the successful residue triples, not merely a numerically equal DP state. -/
theorem fiveMillionPeriodicFiniteResidues_card
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine → Option FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm → FiveMillionModFortyNine) :
    (fiveMillionPeriodicFiniteResidues fullModFour modNineEvent
      modFortyNineRoot).card =
      fiveMillionPeriodicFiniteCount fullModFour modNineEvent
        modFortyNineRoot := by
  classical
  unfold fiveMillionPeriodicFiniteResidues fiveMillionPeriodicFiniteCount
  rw [Finset.card_eq_sum_ones]
  simp only [Finset.sum_filter, Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro r4 _hr4
  by_cases h4 : r4 = fullModFour
  · simp [h4]
  · simp only [h4, false_or, if_false]
    apply Finset.sum_congr rfl
    intro r9 _hr9
    rw [Finset.sum_boole]
    simp

/-- Exact, uniform replacement for the archived Python DP output `R = 495`.
The theorem quantifies over every possible mod-49 collision pattern and every
mod-9 choice that activates at most one form. -/
theorem fiveMillionPeriodicFiniteCount_le_495
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine → Option FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm → FiveMillionModFortyNine) :
    fiveMillionPeriodicFiniteCount fullModFour modNineEvent
      modFortyNineRoot ≤ 495 := by
  classical
  unfold fiveMillionPeriodicFiniteCount
  have hnonfull : ∀ r4 : FiveMillionModFour, r4 ≠ fullModFour →
      (∑ r9 : FiveMillionModNine,
        (successfulModFortyNineRoots modFortyNineRoot
          (modNineEvent r9)).card) ≤ 18 := by
    intro _r4 _hne
    calc
      (∑ r9 : FiveMillionModNine,
          (successfulModFortyNineRoots modFortyNineRoot
            (modNineEvent r9)).card) ≤
          ∑ _r9 : FiveMillionModNine, 2 := by
            exact Finset.sum_le_sum fun _ _ =>
              successfulModFortyNineRoots_card_le_two _ _
      _ = 18 := by norm_num
  calc
    (∑ r4 : FiveMillionModFour,
      if r4 = fullModFour then 9 * 49
      else ∑ r9 : FiveMillionModNine,
        (successfulModFortyNineRoots modFortyNineRoot
          (modNineEvent r9)).card) ≤
      ∑ r4 : FiveMillionModFour,
        if r4 = fullModFour then 441 else 18 := by
          exact Finset.sum_le_sum fun r4 _ => by
            by_cases h : r4 = fullModFour
            · simp [h]
            · simpa [h] using hnonfull r4 h
    _ = 495 := by
      have hpoint : ∀ r4 : FiveMillionModFour,
          (if r4 = fullModFour then 441 else 18) =
            18 + (if r4 = fullModFour then 423 else 0) := by
        intro r4
        by_cases h : r4 = fullModFour <;> simp [h]
      simp_rw [hpoint]
      rw [Finset.sum_add_distrib]
      simp

theorem fiveMillionPeriodicFiniteDensity_le :
    ∀ (fullModFour : FiveMillionModFour)
      (modNineEvent : FiveMillionModNine → Option FiveMillionFiniteForm)
      (modFortyNineRoot :
        FiveMillionFiniteForm → FiveMillionModFortyNine),
      (fiveMillionPeriodicFiniteCount fullModFour modNineEvent
          modFortyNineRoot : ℚ) / 1764 ≤ 55 / 196 := by
  intro fullModFour modNineEvent modFortyNineRoot
  have h := fiveMillionPeriodicFiniteCount_le_495
    fullModFour modNineEvent modFortyNineRoot
  calc
    (fiveMillionPeriodicFiniteCount fullModFour modNineEvent
        modFortyNineRoot : ℚ) / 1764 ≤ 495 / 1764 := by
          gcongr
          exact_mod_cast h
    _ = 55 / 196 := by norm_num

end Erdos848
