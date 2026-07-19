import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0053 : List (List ℕ) :=
  [[3, 53, 233],
     [3, 53, 239],
     [3, 53, 241],
     [3, 59, 61],
     [3, 59, 67],
     [3, 59, 71],
     [3, 59, 73],
     [3, 59, 79],
     [3, 59, 83],
     [3, 59, 89],
     [3, 59, 97],
     [3, 59, 101],
     [3, 59, 103],
     [3, 59, 107],
     [3, 59, 109],
     [3, 59, 113]]

theorem k4FiveTwistGroup0053_passes :
    k4FiveTwistGroup0053.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0053_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
