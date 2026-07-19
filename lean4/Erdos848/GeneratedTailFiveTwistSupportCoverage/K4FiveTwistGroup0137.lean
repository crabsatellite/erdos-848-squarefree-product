import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0137 : List (List ℕ) :=
  [[13, 19, 157],
     [13, 19, 163],
     [13, 19, 167],
     [13, 19, 173],
     [13, 19, 179],
     [13, 19, 181],
     [13, 19, 191],
     [13, 19, 193],
     [13, 19, 197],
     [13, 23, 29],
     [13, 23, 31],
     [13, 23, 37],
     [13, 23, 41],
     [13, 23, 43],
     [13, 23, 47],
     [13, 23, 53]]

theorem k4FiveTwistGroup0137_passes :
    k4FiveTwistGroup0137.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0137_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
