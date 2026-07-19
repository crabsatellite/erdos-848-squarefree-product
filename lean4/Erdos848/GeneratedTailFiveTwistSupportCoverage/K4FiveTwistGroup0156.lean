import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0156 : List (List ℕ) :=
  [[17, 29, 131],
     [17, 29, 137],
     [17, 31, 37],
     [17, 31, 41],
     [17, 31, 43],
     [17, 31, 47],
     [17, 31, 53],
     [17, 31, 59],
     [17, 31, 61],
     [17, 31, 67],
     [17, 31, 71],
     [17, 31, 73],
     [17, 31, 79],
     [17, 31, 83],
     [17, 31, 89],
     [17, 31, 97]]

theorem k4FiveTwistGroup0156_passes :
    k4FiveTwistGroup0156.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0156_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
