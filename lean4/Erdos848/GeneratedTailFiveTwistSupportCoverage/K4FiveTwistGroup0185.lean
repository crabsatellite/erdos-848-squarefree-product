import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0185 : List (List ℕ) :=
  [[31, 41, 59],
     [31, 41, 61],
     [31, 41, 67],
     [31, 41, 71],
     [31, 41, 73],
     [31, 41, 79],
     [31, 41, 83],
     [31, 43, 47],
     [31, 43, 53],
     [31, 43, 59],
     [31, 43, 61],
     [31, 43, 67],
     [31, 43, 71],
     [31, 43, 73],
     [31, 43, 79],
     [31, 43, 83]]

theorem k4FiveTwistGroup0185_passes :
    k4FiveTwistGroup0185.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0185_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
