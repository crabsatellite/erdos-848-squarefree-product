import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0026 : List (List ℕ) :=
  [[3, 7, 37, 79],
     [3, 7, 37, 83],
     [3, 7, 37, 89],
     [3, 7, 37, 97],
     [3, 7, 37, 101],
     [3, 7, 37, 103],
     [3, 7, 37, 107],
     [3, 7, 37, 109]]

theorem k5FiveTwistGroup0026_passes :
    k5FiveTwistGroup0026.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0026_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
