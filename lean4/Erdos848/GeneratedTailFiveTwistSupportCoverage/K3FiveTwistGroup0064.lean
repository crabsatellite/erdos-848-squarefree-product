import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0064 : List (List ℕ) :=
  [[23, 61],
     [23, 67],
     [23, 71],
     [23, 73],
     [23, 79],
     [23, 83],
     [23, 89],
     [23, 97],
     [23, 101],
     [23, 103],
     [23, 107],
     [23, 109],
     [23, 113],
     [23, 127],
     [23, 131],
     [23, 137]]

theorem k3FiveTwistGroup0064_passes :
    k3FiveTwistGroup0064.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0064_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
