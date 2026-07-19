import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0067 : List (List ℕ) :=
  [[3, 97, 157],
     [3, 97, 163],
     [3, 97, 167],
     [3, 97, 173],
     [3, 97, 179],
     [3, 101, 103],
     [3, 101, 107],
     [3, 101, 109],
     [3, 101, 113],
     [3, 101, 127],
     [3, 101, 131],
     [3, 101, 137],
     [3, 101, 139],
     [3, 101, 149],
     [3, 101, 151],
     [3, 101, 157]]

theorem k4FiveTwistGroup0067_passes :
    k4FiveTwistGroup0067.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0067_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
