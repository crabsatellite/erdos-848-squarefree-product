import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0119 : List (List ℕ) :=
  [[11, 23, 181],
     [11, 23, 191],
     [11, 23, 193],
     [11, 23, 197],
     [11, 29, 31],
     [11, 29, 37],
     [11, 29, 41],
     [11, 29, 43],
     [11, 29, 47],
     [11, 29, 53],
     [11, 29, 59],
     [11, 29, 61],
     [11, 29, 67],
     [11, 29, 71],
     [11, 29, 73],
     [11, 29, 79]]

theorem k4FiveTwistGroup0119_passes :
    k4FiveTwistGroup0119.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0119_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
