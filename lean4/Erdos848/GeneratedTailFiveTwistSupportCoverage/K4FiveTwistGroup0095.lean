import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0095 : List (List ℕ) :=
  [[7, 37, 151],
     [7, 37, 157],
     [7, 37, 163],
     [7, 37, 167],
     [7, 37, 173],
     [7, 37, 179],
     [7, 37, 181],
     [7, 37, 191],
     [7, 37, 193],
     [7, 41, 43],
     [7, 41, 47],
     [7, 41, 53],
     [7, 41, 59],
     [7, 41, 61],
     [7, 41, 67],
     [7, 41, 71]]

theorem k4FiveTwistGroup0095_passes :
    k4FiveTwistGroup0095.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0095_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
