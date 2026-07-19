import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0056 : List (List ℕ) :=
  [[19, 23],
     [19, 29],
     [19, 31],
     [19, 37],
     [19, 41],
     [19, 43],
     [19, 47],
     [19, 53],
     [19, 59],
     [19, 61],
     [19, 67],
     [19, 71],
     [19, 73],
     [19, 79],
     [19, 83],
     [19, 89]]

theorem k3FiveTwistGroup0056_passes :
    k3FiveTwistGroup0056.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0056_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
