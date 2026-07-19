import Erdos848.TailR263EvenOneFinite23Pattern

namespace Erdos848

/-!
# Semantic three-form identities for the E1 cutoff-23 certificate

This file contains only finite-set identities.  It connects equality patterns
of three total root coordinates to the all-three and two-of-three events used
by the unchanged four-pivot and mixed-half inequalities.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def e1FiniteRootPatternOf (a b c : Nat) : E1FiniteRootPattern :=
  if a = b then
    if a = c then .allEqual else .firstSecond
  else if a = c then .firstThird
  else if b = c then .secondThird
  else .allDistinct

@[simp] theorem e1FiniteRootPatternOf_eq_allEqual_iff
    (a b c : Nat) :
    e1FiniteRootPatternOf a b c = .allEqual ↔ a = b ∧ a = c := by
  by_cases hab : a = b <;> by_cases hac : a = c <;>
    by_cases hbc : b = c <;>
      simp_all [e1FiniteRootPatternOf]

def e1FinitePairRootSet (pair : Fin 3) (a b c : Nat) : Finset Nat :=
  ![{a, b}, {a, c}, {b, c}] pair

def e1FiniteTripleRootSet (a b c : Nat) : Finset Nat :=
  {a, b, c}

theorem e1FinitePairRootSet_card
    (pair : Fin 3) (a b c : Nat) :
    (e1FinitePairRootSet pair a b c).card =
      e1FinitePatternPairCard (e1FiniteRootPatternOf a b c) pair := by
  fin_cases pair <;>
    by_cases hab : a = b <;>
      by_cases hac : a = c <;>
        by_cases hbc : b = c <;>
          simp_all [e1FinitePairRootSet, e1FinitePatternPairCard,
            e1FiniteRootPatternOf]

theorem e1FiniteTripleRootSet_card (a b c : Nat) :
    (e1FiniteTripleRootSet a b c).card =
      e1FinitePatternTripleCard (e1FiniteRootPatternOf a b c) := by
  by_cases hab : a = b <;>
    by_cases hac : a = c <;>
      by_cases hbc : b = c <;>
        simp_all [e1FiniteTripleRootSet, e1FinitePatternTripleCard,
          e1FiniteRootPatternOf]

abbrev E1FinitePivotRootFamily :=
  ∀ _pivot : Fin 3, ∀ index : E1FinitePrimeIndex,
    Fin (e1FiniteModulus index)

def e1FiniteRootNat
    (roots : E1FinitePivotRootFamily)
    (pivot : Fin 3) (index : E1FinitePrimeIndex) : Nat :=
  (roots pivot index).val

def e1FiniteRootBad
    (roots : E1FinitePivotRootFamily) (pivot : Fin 3) (q : Nat) : Prop :=
  ∃ index : E1FinitePrimeIndex,
    q % e1FiniteModulus index = e1FiniteRootNat roots pivot index

def e1FiniteRootPairRoots
    (roots : E1FinitePivotRootFamily) (pair : Fin 3)
    (index : E1FinitePrimeIndex) : Finset Nat :=
  e1FinitePairRootSet pair
    (e1FiniteRootNat roots 0 index)
    (e1FiniteRootNat roots 1 index)
    (e1FiniteRootNat roots 2 index)

def e1FiniteRootTripleRoots
    (roots : E1FinitePivotRootFamily)
    (index : E1FinitePrimeIndex) : Finset Nat :=
  e1FiniteTripleRootSet
    (e1FiniteRootNat roots 0 index)
    (e1FiniteRootNat roots 1 index)
    (e1FiniteRootNat roots 2 index)

def e1FiniteRootPatternAt
    (roots : E1FinitePivotRootFamily)
    (index : E1FinitePrimeIndex) : E1FiniteRootPattern :=
  e1FiniteRootPatternOf
    (e1FiniteRootNat roots 0 index)
    (e1FiniteRootNat roots 1 index)
    (e1FiniteRootNat roots 2 index)

theorem e1FiniteRootPairRoots_card_function
    (roots : E1FinitePivotRootFamily) (pair : Fin 3) :
    (fun index => (e1FiniteRootPairRoots roots pair index).card) =
      e1FinitePairCards
        (e1FiniteRootPatternAt roots 0)
        (e1FiniteRootPatternAt roots 1)
        (e1FiniteRootPatternAt roots 2)
        (e1FiniteRootPatternAt roots 3)
        (e1FiniteRootPatternAt roots 4)
        (e1FiniteRootPatternAt roots 5)
        (e1FiniteRootPatternAt roots 6) pair := by
  funext index
  fin_cases index <;>
    simpa [e1FiniteRootPairRoots, e1FiniteRootPatternAt,
      e1FinitePairCards] using
      (e1FinitePairRootSet_card pair _ _ _)

theorem e1FiniteRootTripleRoots_card_function
    (roots : E1FinitePivotRootFamily) :
    (fun index => (e1FiniteRootTripleRoots roots index).card) =
      e1FiniteTripleCards
        (e1FiniteRootPatternAt roots 0)
        (e1FiniteRootPatternAt roots 1)
        (e1FiniteRootPatternAt roots 2)
        (e1FiniteRootPatternAt roots 3)
        (e1FiniteRootPatternAt roots 4)
        (e1FiniteRootPatternAt roots 5)
        (e1FiniteRootPatternAt roots 6) := by
  funext index
  fin_cases index <;>
    simpa [e1FiniteRootTripleRoots, e1FiniteRootPatternAt,
      e1FiniteTripleCards] using
      (e1FiniteTripleRootSet_card _ _ _)

section ThreeEventIdentities

variable {α : Type*} [DecidableEq α]

attribute [local instance] Classical.propDecidable

noncomputable def e1FiniteBadCount
    (bad : Fin 3 -> α -> Prop) (point : α) : Nat :=
  (if bad 0 point then 1 else 0) +
    (if bad 1 point then 1 else 0) +
    (if bad 2 point then 1 else 0)

def e1FiniteSingleSurvives
    (bad : Fin 3 -> α -> Prop) (pivot : Fin 3) (point : α) : Prop :=
  Not (bad pivot point)

def e1FinitePairSurvives
    (bad : Fin 3 -> α -> Prop) (pair : Fin 3) (point : α) : Prop :=
  ![Not (bad 0 point) ∧ Not (bad 1 point),
    Not (bad 0 point) ∧ Not (bad 2 point),
    Not (bad 1 point) ∧ Not (bad 2 point)] pair

def e1FiniteTripleSurvives
    (bad : Fin 3 -> α -> Prop) (point : α) : Prop :=
  Not (bad 0 point) ∧ Not (bad 1 point) ∧ Not (bad 2 point)

def e1FiniteAllThreeBad
    (bad : Fin 3 -> α -> Prop) (point : α) : Prop :=
  bad 0 point ∧ bad 1 point ∧ bad 2 point

theorem e1FiniteAllThreeBad_of_three_le_badCount
    (bad : Fin 3 -> α -> Prop) (point : α)
    (hcount : 3 <= e1FiniteBadCount bad point) :
    e1FiniteAllThreeBad bad point := by
  classical
  by_cases h0 : bad 0 point <;>
    by_cases h1 : bad 1 point <;>
      by_cases h2 : bad 2 point <;>
        simp_all [e1FiniteBadCount, e1FiniteAllThreeBad]

private theorem e1Finite_sum_fin_three (f : Fin 3 -> Int) :
    (∑ i, f i) = f 0 + f 1 + f 2 := by
  norm_num [Fin.sum_univ_succ, add_assoc]

private theorem e1FiniteAllThree_pointwise
    (bad : Fin 3 -> α -> Prop) (point : α) :
    (if e1FiniteAllThreeBad bad point then 1 else 0 : Int) =
      1 - (∑ pivot : Fin 3,
        if e1FiniteSingleSurvives bad pivot point then 1 else 0) +
      (∑ pair : Fin 3,
        if e1FinitePairSurvives bad pair point then 1 else 0) -
      (if e1FiniteTripleSurvives bad point then 1 else 0) := by
  classical
  by_cases h0 : bad 0 point <;>
    by_cases h1 : bad 1 point <;>
      by_cases h2 : bad 2 point <;>
        rw [e1Finite_sum_fin_three, e1Finite_sum_fin_three] <;>
        simp [e1FiniteAllThreeBad, e1FiniteSingleSurvives,
          e1FinitePairSurvives, e1FiniteTripleSurvives, h0, h1, h2]

private theorem e1FiniteTwoOfThree_pointwise
    (bad : Fin 3 -> α -> Prop) (point : α) :
    (if 2 <= e1FiniteBadCount bad point then 1 else 0 : Int) =
      1 - (∑ pair : Fin 3,
        if e1FinitePairSurvives bad pair point then 1 else 0) +
      2 * (if e1FiniteTripleSurvives bad point then 1 else 0) := by
  classical
  by_cases h0 : bad 0 point <;>
    by_cases h1 : bad 1 point <;>
      by_cases h2 : bad 2 point <;>
        rw [e1Finite_sum_fin_three] <;>
        simp [e1FiniteBadCount, e1FinitePairSurvives,
          e1FiniteTripleSurvives, h0, h1, h2]

private theorem e1Finite_card_filter_int
    (points : Finset α) (P : α -> Prop) [DecidablePred P] :
    (((points.filter P).card : Nat) : Int) =
      ∑ point ∈ points, if P point then 1 else 0 := by
  simpa using (Finset.sum_boole (R := Int) P points).symm

theorem e1FiniteAllThree_card_identity
    (points : Finset α) (bad : Fin 3 -> α -> Prop) :
    (((points.filter fun point =>
        e1FiniteAllThreeBad bad point).card : Nat) : Int) =
      points.card -
        (∑ pivot : Fin 3,
          (((points.filter fun point =>
            e1FiniteSingleSurvives bad pivot point).card : Nat) : Int)) +
        (∑ pair : Fin 3,
          (((points.filter fun point =>
            e1FinitePairSurvives bad pair point).card : Nat) : Int)) -
        ((points.filter fun point =>
          e1FiniteTripleSurvives bad point).card : Nat) := by
  classical
  have hswap (f : Fin 3 → α → Int) :
      (∑ point ∈ points, ∑ i : Fin 3, f i point) =
        ∑ i : Fin 3, ∑ point ∈ points, f i point := by
    rw [Finset.sum_comm]
  simp_rw [e1Finite_card_filter_int]
  calc
    (∑ point ∈ points,
        if e1FiniteAllThreeBad bad point then (1 : Int) else 0) =
        ∑ point ∈ points,
          (1 -
            (∑ pivot : Fin 3,
              if e1FiniteSingleSurvives bad pivot point then 1 else 0) +
            (∑ pair : Fin 3,
              if e1FinitePairSurvives bad pair point then 1 else 0) -
            (if e1FiniteTripleSurvives bad point then 1 else 0)) := by
      apply Finset.sum_congr rfl
      intro point _
      exact e1FiniteAllThree_pointwise bad point
    _ = _ := by
      simp only [Finset.sum_sub_distrib, Finset.sum_add_distrib]
      rw [hswap, hswap]
      simp

theorem e1FiniteTwoOfThree_card_identity
    (points : Finset α) (bad : Fin 3 -> α -> Prop) :
    (((points.filter fun point =>
        2 <= e1FiniteBadCount bad point).card : Nat) : Int) =
      points.card -
        (∑ pair : Fin 3,
          (((points.filter fun point =>
            e1FinitePairSurvives bad pair point).card : Nat) : Int)) +
        2 * ((points.filter fun point =>
          e1FiniteTripleSurvives bad point).card : Nat) := by
  classical
  have hswap (f : Fin 3 → α → Int) :
      (∑ point ∈ points, ∑ i : Fin 3, f i point) =
        ∑ i : Fin 3, ∑ point ∈ points, f i point := by
    rw [Finset.sum_comm]
  simp_rw [e1Finite_card_filter_int]
  calc
    (∑ point ∈ points,
        if 2 <= e1FiniteBadCount bad point then (1 : Int) else 0) =
        ∑ point ∈ points,
          (1 -
            (∑ pair : Fin 3,
              if e1FinitePairSurvives bad pair point then 1 else 0) +
            2 * (if e1FiniteTripleSurvives bad point then 1 else 0)) := by
      apply Finset.sum_congr rfl
      intro point _
      exact e1FiniteTwoOfThree_pointwise bad point
    _ = _ := by
      simp only [Finset.sum_sub_distrib, Finset.sum_add_distrib]
      rw [hswap]
      simp only [Finset.sum_const, nsmul_eq_mul]
      rw [Finset.mul_sum]
      ring

end ThreeEventIdentities

#print axioms e1FinitePairRootSet_card
#print axioms e1FiniteTripleRootSet_card
#print axioms e1FiniteRootPairRoots_card_function
#print axioms e1FiniteRootTripleRoots_card_function
#print axioms e1FiniteAllThree_card_identity
#print axioms e1FiniteTwoOfThree_card_identity

end Erdos848
