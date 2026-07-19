import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0159 : List (List ℕ) :=
  [[17, 41, 73],
     [17, 41, 79],
     [17, 41, 83],
     [17, 41, 89],
     [17, 41, 97],
     [17, 41, 101],
     [17, 41, 103],
     [17, 41, 107],
     [17, 41, 109],
     [17, 43, 47],
     [17, 43, 53],
     [17, 43, 59],
     [17, 43, 61],
     [17, 43, 67],
     [17, 43, 71],
     [17, 43, 73]]

theorem k4FiveTwistGroup0159_passes :
    k4FiveTwistGroup0159.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0159_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
