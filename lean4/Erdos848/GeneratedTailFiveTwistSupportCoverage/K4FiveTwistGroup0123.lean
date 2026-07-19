import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0123 : List (List ℕ) :=
  [[11, 37, 47],
     [11, 37, 53],
     [11, 37, 59],
     [11, 37, 61],
     [11, 37, 67],
     [11, 37, 71],
     [11, 37, 73],
     [11, 37, 79],
     [11, 37, 83],
     [11, 37, 89],
     [11, 37, 97],
     [11, 37, 101],
     [11, 37, 103],
     [11, 37, 107],
     [11, 37, 109],
     [11, 37, 113]]

theorem k4FiveTwistGroup0123_passes :
    k4FiveTwistGroup0123.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0123_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
