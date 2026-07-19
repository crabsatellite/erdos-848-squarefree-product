import Erdos848.TailFiveMillionFiniteDensity

namespace Erdos848

/-!
# Exact finite density for the eight-pivot matching rows

The `s = 8,9` matching branches select eight forms.  They have one common
mod-4 class, distinct mod-9 classes, and mod-49 fibres of cardinality at most
two.  Away from the full mod-4 class a residue can therefore activate at most
`1 + 2 < 4` forms.  Thus only the one full mod-4 layer can meet threshold
four, giving at most `9 * 49 = 441` residues in the period `1764`.
-/

abbrev FiveMillionEightFiniteForm := Fin 8

def eightOptionalSingleton
    (j : Option FiveMillionEightFiniteForm) : Finset FiveMillionEightFiniteForm :=
  match j with
  | none => ∅
  | some i => {i}

def eightSuccessfulModFortyNineRoots
    (event : FiveMillionModFortyNine -> Finset FiveMillionEightFiniteForm)
    (j : Option FiveMillionEightFiniteForm) : Finset FiveMillionModFortyNine :=
  Finset.univ.filter fun r =>
    4 <= ((event r) ∪ eightOptionalSingleton j).card

theorem eightSuccessfulModFortyNineRoots_eq_empty
    (event : FiveMillionModFortyNine -> Finset FiveMillionEightFiniteForm)
    (hcapacity : ∀ r, (event r).card <= 2)
    (j : Option FiveMillionEightFiniteForm) :
    eightSuccessfulModFortyNineRoots event j = ∅ := by
  classical
  apply Finset.eq_empty_iff_forall_notMem.mpr
  intro r hr
  have hsuccess :
      4 <= ((event r) ∪
        eightOptionalSingleton j).card :=
    (Finset.mem_filter.mp hr).2
  have hunion :
      ((event r) ∪
        eightOptionalSingleton j).card <=
      (event r).card +
        (eightOptionalSingleton j).card :=
    Finset.card_union_le _ _
  have hsingleton : (eightOptionalSingleton j).card <= 1 := by
    cases j <;> simp [eightOptionalSingleton]
  have hfibre := hcapacity r
  omega

def fiveMillionEightPeriodicFiniteCount
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine -> Option FiveMillionEightFiniteForm)
    (modFortyNineEvent :
      FiveMillionModFortyNine -> Finset FiveMillionEightFiniteForm) : Nat :=
  ∑ r4 : FiveMillionModFour,
    if r4 = fullModFour then 9 * 49
    else ∑ r9 : FiveMillionModNine,
      (eightSuccessfulModFortyNineRoots modFortyNineEvent
        (modNineEvent r9)).card

def fiveMillionEightPeriodicFiniteResidues
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine -> Option FiveMillionEightFiniteForm)
    (modFortyNineEvent :
      FiveMillionModFortyNine -> Finset FiveMillionEightFiniteForm) :
    Finset FiveMillionPeriodicResidue :=
  Finset.univ.filter fun residue =>
    residue.1 = fullModFour ∨
      residue.2.2 ∈ eightSuccessfulModFortyNineRoots modFortyNineEvent
        (modNineEvent residue.2.1)

theorem fiveMillionEightPeriodicFiniteResidues_card
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine -> Option FiveMillionEightFiniteForm)
    (modFortyNineEvent :
      FiveMillionModFortyNine -> Finset FiveMillionEightFiniteForm) :
    (fiveMillionEightPeriodicFiniteResidues fullModFour modNineEvent
      modFortyNineEvent).card =
      fiveMillionEightPeriodicFiniteCount fullModFour modNineEvent
        modFortyNineEvent := by
  classical
  unfold fiveMillionEightPeriodicFiniteResidues
    fiveMillionEightPeriodicFiniteCount
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

theorem fiveMillionEightPeriodicFiniteCount_le_441
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine -> Option FiveMillionEightFiniteForm)
    (modFortyNineEvent :
      FiveMillionModFortyNine -> Finset FiveMillionEightFiniteForm)
    (hcapacity : ∀ r,
      (modFortyNineEvent r).card <= 2) :
    fiveMillionEightPeriodicFiniteCount fullModFour modNineEvent
      modFortyNineEvent <= 441 := by
  classical
  unfold fiveMillionEightPeriodicFiniteCount
  have hzero : ∀ r9 : FiveMillionModNine,
      (eightSuccessfulModFortyNineRoots modFortyNineEvent
        (modNineEvent r9)).card = 0 := by
    intro r9
    rw [eightSuccessfulModFortyNineRoots_eq_empty
      modFortyNineEvent hcapacity]
    simp
  simp_rw [hzero]
  simp

theorem fiveMillionEightPeriodicFiniteResidues_card_le_441
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine -> Option FiveMillionEightFiniteForm)
    (modFortyNineEvent :
      FiveMillionModFortyNine -> Finset FiveMillionEightFiniteForm)
    (hcapacity : ∀ r,
      (modFortyNineEvent r).card <= 2) :
    (fiveMillionEightPeriodicFiniteResidues fullModFour modNineEvent
      modFortyNineEvent).card <= 441 := by
  rw [fiveMillionEightPeriodicFiniteResidues_card]
  exact fiveMillionEightPeriodicFiniteCount_le_441
    fullModFour modNineEvent modFortyNineEvent hcapacity

#print axioms eightSuccessfulModFortyNineRoots_eq_empty
#print axioms fiveMillionEightPeriodicFiniteCount_le_441
#print axioms fiveMillionEightPeriodicFiniteResidues_card_le_441

end Erdos848
