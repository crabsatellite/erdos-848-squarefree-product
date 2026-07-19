import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0142 : List (List ℕ) :=
  [[13, 31, 89],
     [13, 31, 97],
     [13, 31, 101],
     [13, 31, 103],
     [13, 31, 107],
     [13, 31, 109],
     [13, 31, 113],
     [13, 31, 127],
     [13, 31, 131],
     [13, 31, 137],
     [13, 31, 139],
     [13, 31, 149],
     [13, 31, 151],
     [13, 37, 41],
     [13, 37, 43],
     [13, 37, 47]]

theorem k4FiveTwistGroup0142_passes :
    k4FiveTwistGroup0142.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0142_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
