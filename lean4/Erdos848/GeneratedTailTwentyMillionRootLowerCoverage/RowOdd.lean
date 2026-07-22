import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseOdd0
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseOdd1
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseOdd2
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseOdd3
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseOdd4
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseOdd5
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseOdd6
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.CaseOdd7

namespace Erdos848.GeneratedTailTwentyMillionRootLowerCoverage

theorem lower_odd_le
    (supportLength : Nat) (hLength : supportLength < 8) :
    Erdos848.twentyMillionRootSmoothProfile .odd supportLength
        Erdos848.twentyMillionLower ≤
      (.odd : Erdos848.TwentyMillionRootRow).envelope := by
  interval_cases supportLength
  · exact lower_odd_0_le
  · exact lower_odd_1_le
  · exact lower_odd_2_le
  · exact lower_odd_3_le
  · exact lower_odd_4_le
  · exact lower_odd_5_le
  · exact lower_odd_6_le
  · exact lower_odd_7_le

#print axioms lower_odd_le

end Erdos848.GeneratedTailTwentyMillionRootLowerCoverage
