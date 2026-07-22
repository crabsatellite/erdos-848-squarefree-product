import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenTwo0
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenTwo1
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenTwo2
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenTwo3
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenTwo4
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenTwo5
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenTwo6
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenTwo7

namespace Erdos848.GeneratedTailTwentyMillionRootLowerCoverage

theorem lower_evenTwo_le
    (supportLength : Nat) (hLength : supportLength < 8) :
    Erdos848.twentyMillionRootSmoothProfile .evenTwo supportLength
        Erdos848.twentyMillionLower ≤
      (.evenTwo : Erdos848.TwentyMillionRootRow).envelope := by
  interval_cases supportLength
  · exact lower_evenTwo_0_le
  · exact lower_evenTwo_1_le
  · exact lower_evenTwo_2_le
  · exact lower_evenTwo_3_le
  · exact lower_evenTwo_4_le
  · exact lower_evenTwo_5_le
  · exact lower_evenTwo_6_le
  · exact lower_evenTwo_7_le

#print axioms lower_evenTwo_le

end Erdos848.GeneratedTailTwentyMillionRootLowerCoverage
