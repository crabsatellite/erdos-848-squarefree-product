import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0057 : List (List ℕ) :=
  [[3, 61, 199],
     [3, 61, 211],
     [3, 61, 223],
     [3, 61, 227],
     [3, 61, 229],
     [3, 67, 71],
     [3, 67, 73],
     [3, 67, 79],
     [3, 67, 83],
     [3, 67, 89],
     [3, 67, 97],
     [3, 67, 101],
     [3, 67, 103],
     [3, 67, 107],
     [3, 67, 109],
     [3, 67, 113]]

theorem k4FiveTwistGroup0057_passes :
    k4FiveTwistGroup0057.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0057_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
