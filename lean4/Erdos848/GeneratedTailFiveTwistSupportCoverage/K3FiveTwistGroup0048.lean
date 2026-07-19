import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0048 : List (List ℕ) :=
  [[17, 19],
     [17, 23],
     [17, 29],
     [17, 31],
     [17, 37],
     [17, 41],
     [17, 43],
     [17, 47],
     [17, 53],
     [17, 59],
     [17, 61],
     [17, 67],
     [17, 71],
     [17, 73],
     [17, 79],
     [17, 83]]

theorem k3FiveTwistGroup0048_passes :
    k3FiveTwistGroup0048.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0048_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
