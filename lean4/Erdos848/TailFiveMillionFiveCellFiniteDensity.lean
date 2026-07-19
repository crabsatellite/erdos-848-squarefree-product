import Erdos848.TailFiveMillionFiniteDensity

namespace Erdos848

/-!
# Exact finite density for the five-active-cell row

The six literal pivots occupy five mod-nine classes.  Consequently every
mod-nine event fibre has size at most two and at most one such fibre has size
two.  For a non-full mod-four residue, a fibre of size at most one admits at
most two mod-49 roots, while the unique possible double fibre admits at most
four.  Thus each non-full mod-four residue contributes at most

`8 * 2 + 1 * 4 = 20`,

and the complete period contributes at most `9 * 49 + 3 * 20 = 501` out of
`1764`, i.e. density `167 / 588`.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def successfulModFortyNineRootsForSet
    (root : FiveMillionFiniteForm -> FiveMillionModFortyNine)
    (event : Finset FiveMillionFiniteForm) :
    Finset FiveMillionModFortyNine :=
  Finset.univ.filter fun r =>
    3 <= ((modFortyNineFibre root r) ∪ event).card

private theorem sum_modFortyNineFibre_sdiff_card
    (root : FiveMillionFiniteForm -> FiveMillionModFortyNine)
    (event : Finset FiveMillionFiniteForm) :
    (∑ r : FiveMillionModFortyNine,
      ((modFortyNineFibre root r) \ event).card) =
      (Finset.univ \ event).card := by
  classical
  have h := Finset.card_eq_sum_card_fiberwise
    (s := (Finset.univ \ event : Finset FiveMillionFiniteForm))
    (t := (Finset.univ : Finset FiveMillionModFortyNine))
    (f := root) (by simp)
  have hfibre : ∀ r : FiveMillionModFortyNine,
      ((Finset.univ \ event).filter fun i => root i = r) =
        (modFortyNineFibre root r) \ event := by
    intro r
    ext i
    simp [modFortyNineFibre, and_comm]
  calc
    (∑ r : FiveMillionModFortyNine,
        ((modFortyNineFibre root r) \ event).card) =
        ∑ r : FiveMillionModFortyNine,
          (((Finset.univ \ event).filter fun i => root i = r).card) := by
            apply Finset.sum_congr rfl
            intro r _hr
            rw [hfibre r]
    _ = (Finset.univ \ event).card := by
      simpa only using h.symm

private theorem successfulModFortyNineRootsForSet_weighted
    (root : FiveMillionFiniteForm -> FiveMillionModFortyNine)
    (event : Finset FiveMillionFiniteForm)
    (hcard : event.card <= 2) :
    (3 - event.card) *
        (successfulModFortyNineRootsForSet root event).card <=
      6 - event.card := by
  classical
  have hterm : ∀ r ∈ successfulModFortyNineRootsForSet root event,
      3 - event.card <= ((modFortyNineFibre root r) \ event).card := by
    intro r hr
    have hsuccess :
        3 <= ((modFortyNineFibre root r) ∪ event).card := by
      simpa [successfulModFortyNineRootsForSet] using
        (Finset.mem_filter.mp hr).2
    have hunion :
        ((modFortyNineFibre root r) ∪ event).card <=
          ((modFortyNineFibre root r) \ event).card + event.card := by
      have hset : (modFortyNineFibre root r) ∪ event =
          ((modFortyNineFibre root r) \ event) ∪ event := by
        ext i
        simp
      rw [hset]
      exact Finset.card_union_le _ _
    omega
  have hlower :
      (3 - event.card) *
          (successfulModFortyNineRootsForSet root event).card <=
        ∑ r ∈ successfulModFortyNineRootsForSet root event,
          ((modFortyNineFibre root r) \ event).card := by
    simpa [Nat.mul_comm] using Finset.sum_le_sum hterm
  have hupper :
      (∑ r ∈ successfulModFortyNineRootsForSet root event,
          ((modFortyNineFibre root r) \ event).card) <=
        6 - event.card := by
    have hsubset : event ⊆
        (Finset.univ : Finset FiveMillionFiniteForm) := by simp
    calc
      (∑ r ∈ successfulModFortyNineRootsForSet root event,
          ((modFortyNineFibre root r) \ event).card) <=
          ∑ r : FiveMillionModFortyNine,
            ((modFortyNineFibre root r) \ event).card := by
              exact Finset.sum_le_sum_of_subset (by
                intro r _hr
                exact Finset.mem_univ r)
      _ = (Finset.univ \ event).card :=
        sum_modFortyNineFibre_sdiff_card root event
      _ = 6 - event.card := by
        rw [Finset.card_sdiff]
        simp
  exact hlower.trans hupper

theorem successfulModFortyNineRootsForSet_card_le_two
    (root : FiveMillionFiniteForm -> FiveMillionModFortyNine)
    (event : Finset FiveMillionFiniteForm)
    (hcard : event.card <= 1) :
    (successfulModFortyNineRootsForSet root event).card <= 2 := by
  have hweighted := successfulModFortyNineRootsForSet_weighted
    root event (hcard.trans (by norm_num))
  have hcases : event.card = 0 ∨ event.card = 1 := by omega
  rcases hcases with hzero | hone
  · simp [hzero] at hweighted
    omega
  · simp [hone] at hweighted
    omega

theorem successfulModFortyNineRootsForSet_card_le_four
    (root : FiveMillionFiniteForm -> FiveMillionModFortyNine)
    (event : Finset FiveMillionFiniteForm)
    (hcard : event.card <= 2) :
    (successfulModFortyNineRootsForSet root event).card <= 4 := by
  have hweighted := successfulModFortyNineRootsForSet_weighted
    root event hcard
  have hcases : event.card = 0 ∨ event.card = 1 ∨ event.card = 2 := by omega
  rcases hcases with hzero | hone | htwo
  · simp [hzero] at hweighted
    omega
  · simp [hone] at hweighted
    omega
  · simp [htwo] at hweighted
    omega

def fiveMillionFiveCellPeriodicFiniteCount
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine -> Finset FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm -> FiveMillionModFortyNine) : Nat :=
  ∑ r4 : FiveMillionModFour,
    if r4 = fullModFour then 9 * 49
    else ∑ r9 : FiveMillionModNine,
      (successfulModFortyNineRootsForSet modFortyNineRoot
        (modNineEvent r9)).card

theorem fiveMillionFiveCellPeriodicFiniteCount_le_501
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine -> Finset FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm -> FiveMillionModFortyNine)
    (hcapacity : ∀ r9, (modNineEvent r9).card <= 2)
    (hdouble :
      ((Finset.univ.filter fun r9 : FiveMillionModNine =>
        2 <= (modNineEvent r9).card)).card <= 1) :
    fiveMillionFiveCellPeriodicFiniteCount fullModFour modNineEvent
      modFortyNineRoot <= 501 := by
  classical
  let doubles := Finset.univ.filter fun r9 : FiveMillionModNine =>
    2 <= (modNineEvent r9).card
  have hnonfull : ∀ r4 : FiveMillionModFour, r4 ≠ fullModFour ->
      (∑ r9 : FiveMillionModNine,
        (successfulModFortyNineRootsForSet modFortyNineRoot
          (modNineEvent r9)).card) <= 20 := by
    intro _r4 _hne
    calc
      (∑ r9 : FiveMillionModNine,
          (successfulModFortyNineRootsForSet modFortyNineRoot
            (modNineEvent r9)).card) <=
          ∑ r9 : FiveMillionModNine,
            if 2 <= (modNineEvent r9).card then 4 else 2 := by
              apply Finset.sum_le_sum
              intro r9 _hr9
              by_cases htwo : 2 <= (modNineEvent r9).card
              · simp [htwo]
                exact successfulModFortyNineRootsForSet_card_le_four
                  modFortyNineRoot (modNineEvent r9) (hcapacity r9)
              · have hone : (modNineEvent r9).card <= 1 := by omega
                simp [htwo]
                exact successfulModFortyNineRootsForSet_card_le_two
                  modFortyNineRoot (modNineEvent r9) hone
      _ = 18 + 2 * doubles.card := by
        have hpoint : ∀ r9 : FiveMillionModNine,
            (if 2 <= (modNineEvent r9).card then 4 else 2) =
              2 + 2 * (if 2 <= (modNineEvent r9).card then 1 else 0) := by
          intro r9
          by_cases h : 2 <= (modNineEvent r9).card <;> simp [h]
        simp_rw [hpoint]
        rw [Finset.sum_add_distrib]
        congr 1
        rw [← Finset.mul_sum]
        rw [Finset.sum_boole]
        simp [doubles]
      _ <= 20 := by
        dsimp [doubles]
        omega
  unfold fiveMillionFiveCellPeriodicFiniteCount
  calc
    (∑ r4 : FiveMillionModFour,
      if r4 = fullModFour then 9 * 49
      else ∑ r9 : FiveMillionModNine,
        (successfulModFortyNineRootsForSet modFortyNineRoot
          (modNineEvent r9)).card) <=
        ∑ r4 : FiveMillionModFour,
          if r4 = fullModFour then 441 else 20 := by
            exact Finset.sum_le_sum fun r4 _ => by
              by_cases h : r4 = fullModFour
              · simp [h]
              · simpa [h] using hnonfull r4 h
    _ = 501 := by
      have hpoint : ∀ r4 : FiveMillionModFour,
          (if r4 = fullModFour then 441 else 20) =
            20 + (if r4 = fullModFour then 421 else 0) := by
        intro r4
        by_cases h : r4 = fullModFour <;> simp [h]
      simp_rw [hpoint]
      rw [Finset.sum_add_distrib]
      simp

theorem fiveMillionFiveCellPeriodicFiniteDensity_le
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine -> Finset FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm -> FiveMillionModFortyNine)
    (hcapacity : ∀ r9, (modNineEvent r9).card <= 2)
    (hdouble :
      ((Finset.univ.filter fun r9 : FiveMillionModNine =>
        2 <= (modNineEvent r9).card)).card <= 1) :
    (fiveMillionFiveCellPeriodicFiniteCount fullModFour modNineEvent
        modFortyNineRoot : Rat) / 1764 <= 167 / 588 := by
  have h := fiveMillionFiveCellPeriodicFiniteCount_le_501
    fullModFour modNineEvent modFortyNineRoot hcapacity hdouble
  calc
    (fiveMillionFiveCellPeriodicFiniteCount fullModFour modNineEvent
        modFortyNineRoot : Rat) / 1764 <= 501 / 1764 := by
          gcongr
          exact_mod_cast h
    _ = 167 / 588 := by norm_num

theorem fiveMillionFourCellPeriodicFiniteCount_le_507
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine -> Finset FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm -> FiveMillionModFortyNine)
    (hcapacity : ∀ r9, (modNineEvent r9).card <= 2)
    (hdouble :
      ((Finset.univ.filter fun r9 : FiveMillionModNine =>
        2 <= (modNineEvent r9).card)).card <= 2) :
    fiveMillionFiveCellPeriodicFiniteCount fullModFour modNineEvent
      modFortyNineRoot <= 507 := by
  classical
  let doubles := Finset.univ.filter fun r9 : FiveMillionModNine =>
    2 <= (modNineEvent r9).card
  have hnonfull :
      (∑ r9 : FiveMillionModNine,
        (successfulModFortyNineRootsForSet modFortyNineRoot
          (modNineEvent r9)).card) <= 22 := by
    calc
      (∑ r9 : FiveMillionModNine,
          (successfulModFortyNineRootsForSet modFortyNineRoot
            (modNineEvent r9)).card) <=
          ∑ r9 : FiveMillionModNine,
            if 2 <= (modNineEvent r9).card then 4 else 2 := by
              apply Finset.sum_le_sum
              intro r9 _hr9
              by_cases htwo : 2 <= (modNineEvent r9).card
              · simp [htwo]
                exact successfulModFortyNineRootsForSet_card_le_four
                  modFortyNineRoot (modNineEvent r9) (hcapacity r9)
              · have hone : (modNineEvent r9).card <= 1 := by omega
                simp [htwo]
                exact successfulModFortyNineRootsForSet_card_le_two
                  modFortyNineRoot (modNineEvent r9) hone
      _ = 18 + 2 * doubles.card := by
        have hpoint : ∀ r9 : FiveMillionModNine,
            (if 2 <= (modNineEvent r9).card then 4 else 2) =
              2 + 2 * (if 2 <= (modNineEvent r9).card then 1 else 0) := by
          intro r9
          by_cases h : 2 <= (modNineEvent r9).card <;> simp [h]
        simp_rw [hpoint]
        rw [Finset.sum_add_distrib]
        congr 1
        rw [← Finset.mul_sum]
        rw [Finset.sum_boole]
        simp [doubles]
      _ <= 22 := by
        dsimp [doubles]
        omega
  unfold fiveMillionFiveCellPeriodicFiniteCount
  calc
    (∑ r4 : FiveMillionModFour,
      if r4 = fullModFour then 9 * 49
      else ∑ r9 : FiveMillionModNine,
        (successfulModFortyNineRootsForSet modFortyNineRoot
          (modNineEvent r9)).card) <=
        ∑ r4 : FiveMillionModFour,
          if r4 = fullModFour then 441 else 22 := by
            exact Finset.sum_le_sum fun r4 _ => by
              by_cases h : r4 = fullModFour
              · simp [h]
              · simpa [h] using hnonfull
    _ = 507 := by
      have hpoint : ∀ r4 : FiveMillionModFour,
          (if r4 = fullModFour then 441 else 22) =
            22 + (if r4 = fullModFour then 419 else 0) := by
        intro r4
        by_cases h : r4 = fullModFour <;> simp [h]
      simp_rw [hpoint]
      rw [Finset.sum_add_distrib]
      simp

theorem fiveMillionFourCellPeriodicFiniteDensity_le
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine -> Finset FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm -> FiveMillionModFortyNine)
    (hcapacity : ∀ r9, (modNineEvent r9).card <= 2)
    (hdouble :
      ((Finset.univ.filter fun r9 : FiveMillionModNine =>
        2 <= (modNineEvent r9).card)).card <= 2) :
    (fiveMillionFiveCellPeriodicFiniteCount fullModFour modNineEvent
        modFortyNineRoot : Rat) / 1764 <= 169 / 588 := by
  have h := fiveMillionFourCellPeriodicFiniteCount_le_507
    fullModFour modNineEvent modFortyNineRoot hcapacity hdouble
  calc
    (fiveMillionFiveCellPeriodicFiniteCount fullModFour modNineEvent
        modFortyNineRoot : Rat) / 1764 <= 507 / 1764 := by
          gcongr
          exact_mod_cast h
    _ = 169 / 588 := by norm_num

theorem fiveMillionThreeCellPeriodicFiniteCount_le_513
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine → Finset FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm → FiveMillionModFortyNine)
    (hcapacity : ∀ r9, (modNineEvent r9).card ≤ 2)
    (hdouble :
      ((Finset.univ.filter fun r9 : FiveMillionModNine =>
        2 ≤ (modNineEvent r9).card)).card ≤ 3) :
    fiveMillionFiveCellPeriodicFiniteCount fullModFour modNineEvent
      modFortyNineRoot ≤ 513 := by
  classical
  let doubles := Finset.univ.filter fun r9 : FiveMillionModNine =>
    2 ≤ (modNineEvent r9).card
  have hnonfull :
      (∑ r9 : FiveMillionModNine,
        (successfulModFortyNineRootsForSet modFortyNineRoot
          (modNineEvent r9)).card) ≤ 24 := by
    calc
      (∑ r9 : FiveMillionModNine,
          (successfulModFortyNineRootsForSet modFortyNineRoot
            (modNineEvent r9)).card) ≤
          ∑ r9 : FiveMillionModNine,
            if 2 ≤ (modNineEvent r9).card then 4 else 2 := by
              apply Finset.sum_le_sum
              intro r9 _hr9
              by_cases htwo : 2 ≤ (modNineEvent r9).card
              · simp [htwo]
                exact successfulModFortyNineRootsForSet_card_le_four
                  modFortyNineRoot (modNineEvent r9) (hcapacity r9)
              · have hone : (modNineEvent r9).card ≤ 1 := by omega
                simp [htwo]
                exact successfulModFortyNineRootsForSet_card_le_two
                  modFortyNineRoot (modNineEvent r9) hone
      _ = 18 + 2 * doubles.card := by
        have hpoint : ∀ r9 : FiveMillionModNine,
            (if 2 ≤ (modNineEvent r9).card then 4 else 2) =
              2 + 2 * (if 2 ≤ (modNineEvent r9).card then 1 else 0) := by
          intro r9
          by_cases h : 2 ≤ (modNineEvent r9).card <;> simp [h]
        simp_rw [hpoint]
        rw [Finset.sum_add_distrib]
        congr 1
        rw [← Finset.mul_sum]
        rw [Finset.sum_boole]
        simp [doubles]
      _ ≤ 24 := by
        dsimp [doubles]
        omega
  unfold fiveMillionFiveCellPeriodicFiniteCount
  calc
    (∑ r4 : FiveMillionModFour,
      if r4 = fullModFour then 9 * 49
      else ∑ r9 : FiveMillionModNine,
        (successfulModFortyNineRootsForSet modFortyNineRoot
          (modNineEvent r9)).card) ≤
        ∑ r4 : FiveMillionModFour,
          if r4 = fullModFour then 441 else 24 := by
            exact Finset.sum_le_sum fun r4 _ => by
              by_cases h : r4 = fullModFour
              · simp [h]
              · simpa [h] using hnonfull
    _ = 513 := by
      have hpoint : ∀ r4 : FiveMillionModFour,
          (if r4 = fullModFour then 441 else 24) =
            24 + (if r4 = fullModFour then 417 else 0) := by
        intro r4
        by_cases h : r4 = fullModFour <;> simp [h]
      simp_rw [hpoint]
      rw [Finset.sum_add_distrib]
      simp

theorem fiveMillionThreeCellPeriodicFiniteDensity_le
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine → Finset FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm → FiveMillionModFortyNine)
    (hcapacity : ∀ r9, (modNineEvent r9).card ≤ 2)
    (hdouble :
      ((Finset.univ.filter fun r9 : FiveMillionModNine =>
        2 ≤ (modNineEvent r9).card)).card ≤ 3) :
    (fiveMillionFiveCellPeriodicFiniteCount fullModFour modNineEvent
        modFortyNineRoot : Rat) / 1764 ≤ 57 / 196 := by
  have h := fiveMillionThreeCellPeriodicFiniteCount_le_513
    fullModFour modNineEvent modFortyNineRoot hcapacity hdouble
  calc
    (fiveMillionFiveCellPeriodicFiniteCount fullModFour modNineEvent
        modFortyNineRoot : Rat) / 1764 ≤ 513 / 1764 := by
          gcongr
          exact_mod_cast h
    _ = 57 / 196 := by norm_num

#print axioms successfulModFortyNineRootsForSet_card_le_two
#print axioms successfulModFortyNineRootsForSet_card_le_four
#print axioms fiveMillionFiveCellPeriodicFiniteCount_le_501
#print axioms fiveMillionFiveCellPeriodicFiniteDensity_le
#print axioms fiveMillionFourCellPeriodicFiniteCount_le_507
#print axioms fiveMillionFourCellPeriodicFiniteDensity_le
#print axioms fiveMillionThreeCellPeriodicFiniteCount_le_513
#print axioms fiveMillionThreeCellPeriodicFiniteDensity_le

end Erdos848
