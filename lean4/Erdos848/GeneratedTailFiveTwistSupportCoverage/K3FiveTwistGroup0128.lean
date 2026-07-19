import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0128 : List (List ℕ) :=
  [[83, 193],
     [83, 197],
     [83, 199],
     [83, 211],
     [83, 223],
     [83, 227],
     [83, 229],
     [83, 233],
     [83, 239],
     [83, 241],
     [83, 251],
     [83, 257],
     [83, 263],
     [83, 269],
     [83, 271],
     [83, 277]]

theorem k3FiveTwistGroup0128_passes :
    k3FiveTwistGroup0128.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0128_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
