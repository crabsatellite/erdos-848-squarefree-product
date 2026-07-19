import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0187 : List (List ℕ) :=
  [[31, 61, 71],
     [37, 41, 43],
     [37, 41, 47],
     [37, 41, 53],
     [37, 41, 59],
     [37, 41, 61],
     [37, 41, 67],
     [37, 41, 71],
     [37, 41, 73],
     [37, 41, 79],
     [37, 43, 47],
     [37, 43, 53],
     [37, 43, 59],
     [37, 43, 61],
     [37, 43, 67],
     [37, 43, 71]]

theorem k4FiveTwistGroup0187_passes :
    k4FiveTwistGroup0187.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0187_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
