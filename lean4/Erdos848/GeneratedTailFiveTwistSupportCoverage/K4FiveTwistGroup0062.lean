import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0062 : List (List ℕ) :=
  [[3, 73, 191],
     [3, 73, 193],
     [3, 73, 197],
     [3, 73, 199],
     [3, 79, 83],
     [3, 79, 89],
     [3, 79, 97],
     [3, 79, 101],
     [3, 79, 103],
     [3, 79, 107],
     [3, 79, 109],
     [3, 79, 113],
     [3, 79, 127],
     [3, 79, 131],
     [3, 79, 137],
     [3, 79, 139]]

theorem k4FiveTwistGroup0062_passes :
    k4FiveTwistGroup0062.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0062_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
