import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0171 : List (List ℕ) :=
  [[19, 47, 67],
     [19, 47, 71],
     [19, 47, 73],
     [19, 47, 79],
     [19, 47, 83],
     [19, 47, 89],
     [19, 47, 97],
     [19, 47, 101],
     [19, 47, 103],
     [19, 53, 59],
     [19, 53, 61],
     [19, 53, 67],
     [19, 53, 71],
     [19, 53, 73],
     [19, 53, 79],
     [19, 53, 83]]

theorem k4FiveTwistGroup0171_passes :
    k4FiveTwistGroup0171.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0171_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
