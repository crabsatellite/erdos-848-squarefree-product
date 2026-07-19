import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0107 : List (List ℕ) :=
  [[7, 79, 109],
     [7, 79, 113],
     [7, 79, 127],
     [7, 79, 131],
     [7, 83, 89],
     [7, 83, 97],
     [7, 83, 101],
     [7, 83, 103],
     [7, 83, 107],
     [7, 83, 109],
     [7, 83, 113],
     [7, 83, 127],
     [7, 89, 97],
     [7, 89, 101],
     [7, 89, 103],
     [7, 89, 107]]

theorem k4FiveTwistGroup0107_passes :
    k4FiveTwistGroup0107.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0107_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
