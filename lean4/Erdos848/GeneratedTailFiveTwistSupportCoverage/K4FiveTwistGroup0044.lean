import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0044 : List (List ℕ) :=
  [[3, 41, 151],
     [3, 41, 157],
     [3, 41, 163],
     [3, 41, 167],
     [3, 41, 173],
     [3, 41, 179],
     [3, 41, 181],
     [3, 41, 191],
     [3, 41, 193],
     [3, 41, 197],
     [3, 41, 199],
     [3, 41, 211],
     [3, 41, 223],
     [3, 41, 227],
     [3, 41, 229],
     [3, 41, 233]]

theorem k4FiveTwistGroup0044_passes :
    k4FiveTwistGroup0044.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0044_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
