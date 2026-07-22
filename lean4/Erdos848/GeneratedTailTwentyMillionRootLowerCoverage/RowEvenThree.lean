import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenThree0
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenThree1
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenThree2
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenThree3
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenThree4
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenThree5
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenThree6
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenThree7

namespace Erdos848.GeneratedTailTwentyMillionRootLowerCoverage

theorem lower_evenThree_le
    (supportLength : Nat) (hLength : supportLength < 8) :
    Erdos848.twentyMillionRootSmoothProfile .evenThree supportLength
        Erdos848.twentyMillionLower ≤
      (.evenThree : Erdos848.TwentyMillionRootRow).envelope := by
  interval_cases supportLength
  · exact lower_evenThree_0_le
  · exact lower_evenThree_1_le
  · exact lower_evenThree_2_le
  · exact lower_evenThree_3_le
  · exact lower_evenThree_4_le
  · exact lower_evenThree_5_le
  · exact lower_evenThree_6_le
  · exact lower_evenThree_7_le

#print axioms lower_evenThree_le

end Erdos848.GeneratedTailTwentyMillionRootLowerCoverage
