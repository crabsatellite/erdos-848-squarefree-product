import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0125 : List (List ℕ) :=
  [[79, 191],
     [79, 193],
     [79, 197],
     [79, 199],
     [79, 211],
     [79, 223],
     [79, 227],
     [79, 229],
     [79, 233],
     [79, 239],
     [79, 241],
     [79, 251],
     [79, 257],
     [79, 263],
     [79, 269],
     [79, 271]]

theorem k3FiveTwistGroup0125_passes :
    k3FiveTwistGroup0125.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0125_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
