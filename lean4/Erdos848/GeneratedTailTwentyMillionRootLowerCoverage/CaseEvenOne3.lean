import Erdos848.TailTwentyMillionRootLowerChecker
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.LowerEndpoint76

namespace Erdos848.GeneratedTailTwentyMillionRootLowerCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem lower_evenOne_3_le_passes :
    decide (Erdos848.twentyMillionRootSmoothProfileLowerAt
      .evenOne 3 263157 23078 ≤
        (.evenOne : Erdos848.TwentyMillionRootRow).envelope) = true := by
  with_unfolding_all decide

theorem lower_evenOne_3_le :
    Erdos848.twentyMillionRootSmoothProfile .evenOne 3
        Erdos848.twentyMillionLower ≤
      (.evenOne : Erdos848.TwentyMillionRootRow).envelope := by
  rw [Erdos848.twentyMillionRootSmoothProfile_lower_eq_at
    (row := .evenOne) (supportLength := 3)
    (p := 263157) (primeCount := 23078)
    (hp := by norm_num [Erdos848.twentyMillionLower,
      Erdos848.TwentyMillionRootRow.split])
    (hcount := Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.primeCounting_263157)]
  exact of_decide_eq_true lower_evenOne_3_le_passes

#print axioms lower_evenOne_3_le

end Erdos848.GeneratedTailTwentyMillionRootLowerCoverage
