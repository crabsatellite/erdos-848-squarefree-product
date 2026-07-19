import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0077 : List (List ℕ) :=
  [[31, 79],
     [31, 83],
     [31, 89],
     [31, 97],
     [31, 101],
     [31, 103],
     [31, 107],
     [31, 109],
     [31, 113],
     [31, 127],
     [31, 131],
     [31, 137],
     [31, 139],
     [31, 149],
     [31, 151],
     [31, 157]]

theorem k3FiveTwistGroup0077_passes :
    k3FiveTwistGroup0077.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0077_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
