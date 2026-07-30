import Erdos848.TailR263EvenOneFinite23Checker

namespace Erdos848

/-!
# Cutoff-23 generic mixed-half arithmetic on the twenty-million block

The existing R263 certificate treats the common mod-nine row directly, but
its non-common certificate only needs the all-three intersection because it
is used inside a four-pivot inequality.  The twenty-million block instead
uses the three-pivot mixed-half inequality.  This checker verifies its exact
cutoff-23 arithmetic for every completion of the seven quotient-root
patterns with a non-common mod-nine coordinate.

The external generator only splits the finite Boolean computation into
twenty small modules.  Every leaf is proved by kernel reduction with
`decide`.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def twentyMillionFiniteEvenGeneric23 : Rat := 8_685 / 1_000_000

def twentyMillionFiniteGeneric23CrossInequality
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) : Prop :=
  let allThree :=
    e1FiniteAllThreeNumerator p3 p7 p11 p13 p17 p19 p23
  let twoOfThree :=
    e1FiniteTwoOfThreeNumerator p3 p7 p11 p13 p17 p19 p23
  let endpoint :=
    e1FiniteAllThreeEndpoint p3 p7 p11 p13 p17 p19 p23 +
      e1FiniteTwoOfThreeEndpoint p3 p7 p11 p13 p17 p19 p23
  0 <= allThree ∧
    0 <= twoOfThree ∧
      1_000_000 *
          ((allThree + twoOfThree) * 20_000_000 +
            25 * ((allThree + twoOfThree) +
              endpoint * e1FiniteFullModulus)) <=
        8_685 * e1FiniteFullModulus * 25 * 20_000_000

instance twentyMillionFiniteGeneric23CrossInequalityDecidable
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) :
    Decidable (twentyMillionFiniteGeneric23CrossInequality
      p3 p7 p11 p13 p17 p19 p23) := by
  unfold twentyMillionFiniteGeneric23CrossInequality
  infer_instance

def twentyMillionFiniteGeneric23BlockPasses
    (p3 p7 : E1FiniteRootPattern) : Bool :=
  e1FinitePatternList.all fun p11 =>
    e1FinitePatternList.all fun p13 =>
      e1FinitePatternList.all fun p17 =>
        e1FinitePatternList.all fun p19 =>
          e1FinitePatternList.all fun p23 =>
          decide (twentyMillionFiniteGeneric23CrossInequality
              p3 p7 p11 p13 p17 p19 p23)

def twentyMillionFiniteGeneric23SubBlockPasses
    (p3 p7 p11 : E1FiniteRootPattern) : Bool :=
  e1FinitePatternList.all fun p13 =>
    e1FinitePatternList.all fun p17 =>
      e1FinitePatternList.all fun p19 =>
        e1FinitePatternList.all fun p23 =>
          decide (twentyMillionFiniteGeneric23CrossInequality
            p3 p7 p11 p13 p17 p19 p23)

theorem twentyMillionFiniteGeneric23BlockPasses_sound
    {p3 p7 : E1FiniteRootPattern}
    (hpass : twentyMillionFiniteGeneric23BlockPasses p3 p7 = true)
    (p11 p13 p17 p19 p23 : E1FiniteRootPattern) :
    twentyMillionFiniteGeneric23CrossInequality
      p3 p7 p11 p13 p17 p19 p23 := by
  have h11 := (List.all_eq_true.mp hpass)
    p11 (mem_e1FinitePatternList p11)
  have h13 := (List.all_eq_true.mp h11)
    p13 (mem_e1FinitePatternList p13)
  have h17 := (List.all_eq_true.mp h13)
    p17 (mem_e1FinitePatternList p17)
  have h19 := (List.all_eq_true.mp h17)
    p19 (mem_e1FinitePatternList p19)
  have h23 := (List.all_eq_true.mp h19)
    p23 (mem_e1FinitePatternList p23)
  exact of_decide_eq_true h23

theorem twentyMillionFiniteGeneric23SubBlockPasses_sound
    {p3 p7 p11 : E1FiniteRootPattern}
    (hpass :
      twentyMillionFiniteGeneric23SubBlockPasses p3 p7 p11 = true)
    (p13 p17 p19 p23 : E1FiniteRootPattern) :
    twentyMillionFiniteGeneric23CrossInequality
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

#print axioms twentyMillionFiniteGeneric23BlockPasses_sound
#print axioms twentyMillionFiniteGeneric23SubBlockPasses_sound

end Erdos848
