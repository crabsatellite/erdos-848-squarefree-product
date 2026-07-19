import Erdos848.TailFiveMillionFiveCellFiniteDensity

namespace Erdos848

/-!
# Exact finite density for the two-active-cell row

The six pivots form two mod-nine fibres of size three and the threshold is
four.  Outside the single full mod-four class, an empty mod-nine fibre can
activate at most one mod-49 root, while a triple fibre can activate at most
three.  Hence every non-full mod-four class contributes at most
`7 * 1 + 2 * 3 = 13`, and the period contributes at most
`9 * 49 + 3 * 13 = 480` residues.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def successfulFourModFortyNineRootsForSet
    (root : FiveMillionFiniteForm -> FiveMillionModFortyNine)
    (event : Finset FiveMillionFiniteForm) :
    Finset FiveMillionModFortyNine :=
  Finset.univ.filter fun r =>
    4 <= ((modFortyNineFibre root r) ∪ event).card

private theorem twoCell_sum_modFortyNineFibre_sdiff_card
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
    _ = (Finset.univ \ event).card := by simpa only using h.symm

private theorem successfulFourModFortyNineRootsForSet_weighted
    (root : FiveMillionFiniteForm -> FiveMillionModFortyNine)
    (event : Finset FiveMillionFiniteForm)
    (hcard : event.card <= 3) :
    (4 - event.card) *
        (successfulFourModFortyNineRootsForSet root event).card <=
      6 - event.card := by
  classical
  have hterm : ∀ r ∈ successfulFourModFortyNineRootsForSet root event,
      4 - event.card <= ((modFortyNineFibre root r) \ event).card := by
    intro r hr
    have hsuccess :
        4 <= ((modFortyNineFibre root r) ∪ event).card := by
      simpa [successfulFourModFortyNineRootsForSet] using
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
      (4 - event.card) *
          (successfulFourModFortyNineRootsForSet root event).card <=
        ∑ r ∈ successfulFourModFortyNineRootsForSet root event,
          ((modFortyNineFibre root r) \ event).card := by
    simpa [Nat.mul_comm] using Finset.sum_le_sum hterm
  have hupper :
      (∑ r ∈ successfulFourModFortyNineRootsForSet root event,
          ((modFortyNineFibre root r) \ event).card) <=
        6 - event.card := by
    have hsubset : event ⊆
        (Finset.univ : Finset FiveMillionFiniteForm) := by simp
    calc
      (∑ r ∈ successfulFourModFortyNineRootsForSet root event,
          ((modFortyNineFibre root r) \ event).card) <=
          ∑ r : FiveMillionModFortyNine,
            ((modFortyNineFibre root r) \ event).card := by
              exact Finset.sum_le_sum_of_subset (by
                intro r _hr
                exact Finset.mem_univ r)
      _ = (Finset.univ \ event).card :=
        twoCell_sum_modFortyNineFibre_sdiff_card root event
      _ = 6 - event.card := by
        rw [Finset.card_sdiff]
        simp
  exact hlower.trans hupper

theorem successfulFourModFortyNineRootsForSet_card_le_one
    (root : FiveMillionFiniteForm -> FiveMillionModFortyNine)
    (event : Finset FiveMillionFiniteForm)
    (hzero : event.card = 0) :
    (successfulFourModFortyNineRootsForSet root event).card <= 1 := by
  have hweighted := successfulFourModFortyNineRootsForSet_weighted
    root event (by omega)
  simp [hzero] at hweighted
  omega

theorem successfulFourModFortyNineRootsForSet_card_le_three
    (root : FiveMillionFiniteForm -> FiveMillionModFortyNine)
    (event : Finset FiveMillionFiniteForm)
    (hthree : event.card = 3) :
    (successfulFourModFortyNineRootsForSet root event).card <= 3 := by
  have hweighted := successfulFourModFortyNineRootsForSet_weighted
    root event (by omega)
  simpa [hthree] using hweighted

def fiveMillionTwoCellPeriodicFiniteCount
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine -> Finset FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm -> FiveMillionModFortyNine) : Nat :=
  ∑ r4 : FiveMillionModFour,
    if r4 = fullModFour then 9 * 49
    else ∑ r9 : FiveMillionModNine,
      (successfulFourModFortyNineRootsForSet modFortyNineRoot
        (modNineEvent r9)).card

theorem fiveMillionTwoCellPeriodicFiniteCount_le_480
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine -> Finset FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm -> FiveMillionModFortyNine)
    (hshape : ∀ r9, (modNineEvent r9).card = 0 ∨
      (modNineEvent r9).card = 3)
    (htriple :
      ((Finset.univ.filter fun r9 : FiveMillionModNine =>
        3 <= (modNineEvent r9).card)).card <= 2) :
    fiveMillionTwoCellPeriodicFiniteCount fullModFour modNineEvent
      modFortyNineRoot <= 480 := by
  classical
  let triples := Finset.univ.filter fun r9 : FiveMillionModNine =>
    3 <= (modNineEvent r9).card
  have hnonfull :
      (∑ r9 : FiveMillionModNine,
        (successfulFourModFortyNineRootsForSet modFortyNineRoot
          (modNineEvent r9)).card) <= 13 := by
    calc
      (∑ r9 : FiveMillionModNine,
          (successfulFourModFortyNineRootsForSet modFortyNineRoot
            (modNineEvent r9)).card) <=
          ∑ r9 : FiveMillionModNine,
            if 3 <= (modNineEvent r9).card then 3 else 1 := by
              apply Finset.sum_le_sum
              intro r9 _hr9
              by_cases hthree : 3 <= (modNineEvent r9).card
              · simp [hthree]
                have hcard : (modNineEvent r9).card = 3 := by
                  rcases hshape r9 with hzero | hthreeEq
                  · omega
                  · exact hthreeEq
                exact successfulFourModFortyNineRootsForSet_card_le_three
                  modFortyNineRoot (modNineEvent r9) hcard
              · simp [hthree]
                have hcard : (modNineEvent r9).card = 0 := by
                  rcases hshape r9 with hzero | hthreeEq
                  · exact hzero
                  · omega
                exact successfulFourModFortyNineRootsForSet_card_le_one
                  modFortyNineRoot (modNineEvent r9) hcard
      _ = 9 + 2 * triples.card := by
        have hpoint : ∀ r9 : FiveMillionModNine,
            (if 3 <= (modNineEvent r9).card then 3 else 1) =
              1 + 2 * (if 3 <= (modNineEvent r9).card then 1 else 0) := by
          intro r9
          by_cases h : 3 <= (modNineEvent r9).card <;> simp [h]
        simp_rw [hpoint]
        rw [Finset.sum_add_distrib]
        congr 1
        rw [← Finset.mul_sum]
        rw [Finset.sum_boole]
        simp [triples]
      _ <= 13 := by
        dsimp [triples]
        omega
  unfold fiveMillionTwoCellPeriodicFiniteCount
  calc
    (∑ r4 : FiveMillionModFour,
      if r4 = fullModFour then 9 * 49
      else ∑ r9 : FiveMillionModNine,
        (successfulFourModFortyNineRootsForSet modFortyNineRoot
          (modNineEvent r9)).card) <=
        ∑ r4 : FiveMillionModFour,
          if r4 = fullModFour then 441 else 13 := by
            exact Finset.sum_le_sum fun r4 _ => by
              by_cases h : r4 = fullModFour
              · simp [h]
              · simpa [h] using hnonfull
    _ = 480 := by
      have hpoint : ∀ r4 : FiveMillionModFour,
          (if r4 = fullModFour then 441 else 13) =
            13 + (if r4 = fullModFour then 428 else 0) := by
        intro r4
        by_cases h : r4 = fullModFour <;> simp [h]
      simp_rw [hpoint]
      rw [Finset.sum_add_distrib]
      simp

theorem fiveMillionTwoCellPeriodicFiniteDensity_le
    (fullModFour : FiveMillionModFour)
    (modNineEvent : FiveMillionModNine -> Finset FiveMillionFiniteForm)
    (modFortyNineRoot :
      FiveMillionFiniteForm -> FiveMillionModFortyNine)
    (hshape : ∀ r9, (modNineEvent r9).card = 0 ∨
      (modNineEvent r9).card = 3)
    (htriple :
      ((Finset.univ.filter fun r9 : FiveMillionModNine =>
        3 <= (modNineEvent r9).card)).card <= 2) :
    (fiveMillionTwoCellPeriodicFiniteCount fullModFour modNineEvent
        modFortyNineRoot : Rat) / 1764 <= 40 / 147 := by
  have h := fiveMillionTwoCellPeriodicFiniteCount_le_480
    fullModFour modNineEvent modFortyNineRoot hshape htriple
  calc
    (fiveMillionTwoCellPeriodicFiniteCount fullModFour modNineEvent
        modFortyNineRoot : Rat) / 1764 <= 480 / 1764 := by
          gcongr
          exact_mod_cast h
    _ = 40 / 147 := by norm_num

#print axioms successfulFourModFortyNineRootsForSet_card_le_one
#print axioms successfulFourModFortyNineRootsForSet_card_le_three
#print axioms fiveMillionTwoCellPeriodicFiniteCount_le_480
#print axioms fiveMillionTwoCellPeriodicFiniteDensity_le

end Erdos848
