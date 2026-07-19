import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0157 : List (List ℕ) :=
  [[17, 31, 101],
     [17, 31, 103],
     [17, 31, 107],
     [17, 31, 109],
     [17, 31, 113],
     [17, 31, 127],
     [17, 31, 131],
     [17, 37, 41],
     [17, 37, 43],
     [17, 37, 47],
     [17, 37, 53],
     [17, 37, 59],
     [17, 37, 61],
     [17, 37, 67],
     [17, 37, 71],
     [17, 37, 73]]

theorem k4FiveTwistGroup0157_passes :
    k4FiveTwistGroup0157.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0157_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
