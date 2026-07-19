import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0147 : List (List ℕ) :=
  [[13, 47, 97],
     [13, 47, 101],
     [13, 47, 103],
     [13, 47, 107],
     [13, 47, 109],
     [13, 47, 113],
     [13, 53, 59],
     [13, 53, 61],
     [13, 53, 67],
     [13, 53, 71],
     [13, 53, 73],
     [13, 53, 79],
     [13, 53, 83],
     [13, 53, 89],
     [13, 53, 97],
     [13, 53, 101]]

theorem k4FiveTwistGroup0147_passes :
    k4FiveTwistGroup0147.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0147_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
