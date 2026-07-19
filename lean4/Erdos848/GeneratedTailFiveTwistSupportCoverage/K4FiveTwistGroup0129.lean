import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0129 : List (List ℕ) :=
  [[11, 59, 61],
     [11, 59, 67],
     [11, 59, 71],
     [11, 59, 73],
     [11, 59, 79],
     [11, 59, 83],
     [11, 59, 89],
     [11, 59, 97],
     [11, 59, 101],
     [11, 59, 103],
     [11, 59, 107],
     [11, 59, 109],
     [11, 59, 113],
     [11, 61, 67],
     [11, 61, 71],
     [11, 61, 73]]

theorem k4FiveTwistGroup0129_passes :
    k4FiveTwistGroup0129.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0129_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
