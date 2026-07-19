import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0148 : List (List ℕ) :=
  [[131, 197],
     [131, 199],
     [131, 211],
     [131, 223],
     [131, 227],
     [131, 229],
     [131, 233],
     [131, 239],
     [131, 241],
     [131, 251],
     [131, 257],
     [131, 263],
     [131, 269],
     [131, 271],
     [137, 139],
     [137, 149]]

theorem k3FiveTwistGroup0148_passes :
    k3FiveTwistGroup0148.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0148_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
