import Erdos848.TailFiveMillionReciprocal

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem globalMixedModFiveCosetHundredBlock_card
    (squareCoset : Bool) (j : ℕ) (hj : j < 29) :
    (modFiveCosetBlock squareCoset (201 + 100 * j) 100).card = 40 := by
  by_cases hfold : j < 22
  · have hold := modFiveCosetHundredBlock_card squareCoset (j + 1) (by omega)
    have hstart : 201 + 100 * j = 101 + 100 * (j + 1) := by omega
    rw [hstart]
    exact hold
  · cases squareCoset <;> interval_cases j <;> decide

theorem globalMixedModFiveCoset_finalTwentyFive_card
    (squareCoset : Bool) :
    (modFiveCosetBlock squareCoset 3001 25).card = 10 := by
  cases squareCoset <;> decide

#print axioms globalMixedModFiveCosetHundredBlock_card

end Erdos848
