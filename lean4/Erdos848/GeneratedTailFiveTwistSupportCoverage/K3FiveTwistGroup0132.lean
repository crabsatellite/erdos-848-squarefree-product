import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0132 : List (List ℕ) :=
  [[89, 311],
     [89, 313],
     [89, 317],
     [89, 331],
     [97, 101],
     [97, 103],
     [97, 107],
     [97, 109],
     [97, 113],
     [97, 127],
     [97, 131],
     [97, 137],
     [97, 139],
     [97, 149],
     [97, 151],
     [97, 157]]

theorem k3FiveTwistGroup0132_passes :
    k3FiveTwistGroup0132.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0132_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
