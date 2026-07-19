import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0078 : List (List ℕ) :=
  [[31, 163],
     [31, 167],
     [31, 173],
     [31, 179],
     [31, 181],
     [31, 191],
     [31, 193],
     [31, 197],
     [31, 199],
     [31, 211],
     [31, 223],
     [31, 227],
     [31, 229],
     [31, 233],
     [31, 239],
     [31, 241]]

theorem k3FiveTwistGroup0078_passes :
    k3FiveTwistGroup0078.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0078_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
