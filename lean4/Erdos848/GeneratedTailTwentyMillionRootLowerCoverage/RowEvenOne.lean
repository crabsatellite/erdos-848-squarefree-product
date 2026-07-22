import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenOne0
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenOne1
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenOne2
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenOne3
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenOne4
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenOne5
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenOne6
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseEvenOne7

namespace Erdos848.GeneratedTailTwentyMillionRootLowerCoverage

theorem lower_evenOne_le
    (supportLength : Nat) (hLength : supportLength < 8) :
    Erdos848.twentyMillionRootSmoothProfile .evenOne supportLength
        Erdos848.twentyMillionLower ≤
      (.evenOne : Erdos848.TwentyMillionRootRow).envelope := by
  interval_cases supportLength
  · exact lower_evenOne_0_le
  · exact lower_evenOne_1_le
  · exact lower_evenOne_2_le
  · exact lower_evenOne_3_le
  · exact lower_evenOne_4_le
  · exact lower_evenOne_5_le
  · exact lower_evenOne_6_le
  · exact lower_evenOne_7_le

#print axioms lower_evenOne_le

end Erdos848.GeneratedTailTwentyMillionRootLowerCoverage
