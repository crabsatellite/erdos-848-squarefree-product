import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0088 : List (List ℕ) :=
  [[7, 23, 157],
     [7, 23, 163],
     [7, 23, 167],
     [7, 23, 173],
     [7, 23, 179],
     [7, 23, 181],
     [7, 23, 191],
     [7, 23, 193],
     [7, 23, 197],
     [7, 23, 199],
     [7, 23, 211],
     [7, 23, 223],
     [7, 23, 227],
     [7, 23, 229],
     [7, 23, 233],
     [7, 23, 239]]

theorem k4FiveTwistGroup0088_passes :
    k4FiveTwistGroup0088.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0088_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
