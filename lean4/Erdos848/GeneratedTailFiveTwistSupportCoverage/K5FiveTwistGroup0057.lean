import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0057 : List (List ℕ) :=
  [[3, 13, 17, 73],
     [3, 13, 17, 79],
     [3, 13, 17, 83],
     [3, 13, 17, 89],
     [3, 13, 17, 97],
     [3, 13, 17, 101],
     [3, 13, 17, 103],
     [3, 13, 17, 107]]

theorem k5FiveTwistGroup0057_passes :
    k5FiveTwistGroup0057.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0057_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
