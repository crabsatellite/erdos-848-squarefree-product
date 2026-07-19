import Erdos848.ScratchE3PatternCertificate

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def scratchE3PairForms (pair : Fin 3) : Finset (Fin 3) :=
  ![{0, 1}, {0, 2}, {1, 2}] pair

def scratchE3RootPatternOf (a b c : Nat) : ScratchE3RootPattern :=
  if a = b then
    if a = c then .allEqual else .firstSecond
  else if a = c then .firstThird
  else if b = c then .secondThird
  else .allDistinct

def scratchE3PairRootSet (pair : Fin 3) (a b c : Nat) : Finset Nat :=
  ![{a, b}, {a, c}, {b, c}] pair

def scratchE3TripleRootSet (a b c : Nat) : Finset Nat :=
  {a, b, c}

theorem scratchE3PairRootSet_card
    (pair : Fin 3) (a b c : Nat) :
    (scratchE3PairRootSet pair a b c).card =
      scratchE3PatternPairCard (scratchE3RootPatternOf a b c) pair := by
  fin_cases pair <;>
    by_cases hab : a = b <;>
      by_cases hac : a = c <;>
        by_cases hbc : b = c <;>
          simp_all [scratchE3PairRootSet, scratchE3PatternPairCard,
            scratchE3RootPatternOf]

theorem scratchE3TripleRootSet_card (a b c : Nat) :
    (scratchE3TripleRootSet a b c).card =
      scratchE3PatternTripleCard (scratchE3RootPatternOf a b c) := by
  by_cases hab : a = b <;>
    by_cases hac : a = c <;>
      by_cases hbc : b = c <;>
        simp_all [scratchE3TripleRootSet, scratchE3PatternTripleCard,
          scratchE3RootPatternOf]

section ThreeEventIdentity

variable {α : Type*} [DecidableEq α]

attribute [local instance] Classical.propDecidable

noncomputable def scratchE3BadCount (bad : Fin 3 -> α -> Prop)
    (point : α) : Nat :=
  (if bad 0 point then 1 else 0) +
    (if bad 1 point then 1 else 0) +
    (if bad 2 point then 1 else 0)

def scratchE3PairSurvives
    (bad : Fin 3 -> α -> Prop)
    (pair : Fin 3) (point : α) : Prop :=
  ![Not (bad 0 point) ∧ Not (bad 1 point),
    Not (bad 0 point) ∧ Not (bad 2 point),
    Not (bad 1 point) ∧ Not (bad 2 point)] pair

def scratchE3TripleSurvives
    (bad : Fin 3 -> α -> Prop)
    (point : α) : Prop :=
  Not (bad 0 point) ∧ Not (bad 1 point) ∧ Not (bad 2 point)

private theorem scratchE3_sum_fin_three (f : Fin 3 -> Int) :
    (∑ i, f i) = f 0 + f 1 + f 2 := by
  norm_num [Fin.sum_univ_succ, add_assoc]

private theorem scratchE3Threshold_pointwise
    (bad : Fin 3 -> α -> Prop)
    (point : α) :
    (if 2 <= scratchE3BadCount bad point then 1 else 0 : Int) =
      1 - (∑ pair : Fin 3,
        if scratchE3PairSurvives bad pair point then 1 else 0) +
        2 * (if scratchE3TripleSurvives bad point then 1 else 0) := by
  classical
  by_cases h0 : bad 0 point <;>
    by_cases h1 : bad 1 point <;>
      by_cases h2 : bad 2 point <;>
        rw [scratchE3_sum_fin_three] <;>
        simp [scratchE3BadCount, scratchE3PairSurvives,
          scratchE3TripleSurvives, h0, h1, h2]

private theorem scratchE3_card_filter_int
    (points : Finset α) (P : α -> Prop) [DecidablePred P] :
    (((points.filter P).card : Nat) : Int) =
      ∑ point ∈ points, if P point then 1 else 0 := by
  simpa using (Finset.sum_boole (R := Int) P points).symm

theorem scratchE3Threshold_card_identity
    (points : Finset α)
    (bad : Fin 3 -> α -> Prop) :
    (((points.filter fun point => 2 <= scratchE3BadCount bad point).card : Nat) : Int) =
      points.card -
        (∑ pair : Fin 3,
          (((points.filter fun point =>
            scratchE3PairSurvives bad pair point).card : Nat) : Int)) +
        2 * ((points.filter fun point => scratchE3TripleSurvives bad point).card : Nat) := by
  classical
  have hsum :
      (∑ point ∈ points,
        (if 2 <= scratchE3BadCount bad point then 1 else 0 : Int)) =
      ∑ point ∈ points,
        (1 - (∑ pair : Fin 3,
          if scratchE3PairSurvives bad pair point then 1 else 0) +
          2 * (if scratchE3TripleSurvives bad point then 1 else 0)) := by
    apply Finset.sum_congr rfl
    intro point _hpoint
    exact scratchE3Threshold_pointwise bad point
  have hone :
      ((points.card : Nat) : Int) = ∑ point ∈ points, (1 : Int) := by
    simp
  have hpair :
      (∑ pair : Fin 3,
        (((points.filter fun point =>
          scratchE3PairSurvives bad pair point).card : Nat) : Int)) =
      ∑ pair : Fin 3, ∑ point ∈ points,
        (if scratchE3PairSurvives bad pair point then 1 else 0 : Int) := by
    apply Finset.sum_congr rfl
    intro pair _hpair
    exact scratchE3_card_filter_int points
      (fun point => scratchE3PairSurvives bad pair point)
  have htriple :
      (((points.filter fun point =>
        scratchE3TripleSurvives bad point).card : Nat) : Int) =
      ∑ point ∈ points,
        (if scratchE3TripleSurvives bad point then 1 else 0 : Int) :=
    scratchE3_card_filter_int points
      (fun point => scratchE3TripleSurvives bad point)
  rw [scratchE3_card_filter_int]
  calc
    (∑ point ∈ points,
        (if 2 <= scratchE3BadCount bad point then 1 else 0 : Int)) =
        ∑ point ∈ points,
          (1 - (∑ pair : Fin 3,
            if scratchE3PairSurvives bad pair point then 1 else 0) +
            2 * (if scratchE3TripleSurvives bad point then 1 else 0)) := hsum
    _ = points.card -
        (∑ pair : Fin 3,
          (((points.filter fun point =>
          scratchE3PairSurvives bad pair point).card : Nat) : Int)) +
        2 * ((points.filter fun point =>
          scratchE3TripleSurvives bad point).card : Nat) := by
      simp only [Finset.sum_sub_distrib, Finset.sum_add_distrib,
        Finset.mul_sum, Finset.sum_mul]
      rw [Finset.sum_comm]
      rw [← hone, ← hpair]
      rw [← Finset.mul_sum, ← htriple]

end ThreeEventIdentity

#print axioms scratchE3PairRootSet_card
#print axioms scratchE3TripleRootSet_card
#print axioms scratchE3Threshold_card_identity

end Erdos848
