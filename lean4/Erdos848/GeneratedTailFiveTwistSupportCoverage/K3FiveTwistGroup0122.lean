import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0122 : List (List ℕ) :=
  [[73, 199],
     [73, 211],
     [73, 223],
     [73, 227],
     [73, 229],
     [73, 233],
     [73, 239],
     [73, 241],
     [73, 251],
     [73, 257],
     [73, 263],
     [73, 269],
     [73, 271],
     [73, 277],
     [73, 281],
     [73, 283]]

theorem k3FiveTwistGroup0122_passes :
    k3FiveTwistGroup0122.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0122_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
