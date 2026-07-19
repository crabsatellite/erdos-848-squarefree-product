import Erdos848.TailFiveMillionPeriodicBridge

namespace Erdos848

/-!
# Exact one-cell periodic density

All pivots share one mod-4 and one mod-9 class.  Away from the full mod-4
layer, at most one mod-9 residue contributes all forms.  Every other mod-9
residue is controlled solely by the raw mod-49 collision pattern.  If that
raw threshold set has cardinality at most `extra`, the period contains at
most `441 + 3 * (49 + 8 * extra)` successful residues.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def oneCellSuccessfulModFortyNineRoots
    {α : Type*} [Fintype α] [DecidableEq α]
    (threshold : Nat)
    (modNineEvent : FiveMillionModNine → Finset α)
    (modFortyNineEvent : FiveMillionModFortyNine → Finset α)
    (r9 : FiveMillionModNine) : Finset FiveMillionModFortyNine :=
  Finset.univ.filter fun r49 =>
    threshold ≤ ((modNineEvent r9) ∪ (modFortyNineEvent r49)).card

def oneCellRawSuccessfulModFortyNineRoots
    {α : Type*} [Fintype α] [DecidableEq α]
    (threshold : Nat)
    (modFortyNineEvent : FiveMillionModFortyNine → Finset α) :
    Finset FiveMillionModFortyNine :=
  Finset.univ.filter fun r49 =>
    threshold ≤ (modFortyNineEvent r49).card

def oneCellPeriodicFiniteCount
    {α : Type*} [Fintype α] [DecidableEq α]
    (fullModFour : FiveMillionModFour) (threshold : Nat)
    (modNineEvent : FiveMillionModNine → Finset α)
    (modFortyNineEvent : FiveMillionModFortyNine → Finset α) : Nat :=
  ∑ r4 : FiveMillionModFour,
    if r4 = fullModFour then 9 * 49
    else ∑ r9 : FiveMillionModNine,
      (oneCellSuccessfulModFortyNineRoots threshold
        modNineEvent modFortyNineEvent r9).card

def oneCellPeriodicFiniteResidues
    {α : Type*} [Fintype α] [DecidableEq α]
    (fullModFour : FiveMillionModFour) (threshold : Nat)
    (modNineEvent : FiveMillionModNine → Finset α)
    (modFortyNineEvent : FiveMillionModFortyNine → Finset α) :
    Finset FiveMillionPeriodicResidue :=
  Finset.univ.filter fun residue =>
    residue.1 = fullModFour ∨
      residue.2.2 ∈ oneCellSuccessfulModFortyNineRoots threshold
        modNineEvent modFortyNineEvent residue.2.1

theorem oneCellPeriodicFiniteResidues_card
    {α : Type*} [Fintype α] [DecidableEq α]
    (fullModFour : FiveMillionModFour) (threshold : Nat)
    (modNineEvent : FiveMillionModNine → Finset α)
    (modFortyNineEvent : FiveMillionModFortyNine → Finset α) :
    (oneCellPeriodicFiniteResidues fullModFour threshold
      modNineEvent modFortyNineEvent).card =
      oneCellPeriodicFiniteCount fullModFour threshold
        modNineEvent modFortyNineEvent := by
  classical
  unfold oneCellPeriodicFiniteResidues oneCellPeriodicFiniteCount
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

theorem oneCellSuccessfulModFortyNineRoots_card_le
    {α : Type*} [Fintype α] [DecidableEq α] [Nonempty α]
    (threshold extra : Nat)
    (modNineEvent : FiveMillionModNine → Finset α)
    (modFortyNineEvent : FiveMillionModFortyNine → Finset α)
    (hshape : ∀ r9, modNineEvent r9 = ∅ ∨ modNineEvent r9 = Finset.univ)
    (hthreshold : threshold ≤ Fintype.card α)
    (hraw : (oneCellRawSuccessfulModFortyNineRoots threshold
      modFortyNineEvent).card ≤ extra)
    (r9 : FiveMillionModNine) :
    (oneCellSuccessfulModFortyNineRoots threshold
      modNineEvent modFortyNineEvent r9).card ≤
        if modNineEvent r9 = Finset.univ then 49 else extra := by
  classical
  rcases hshape r9 with hempty | hfull
  · have hnotFull : modNineEvent r9 ≠ (Finset.univ : Finset α) := by
      intro h
      obtain ⟨a⟩ := ‹Nonempty α›
      have hemptyUniv : (∅ : Finset α) = Finset.univ := hempty.symm.trans h
      have ha : a ∈ (∅ : Finset α) := by rw [hemptyUniv]; simp
      simp at ha
    simp only [hnotFull, if_false]
    have heq : oneCellSuccessfulModFortyNineRoots threshold
        modNineEvent modFortyNineEvent r9 =
        oneCellRawSuccessfulModFortyNineRoots threshold
          modFortyNineEvent := by
      ext r49
      simp [oneCellSuccessfulModFortyNineRoots,
        oneCellRawSuccessfulModFortyNineRoots, hempty]
    rw [heq]
    exact hraw
  · simp only [hfull, if_true]
    have heq : oneCellSuccessfulModFortyNineRoots threshold
        modNineEvent modFortyNineEvent r9 = Finset.univ := by
      ext r49
      have hunion : (Finset.univ : Finset α) ∪ modFortyNineEvent r49 =
          Finset.univ :=
        Finset.union_eq_left.mpr (Finset.subset_univ _)
      simp only [oneCellSuccessfulModFortyNineRoots, Finset.mem_filter,
        Finset.mem_univ, true_and, hfull, hunion]
      simpa using hthreshold
    rw [heq]
    simp

theorem oneCellPeriodicFiniteCount_le
    {α : Type*} [Fintype α] [DecidableEq α] [Nonempty α]
    (fullModFour : FiveMillionModFour) (threshold extra : Nat)
    (modNineEvent : FiveMillionModNine → Finset α)
    (modFortyNineEvent : FiveMillionModFortyNine → Finset α)
    (hshape : ∀ r9, modNineEvent r9 = ∅ ∨ modNineEvent r9 = Finset.univ)
    (hfull : ((Finset.univ.filter fun r9 : FiveMillionModNine =>
      modNineEvent r9 = Finset.univ).card ≤ 1))
    (hthreshold : threshold ≤ Fintype.card α)
    (hraw : (oneCellRawSuccessfulModFortyNineRoots threshold
      modFortyNineEvent).card ≤ extra)
    (hextra : extra ≤ 49) :
    oneCellPeriodicFiniteCount fullModFour threshold
      modNineEvent modFortyNineEvent ≤
        441 + 3 * (49 + 8 * extra) := by
  classical
  let fullNine := Finset.univ.filter fun r9 : FiveMillionModNine =>
    modNineEvent r9 = Finset.univ
  have hnonfull :
      (∑ r9 : FiveMillionModNine,
        (oneCellSuccessfulModFortyNineRoots threshold
          modNineEvent modFortyNineEvent r9).card) ≤ 49 + 8 * extra := by
    calc
      (∑ r9 : FiveMillionModNine,
          (oneCellSuccessfulModFortyNineRoots threshold
            modNineEvent modFortyNineEvent r9).card) ≤
          ∑ r9 : FiveMillionModNine,
            if modNineEvent r9 = Finset.univ then 49 else extra := by
              exact Finset.sum_le_sum fun r9 _ =>
                oneCellSuccessfulModFortyNineRoots_card_le
                  threshold extra modNineEvent modFortyNineEvent
                  hshape hthreshold hraw r9
      _ = 9 * extra + fullNine.card * (49 - extra) := by
        have hpoint : ∀ r9 : FiveMillionModNine,
            (if modNineEvent r9 = Finset.univ then 49 else extra) =
              extra + (49 - extra) *
                (if modNineEvent r9 = Finset.univ then 1 else 0) := by
          intro r9
          by_cases h : modNineEvent r9 = (Finset.univ : Finset α)
          · simp [h, Nat.add_sub_of_le hextra]
          · simp [h]
        simp_rw [hpoint]
        rw [Finset.sum_add_distrib]
        rw [← Finset.mul_sum]
        rw [Finset.sum_boole]
        simp [fullNine, Nat.mul_comm]
      _ ≤ 49 + 8 * extra := by
        have hfull' : fullNine.card ≤ 1 := by simpa [fullNine] using hfull
        have hweight : fullNine.card * (49 - extra) ≤ 49 - extra := by
          have := Nat.mul_le_mul_right (49 - extra) hfull'
          simpa using this
        omega
  unfold oneCellPeriodicFiniteCount
  calc
    (∑ r4 : FiveMillionModFour,
      if r4 = fullModFour then 9 * 49
      else ∑ r9 : FiveMillionModNine,
        (oneCellSuccessfulModFortyNineRoots threshold
          modNineEvent modFortyNineEvent r9).card) ≤
        ∑ r4 : FiveMillionModFour,
          if r4 = fullModFour then 441 else 49 + 8 * extra := by
            exact Finset.sum_le_sum fun r4 _ => by
              by_cases h : r4 = fullModFour
              · simp [h]
              · simpa [h] using hnonfull
    _ = 441 + 3 * (49 + 8 * extra) := by
      have hpoint : ∀ r4 : FiveMillionModFour,
          (if r4 = fullModFour then 441 else 49 + 8 * extra) =
            (49 + 8 * extra) +
              (if r4 = fullModFour then 441 - (49 + 8 * extra) else 0) := by
        intro r4
        by_cases h : r4 = fullModFour
        · simp [h]
          omega
        · simp [h]
      simp_rw [hpoint]
      rw [Finset.sum_add_distrib]
      simp
      omega

def oneCellPeriodicNatResidues
    {α : Type*} [Fintype α] [DecidableEq α]
    (fullModFour : FiveMillionModFour) (threshold : Nat)
    (modNineEvent : FiveMillionModNine → Finset α)
    (modFortyNineEvent : FiveMillionModFortyNine → Finset α) : Finset Nat :=
  (Finset.range 1764).filter fun residue =>
    fiveMillionPeriodicTriple residue ∈
      oneCellPeriodicFiniteResidues fullModFour threshold
        modNineEvent modFortyNineEvent

lemma oneCellPeriodicNatResidues_subset_range
    {α : Type*} [Fintype α] [DecidableEq α]
    (fullModFour : FiveMillionModFour) (threshold : Nat)
    (modNineEvent : FiveMillionModNine → Finset α)
    (modFortyNineEvent : FiveMillionModFortyNine → Finset α) :
    oneCellPeriodicNatResidues fullModFour threshold
      modNineEvent modFortyNineEvent ⊆ Finset.range 1764 :=
  Finset.filter_subset _ _

theorem oneCellPeriodicNatResidues_card_le
    {α : Type*} [Fintype α] [DecidableEq α] [Nonempty α]
    (fullModFour : FiveMillionModFour) (threshold extra : Nat)
    (modNineEvent : FiveMillionModNine → Finset α)
    (modFortyNineEvent : FiveMillionModFortyNine → Finset α)
    (hshape : ∀ r9, modNineEvent r9 = ∅ ∨ modNineEvent r9 = Finset.univ)
    (hfull : ((Finset.univ.filter fun r9 : FiveMillionModNine =>
      modNineEvent r9 = Finset.univ).card ≤ 1))
    (hthreshold : threshold ≤ Fintype.card α)
    (hraw : (oneCellRawSuccessfulModFortyNineRoots threshold
      modFortyNineEvent).card ≤ extra)
    (hextra : extra ≤ 49) :
    (oneCellPeriodicNatResidues fullModFour threshold
      modNineEvent modFortyNineEvent).card ≤
        441 + 3 * (49 + 8 * extra) := by
  let residues := oneCellPeriodicNatResidues fullModFour threshold
    modNineEvent modFortyNineEvent
  let triples := oneCellPeriodicFiniteResidues fullModFour threshold
    modNineEvent modFortyNineEvent
  have hmap : Set.MapsTo fiveMillionPeriodicTriple
      (residues : Set Nat) triples := by
    intro x hx
    exact (Finset.mem_filter.mp hx).2
  have hinj : Set.InjOn fiveMillionPeriodicTriple (residues : Set Nat) := by
    intro x hx y hy hxy
    exact fiveMillionPeriodicTriple_injective_in_period
      (Finset.mem_range.mp (Finset.mem_filter.mp hx).1)
      (Finset.mem_range.mp (Finset.mem_filter.mp hy).1) hxy
  have hcard : residues.card ≤ triples.card :=
    Finset.card_le_card_of_injOn fiveMillionPeriodicTriple hmap hinj
  have htriples : triples.card =
      oneCellPeriodicFiniteCount fullModFour threshold
        modNineEvent modFortyNineEvent := by
    simpa [triples] using oneCellPeriodicFiniteResidues_card
      fullModFour threshold modNineEvent modFortyNineEvent
  rw [htriples] at hcard
  exact hcard.trans (oneCellPeriodicFiniteCount_le fullModFour
    threshold extra modNineEvent modFortyNineEvent hshape hfull
    hthreshold hraw hextra)

#print axioms oneCellPeriodicFiniteCount_le
#print axioms oneCellPeriodicNatResidues_card_le

end Erdos848
