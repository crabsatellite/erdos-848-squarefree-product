import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0020 : List (List ℕ) :=
  [[3, 17, 83],
     [3, 17, 89],
     [3, 17, 97],
     [3, 17, 101],
     [3, 17, 103],
     [3, 17, 107],
     [3, 17, 109],
     [3, 17, 113],
     [3, 17, 127],
     [3, 17, 131],
     [3, 17, 137],
     [3, 17, 139],
     [3, 17, 149],
     [3, 17, 151],
     [3, 17, 157],
     [3, 17, 163]]

theorem k4FiveTwistGroup0020_passes :
    k4FiveTwistGroup0020.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0020_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
