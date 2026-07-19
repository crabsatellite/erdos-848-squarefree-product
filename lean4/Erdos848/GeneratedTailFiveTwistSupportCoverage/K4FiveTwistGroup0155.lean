import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0155 : List (List ℕ) :=
  [[17, 29, 53],
     [17, 29, 59],
     [17, 29, 61],
     [17, 29, 67],
     [17, 29, 71],
     [17, 29, 73],
     [17, 29, 79],
     [17, 29, 83],
     [17, 29, 89],
     [17, 29, 97],
     [17, 29, 101],
     [17, 29, 103],
     [17, 29, 107],
     [17, 29, 109],
     [17, 29, 113],
     [17, 29, 127]]

theorem k4FiveTwistGroup0155_passes :
    k4FiveTwistGroup0155.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0155_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
