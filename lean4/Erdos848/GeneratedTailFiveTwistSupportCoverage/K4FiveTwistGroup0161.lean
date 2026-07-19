import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0161 : List (List ℕ) :=
  [[17, 47, 89],
     [17, 47, 97],
     [17, 47, 101],
     [17, 47, 103],
     [17, 47, 107],
     [17, 47, 109],
     [17, 53, 59],
     [17, 53, 61],
     [17, 53, 67],
     [17, 53, 71],
     [17, 53, 73],
     [17, 53, 79],
     [17, 53, 83],
     [17, 53, 89],
     [17, 53, 97],
     [17, 53, 101]]

theorem k4FiveTwistGroup0161_passes :
    k4FiveTwistGroup0161.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0161_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
