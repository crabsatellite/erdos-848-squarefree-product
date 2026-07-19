import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0030 : List (List ℕ) :=
  [[3, 23, 149],
     [3, 23, 151],
     [3, 23, 157],
     [3, 23, 163],
     [3, 23, 167],
     [3, 23, 173],
     [3, 23, 179],
     [3, 23, 181],
     [3, 23, 191],
     [3, 23, 193],
     [3, 23, 197],
     [3, 23, 199],
     [3, 23, 211],
     [3, 23, 223],
     [3, 23, 227],
     [3, 23, 229]]

theorem k4FiveTwistGroup0030_passes :
    k4FiveTwistGroup0030.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0030_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
