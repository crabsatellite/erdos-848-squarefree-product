import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0138 : List (List ℕ) :=
  [[103, 181],
     [103, 191],
     [103, 193],
     [103, 197],
     [103, 199],
     [103, 211],
     [103, 223],
     [103, 227],
     [103, 229],
     [103, 233],
     [103, 239],
     [103, 241],
     [103, 251],
     [103, 257],
     [103, 263],
     [103, 269]]

theorem k3FiveTwistGroup0138_passes :
    k3FiveTwistGroup0138.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0138_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
