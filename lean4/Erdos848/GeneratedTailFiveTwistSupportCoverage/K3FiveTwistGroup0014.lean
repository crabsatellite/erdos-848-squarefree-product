import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0014 : List (List ℕ) :=
  [[3, 1439],
     [3, 1447],
     [3, 1451],
     [3, 1453],
     [3, 1459],
     [3, 1471],
     [3, 1481],
     [3, 1483],
     [3, 1487],
     [3, 1489],
     [3, 1493],
     [3, 1499],
     [3, 1511],
     [3, 1523],
     [3, 1531],
     [3, 1543]]

theorem k3FiveTwistGroup0014_passes :
    k3FiveTwistGroup0014.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0014_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
