import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0173 : List (List ℕ) :=
  [[19, 67, 79],
     [19, 67, 83],
     [19, 71, 73],
     [19, 71, 79],
     [19, 71, 83],
     [19, 73, 79],
     [23, 29, 31],
     [23, 29, 37],
     [23, 29, 41],
     [23, 29, 43],
     [23, 29, 47],
     [23, 29, 53],
     [23, 29, 59],
     [23, 29, 61],
     [23, 29, 67],
     [23, 29, 71]]

theorem k4FiveTwistGroup0173_passes :
    k4FiveTwistGroup0173.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0173_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
