import Erdos848.TailR263EvenOneFinite23Checker
import Erdos848.TailTenMillionBudget

namespace Erdos848

/-!
# Corrected cutoff-23 arithmetic for the ten-million four-pivot rows

This checker reuses the seven-coordinate cutoff-23 CRT model.  A selected
triple only comes with one close pivot pair, so the antecedent requires that
at least one of its three root-pair products satisfies the gap restriction.

The target density is the exact enumerated maximum
`16066521906648 / e1FiniteFullModulus`.  The endpoint `607` includes one
extra count for the `N / 25 + 1` progression ceiling.  Certificate producers
only split the finite enumeration; every inequality is reduced by Lean.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def tenMillionEvenFinite23PairFactor
    (prime : Nat) (pattern : E1FiniteRootPattern) (pair : Fin 3) : Nat :=
  if e1FinitePatternPairCard pattern pair = 1 then prime else 1

def tenMillionEvenFinite23PairProduct
    (pair : Fin 3)
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) : Nat :=
  tenMillionEvenFinite23PairFactor 3 p3 pair *
    tenMillionEvenFinite23PairFactor 7 p7 pair *
    tenMillionEvenFinite23PairFactor 11 p11 pair *
    tenMillionEvenFinite23PairFactor 13 p13 pair *
    tenMillionEvenFinite23PairFactor 17 p17 pair *
    tenMillionEvenFinite23PairFactor 19 p19 pair *
    tenMillionEvenFinite23PairFactor 23 p23 pair

def TenMillionEvenFinite23CrossInequality
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) : Prop :=
  p3 != .allEqual ->
  (4 * tenMillionEvenFinite23PairProduct 0
        p3 p7 p11 p13 p17 p19 p23 ^ 2 < 1_000_001 ∨
    4 * tenMillionEvenFinite23PairProduct 1
        p3 p7 p11 p13 p17 p19 p23 ^ 2 < 1_000_001 ∨
    4 * tenMillionEvenFinite23PairProduct 2
        p3 p7 p11 p13 p17 p19 p23 ^ 2 < 1_000_001) ->
  0 <= e1FiniteAllThreeNumerator p3 p7 p11 p13 p17 p19 p23 ∧
    10_000_000 *
        e1FiniteAllThreeNumerator p3 p7 p11 p13 p17 p19 p23 +
      25 * e1FiniteAllThreeNumerator p3 p7 p11 p13 p17 p19 p23 +
      25 * e1FiniteFullModulus *
        e1FiniteAllThreeEndpoint p3 p7 p11 p13 p17 p19 p23 <=
      10_000_000 * 16_066_521_906_648 +
        25 * e1FiniteFullModulus * 607

instance tenMillionEvenFinite23CrossInequalityDecidable
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) :
    Decidable (TenMillionEvenFinite23CrossInequality
      p3 p7 p11 p13 p17 p19 p23) := by
  unfold TenMillionEvenFinite23CrossInequality
  infer_instance

def tenMillionEvenFinite23BlockPasses
    (p3 p7 p11 : E1FiniteRootPattern) : Bool :=
  e1FinitePatternList.all fun p13 =>
    e1FinitePatternList.all fun p17 =>
      e1FinitePatternList.all fun p19 =>
        e1FinitePatternList.all fun p23 =>
          decide (TenMillionEvenFinite23CrossInequality
            p3 p7 p11 p13 p17 p19 p23)

theorem tenMillionEvenFinite23BlockPasses_sound
    {p3 p7 p11 : E1FiniteRootPattern}
    (hpass : tenMillionEvenFinite23BlockPasses p3 p7 p11 = true)
    (p13 p17 p19 p23 : E1FiniteRootPattern) :
    TenMillionEvenFinite23CrossInequality
      p3 p7 p11 p13 p17 p19 p23 := by
  have h13 := (List.all_eq_true.mp hpass)
    p13 (mem_e1FinitePatternList p13)
  have h17 := (List.all_eq_true.mp h13)
    p17 (mem_e1FinitePatternList p17)
  have h19 := (List.all_eq_true.mp h17)
    p19 (mem_e1FinitePatternList p19)
  have h23 := (List.all_eq_true.mp h19)
    p23 (mem_e1FinitePatternList p23)
  exact of_decide_eq_true h23

#print axioms tenMillionEvenFinite23BlockPasses_sound

end Erdos848
