import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0163 : List (List ℕ) :=
  [[17, 67, 73],
     [17, 67, 79],
     [17, 67, 83],
     [17, 67, 89],
     [17, 71, 73],
     [17, 71, 79],
     [17, 71, 83],
     [17, 73, 79],
     [17, 73, 83],
     [17, 79, 83],
     [19, 23, 29],
     [19, 23, 31],
     [19, 23, 37],
     [19, 23, 41],
     [19, 23, 43],
     [19, 23, 47]]

theorem k4FiveTwistGroup0163_passes :
    k4FiveTwistGroup0163.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0163_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
