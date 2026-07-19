import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0108 : List (List ℕ) :=
  [[7, 89, 109],
     [7, 89, 113],
     [7, 97, 101],
     [7, 97, 103],
     [7, 97, 107],
     [7, 97, 109],
     [7, 97, 113],
     [7, 101, 103],
     [7, 101, 107],
     [7, 101, 109],
     [7, 103, 107],
     [7, 103, 109],
     [7, 107, 109],
     [11, 13, 17],
     [11, 13, 19],
     [11, 13, 23]]

theorem k4FiveTwistGroup0108_passes :
    k4FiveTwistGroup0108.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0108_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
