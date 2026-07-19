import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0057 : List (List ℕ) :=
  [[19, 97],
     [19, 101],
     [19, 103],
     [19, 107],
     [19, 109],
     [19, 113],
     [19, 127],
     [19, 131],
     [19, 137],
     [19, 139],
     [19, 149],
     [19, 151],
     [19, 157],
     [19, 163],
     [19, 167],
     [19, 173]]

theorem k3FiveTwistGroup0057_passes :
    k3FiveTwistGroup0057.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0057_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
