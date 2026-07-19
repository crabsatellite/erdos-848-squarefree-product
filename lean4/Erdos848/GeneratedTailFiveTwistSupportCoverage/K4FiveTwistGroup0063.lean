import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0063 : List (List ℕ) :=
  [[3, 79, 149],
     [3, 79, 151],
     [3, 79, 157],
     [3, 79, 163],
     [3, 79, 167],
     [3, 79, 173],
     [3, 79, 179],
     [3, 79, 181],
     [3, 79, 191],
     [3, 79, 193],
     [3, 79, 197],
     [3, 79, 199],
     [3, 83, 89],
     [3, 83, 97],
     [3, 83, 101],
     [3, 83, 103]]

theorem k4FiveTwistGroup0063_passes :
    k4FiveTwistGroup0063.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0063_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
