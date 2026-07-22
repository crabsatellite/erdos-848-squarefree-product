import Erdos848.TailTwentyMillionRootLowerChecker
import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.LowerEndpoint70

namespace Erdos848.GeneratedTailTwentyMillionRootLowerCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem lower_evenThree_7_le_passes :
    decide (Erdos848.twentyMillionRootSmoothProfileLowerAt
      .evenThree 7 285714 24900 ≤
        (.evenThree : Erdos848.TwentyMillionRootRow).envelope) = true := by
  with_unfolding_all decide

theorem lower_evenThree_7_le :
    Erdos848.twentyMillionRootSmoothProfile .evenThree 7
        Erdos848.twentyMillionLower ≤
      (.evenThree : Erdos848.TwentyMillionRootRow).envelope := by
  rw [Erdos848.twentyMillionRootSmoothProfile_lower_eq_at
    (row := .evenThree) (supportLength := 7)
    (p := 285714) (primeCount := 24900)
    (hp := by norm_num [Erdos848.twentyMillionLower,
      Erdos848.TwentyMillionRootRow.split])
    (hcount := Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.primeCounting_285714)]
  exact of_decide_eq_true lower_evenThree_7_le_passes

#print axioms lower_evenThree_7_le

end Erdos848.GeneratedTailTwentyMillionRootLowerCoverage
