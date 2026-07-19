import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0134 : List (List ℕ) :=
  [[13, 17, 103],
     [13, 17, 107],
     [13, 17, 109],
     [13, 17, 113],
     [13, 17, 127],
     [13, 17, 131],
     [13, 17, 137],
     [13, 17, 139],
     [13, 17, 149],
     [13, 17, 151],
     [13, 17, 157],
     [13, 17, 163],
     [13, 17, 167],
     [13, 17, 173],
     [13, 17, 179],
     [13, 17, 181]]

theorem k4FiveTwistGroup0134_passes :
    k4FiveTwistGroup0134.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0134_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
