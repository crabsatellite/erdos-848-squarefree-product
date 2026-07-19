import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0052 : List (List ℕ) :=
  [[3, 53, 149],
     [3, 53, 151],
     [3, 53, 157],
     [3, 53, 163],
     [3, 53, 167],
     [3, 53, 173],
     [3, 53, 179],
     [3, 53, 181],
     [3, 53, 191],
     [3, 53, 193],
     [3, 53, 197],
     [3, 53, 199],
     [3, 53, 211],
     [3, 53, 223],
     [3, 53, 227],
     [3, 53, 229]]

theorem k4FiveTwistGroup0052_passes :
    k4FiveTwistGroup0052.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0052_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
