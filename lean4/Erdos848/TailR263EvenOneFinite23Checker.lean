import Erdos848.TailR263EvenOneFinite23Pattern

namespace Erdos848

/-! Boolean reflection layer for the finite cutoff-23 arithmetic blocks. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def e1FinitePatternList : List E1FiniteRootPattern :=
  [.allEqual, .firstSecond, .firstThird, .secondThird, .allDistinct]

@[simp] theorem mem_e1FinitePatternList
    (pattern : E1FiniteRootPattern) :
    pattern ∈ e1FinitePatternList := by
  cases pattern <;> simp [e1FinitePatternList]

def e1FiniteFourBlockPasses
    (p3 p7 : E1FiniteRootPattern) : Bool :=
  e1FinitePatternList.all fun p11 =>
    e1FinitePatternList.all fun p13 =>
      e1FinitePatternList.all fun p17 =>
        e1FinitePatternList.all fun p19 =>
          e1FinitePatternList.all fun p23 =>
            decide (e1FiniteFourPaymentCrossInequality
              p3 p7 p11 p13 p17 p19 p23)

def e1FiniteThreeBlockPasses
    (p7 : E1FiniteRootPattern) : Bool :=
  e1FinitePatternList.all fun p11 =>
    e1FinitePatternList.all fun p13 =>
      e1FinitePatternList.all fun p17 =>
        e1FinitePatternList.all fun p19 =>
          e1FinitePatternList.all fun p23 =>
            decide (e1FiniteThreePaymentCrossInequality
              p7 p11 p13 p17 p19 p23)

theorem e1FiniteFourBlockPasses_sound
    {p3 p7 : E1FiniteRootPattern}
    (hpass : e1FiniteFourBlockPasses p3 p7 = true)
    (p11 p13 p17 p19 p23 : E1FiniteRootPattern) :
    e1FiniteFourPaymentCrossInequality
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

theorem e1FiniteThreeBlockPasses_sound
    {p7 : E1FiniteRootPattern}
    (hpass : e1FiniteThreeBlockPasses p7 = true)
    (p11 p13 p17 p19 p23 : E1FiniteRootPattern) :
    e1FiniteThreePaymentCrossInequality
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

#print axioms e1FiniteFourBlockPasses_sound
#print axioms e1FiniteThreeBlockPasses_sound

end Erdos848
