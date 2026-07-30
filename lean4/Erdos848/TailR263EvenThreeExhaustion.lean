import Erdos848.TailR263EvenThree
import Erdos848.TailR263EvenTwoExhaustion

namespace Erdos848

/-!
# Exhausting the `E2` and `E3` rows at the unchanged R263 cut

The preceding `E2` allocation either produces a kernel terminal or charges at
most ten `E2` points.  In the latter case, nineteen `E3` points force the
kernel-closed cutoff-19 terminal.  Thus the only continuation has the literal
charges `|E2| ≤ 10` and `|E3| ≤ 18`; no Hall bound is assumed.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem fiveMillionR263EvenThree_exhaustion
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hOne : (fiveMillionValuationPart N B .evenOne).card <= 10) :
    Nonempty (FiveMillionR263KernelTerminal N B) ∨
      ((fiveMillionValuationPart N B .evenTwo).card <= 10 ∧
        (fiveMillionValuationPart N B .evenThree).card <= 18) := by
  rcases fiveMillionR263EvenTwo_exhaustion
      hLower hUpper hBout hBprop hOne with hterminal | hTwo
  · exact Or.inl hterminal
  · by_cases hThree :
        19 <= (fiveMillionValuationPart N B .evenThree).card
    · obtain ⟨cell, hCell⟩ :=
        fiveMillionR263EvenThree_exists_dense_cell hThree
      exact Or.inl ⟨.threshold
        (fiveMillionR263EvenThreeTerminal
          hLower hUpper hBout hBprop hOne hTwo cell hCell)⟩
    · exact Or.inr ⟨hTwo, by omega⟩

#print axioms fiveMillionR263EvenThree_exhaustion

end Erdos848
