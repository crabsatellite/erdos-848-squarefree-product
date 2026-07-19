import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0072 : List (List ℕ) :=
  [[29, 157],
     [29, 163],
     [29, 167],
     [29, 173],
     [29, 179],
     [29, 181],
     [29, 191],
     [29, 193],
     [29, 197],
     [29, 199],
     [29, 211],
     [29, 223],
     [29, 227],
     [29, 229],
     [29, 233],
     [29, 239]]

theorem k3FiveTwistGroup0072_passes :
    k3FiveTwistGroup0072.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0072_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
