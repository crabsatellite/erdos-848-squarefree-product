import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0050 : List (List ℕ) :=
  [[3, 47, 191],
     [3, 47, 193],
     [3, 47, 197],
     [3, 47, 199],
     [3, 47, 211],
     [3, 47, 223],
     [3, 47, 227],
     [3, 47, 229],
     [3, 47, 233],
     [3, 47, 239],
     [3, 47, 241],
     [3, 47, 251],
     [3, 47, 257],
     [3, 47, 263],
     [3, 53, 59],
     [3, 53, 61]]

theorem k4FiveTwistGroup0050_passes :
    k4FiveTwistGroup0050.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0050_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
