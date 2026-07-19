import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0015 : List (List ℕ) :=
  [[3, 13, 131],
     [3, 13, 137],
     [3, 13, 139],
     [3, 13, 149],
     [3, 13, 151],
     [3, 13, 157],
     [3, 13, 163],
     [3, 13, 167],
     [3, 13, 173],
     [3, 13, 179],
     [3, 13, 181],
     [3, 13, 191],
     [3, 13, 193],
     [3, 13, 197],
     [3, 13, 199],
     [3, 13, 211]]

theorem k4FiveTwistGroup0015_passes :
    k4FiveTwistGroup0015.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0015_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
