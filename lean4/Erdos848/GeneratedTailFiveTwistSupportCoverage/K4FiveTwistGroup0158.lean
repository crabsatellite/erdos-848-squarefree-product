import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0158 : List (List ℕ) :=
  [[17, 37, 79],
     [17, 37, 83],
     [17, 37, 89],
     [17, 37, 97],
     [17, 37, 101],
     [17, 37, 103],
     [17, 37, 107],
     [17, 37, 109],
     [17, 37, 113],
     [17, 41, 43],
     [17, 41, 47],
     [17, 41, 53],
     [17, 41, 59],
     [17, 41, 61],
     [17, 41, 67],
     [17, 41, 71]]

theorem k4FiveTwistGroup0158_passes :
    k4FiveTwistGroup0158.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0158_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
