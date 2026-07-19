import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0084 : List (List ℕ) :=
  [[37, 191],
     [37, 193],
     [37, 197],
     [37, 199],
     [37, 211],
     [37, 223],
     [37, 227],
     [37, 229],
     [37, 233],
     [37, 239],
     [37, 241],
     [37, 251],
     [37, 257],
     [37, 263],
     [37, 269],
     [37, 271]]

theorem k3FiveTwistGroup0084_passes :
    k3FiveTwistGroup0084.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0084_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
