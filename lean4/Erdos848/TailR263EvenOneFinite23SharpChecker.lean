import Erdos848.TailR263EvenOneFinite23Checker

namespace Erdos848

/-!
# Feasible cutoff-23 arithmetic on `[5,000,000, 10,000,000)`

The older cutoff-23 checker deliberately ranges over independent equality
patterns and is reused above ten million.  On the first block the actual
pivots impose one additional, purely geometric condition.  If the selected
pair has the same quotient root at a prime, that prime square divides the pair
distance; the common mod-four class supplies the factor four.  Since both
pivots lie in `[1,N]` and `N < 10,000,000`, the pair-faithful root completion
satisfies `4 Q^2 < 10,000,000`.

This file reflects exactly that premise.  The generated files only prove the
remaining finite arithmetic by `decide`.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def e1FiniteSharpFourTargetMillion : E1FiniteCellType → Nat
  | .good => 843
  | .seven => 1428
  | .eleven => 980
  | .both => 1569

def e1FiniteSharpThreeTargetMillion : E1FiniteCellType → Nat
  | .good => 11936
  | .seven => 12321
  | .eleven => 12031
  | .both => 12373

def e1FiniteSharpFourPaymentCrossInequality
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) : Prop :=
  e1FinitePatternAllPairsFeasibleBelowTenMillion
      p3 p7 p11 p13 p17 p19 p23 →
    let density :=
      e1FiniteAllThreeNumerator p3 p7 p11 p13 p17 p19 p23
    let endpoint :=
      e1FiniteAllThreeEndpoint p3 p7 p11 p13 p17 p19 p23
    0 ≤ density ∧
      1_000_000 *
          (density * 5_000_000 +
            25 * (density + endpoint * e1FiniteFullModulus)) ≤
        e1FiniteSharpFourTargetMillion
            (e1FiniteCellTypeOf p7 p11) *
          e1FiniteFullModulus * 25 * 5_000_000

def e1FiniteSharpThreePaymentCrossInequality
    (p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) : Prop :=
  e1FinitePatternFeasibleBelowTenMillion
      .allEqual p7 p11 p13 p17 p19 p23 →
    let allThree :=
      e1FiniteAllThreeNumerator
        .allEqual p7 p11 p13 p17 p19 p23
    let twoOfThree :=
      e1FiniteTwoOfThreeNumerator
        .allEqual p7 p11 p13 p17 p19 p23
    let endpoint :=
      e1FiniteAllThreeEndpoint
          .allEqual p7 p11 p13 p17 p19 p23 +
        e1FiniteTwoOfThreeEndpoint
          .allEqual p7 p11 p13 p17 p19 p23
    0 ≤ allThree ∧ 0 ≤ twoOfThree ∧
      1_000_000 *
          ((allThree + twoOfThree) * 5_000_000 +
            25 * ((allThree + twoOfThree) +
              endpoint * e1FiniteFullModulus)) ≤
        e1FiniteSharpThreeTargetMillion
            (e1FiniteCellTypeOf p7 p11) *
          e1FiniteFullModulus * 25 * 5_000_000

instance e1FiniteSharpFourPaymentCrossInequalityDecidable
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) :
    Decidable (e1FiniteSharpFourPaymentCrossInequality
      p3 p7 p11 p13 p17 p19 p23) := by
  unfold e1FiniteSharpFourPaymentCrossInequality
  infer_instance

instance e1FiniteSharpThreePaymentCrossInequalityDecidable
    (p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern) :
    Decidable (e1FiniteSharpThreePaymentCrossInequality
      p7 p11 p13 p17 p19 p23) := by
  unfold e1FiniteSharpThreePaymentCrossInequality
  infer_instance

def e1FiniteSharpFourBlockPasses
    (p3 p7 : E1FiniteRootPattern) : Bool :=
  e1FinitePatternList.all fun p11 =>
    e1FinitePatternList.all fun p13 =>
      e1FinitePatternList.all fun p17 =>
        e1FinitePatternList.all fun p19 =>
          e1FinitePatternList.all fun p23 =>
            decide (e1FiniteSharpFourPaymentCrossInequality
              p3 p7 p11 p13 p17 p19 p23)

def e1FiniteSharpThreeBlockPasses
    (p7 : E1FiniteRootPattern) : Bool :=
  e1FinitePatternList.all fun p11 =>
    e1FinitePatternList.all fun p13 =>
      e1FinitePatternList.all fun p17 =>
        e1FinitePatternList.all fun p19 =>
          e1FinitePatternList.all fun p23 =>
            decide (e1FiniteSharpThreePaymentCrossInequality
              p7 p11 p13 p17 p19 p23)

/-!
The public certificate ABI fixes the first three pattern coordinates.  This
keeps each kernel reduction to `5^4 = 625` rows and, unlike one monolithic
`decide`, stays comfortably below the proof build's 16GB memory budget.
-/

def e1FiniteSharpFourLeafPasses
    (p3 p7 p11 : E1FiniteRootPattern) : Bool :=
  e1FinitePatternList.all fun p13 =>
    e1FinitePatternList.all fun p17 =>
      e1FinitePatternList.all fun p19 =>
        e1FinitePatternList.all fun p23 =>
          decide (e1FiniteSharpFourPaymentCrossInequality
            p3 p7 p11 p13 p17 p19 p23)

def e1FiniteSharpThreeLeafPasses
    (p7 p11 : E1FiniteRootPattern) : Bool :=
  e1FinitePatternList.all fun p13 =>
    e1FinitePatternList.all fun p17 =>
      e1FinitePatternList.all fun p19 =>
        e1FinitePatternList.all fun p23 =>
          decide (e1FiniteSharpThreePaymentCrossInequality
            p7 p11 p13 p17 p19 p23)

theorem e1FiniteSharpFourBlockPasses_sound
    {p3 p7 : E1FiniteRootPattern}
    (hpass : e1FiniteSharpFourBlockPasses p3 p7 = true)
    (p11 p13 p17 p19 p23 : E1FiniteRootPattern) :
    e1FiniteSharpFourPaymentCrossInequality
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

theorem e1FiniteSharpThreeBlockPasses_sound
    {p7 : E1FiniteRootPattern}
    (hpass : e1FiniteSharpThreeBlockPasses p7 = true)
    (p11 p13 p17 p19 p23 : E1FiniteRootPattern) :
    e1FiniteSharpThreePaymentCrossInequality
      p7 p11 p13 p17 p19 p23 := by
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

theorem e1FiniteSharpFourLeafPasses_sound
    {p3 p7 p11 : E1FiniteRootPattern}
    (hpass : e1FiniteSharpFourLeafPasses p3 p7 p11 = true)
    (p13 p17 p19 p23 : E1FiniteRootPattern) :
    e1FiniteSharpFourPaymentCrossInequality
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

theorem e1FiniteSharpThreeLeafPasses_sound
    {p7 p11 : E1FiniteRootPattern}
    (hpass : e1FiniteSharpThreeLeafPasses p7 p11 = true)
    (p13 p17 p19 p23 : E1FiniteRootPattern) :
    e1FiniteSharpThreePaymentCrossInequality
      p7 p11 p13 p17 p19 p23 := by
  have h13 := (List.all_eq_true.mp hpass)
    p13 (mem_e1FinitePatternList p13)
  have h17 := (List.all_eq_true.mp h13)
    p17 (mem_e1FinitePatternList p17)
  have h19 := (List.all_eq_true.mp h17)
    p19 (mem_e1FinitePatternList p19)
  have h23 := (List.all_eq_true.mp h19)
    p23 (mem_e1FinitePatternList p23)
  exact of_decide_eq_true h23

#print axioms e1FiniteSharpFourBlockPasses_sound
#print axioms e1FiniteSharpThreeBlockPasses_sound
#print axioms e1FiniteSharpFourLeafPasses_sound
#print axioms e1FiniteSharpThreeLeafPasses_sound

end Erdos848
