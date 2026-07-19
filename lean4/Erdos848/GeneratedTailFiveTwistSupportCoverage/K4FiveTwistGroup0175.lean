import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0175 : List (List ℕ) :=
  [[23, 31, 61],
     [23, 31, 67],
     [23, 31, 71],
     [23, 31, 73],
     [23, 31, 79],
     [23, 31, 83],
     [23, 31, 89],
     [23, 31, 97],
     [23, 31, 101],
     [23, 31, 103],
     [23, 31, 107],
     [23, 31, 109],
     [23, 37, 41],
     [23, 37, 43],
     [23, 37, 47],
     [23, 37, 53]]

theorem k4FiveTwistGroup0175_passes :
    k4FiveTwistGroup0175.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0175_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
