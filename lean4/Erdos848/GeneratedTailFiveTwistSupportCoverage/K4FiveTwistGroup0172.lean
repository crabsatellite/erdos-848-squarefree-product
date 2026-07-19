import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0172 : List (List ℕ) :=
  [[19, 53, 89],
     [19, 53, 97],
     [19, 59, 61],
     [19, 59, 67],
     [19, 59, 71],
     [19, 59, 73],
     [19, 59, 79],
     [19, 59, 83],
     [19, 59, 89],
     [19, 61, 67],
     [19, 61, 71],
     [19, 61, 73],
     [19, 61, 79],
     [19, 61, 83],
     [19, 67, 71],
     [19, 67, 73]]

theorem k4FiveTwistGroup0172_passes :
    k4FiveTwistGroup0172.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0172_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
