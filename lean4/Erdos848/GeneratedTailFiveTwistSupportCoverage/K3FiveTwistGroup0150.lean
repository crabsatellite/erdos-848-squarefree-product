import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0150 : List (List ℕ) :=
  [[137, 239],
     [137, 241],
     [137, 251],
     [137, 257],
     [137, 263],
     [137, 269],
     [139, 149],
     [139, 151],
     [139, 157],
     [139, 163],
     [139, 167],
     [139, 173],
     [139, 179],
     [139, 181],
     [139, 191],
     [139, 193]]

theorem k3FiveTwistGroup0150_passes :
    k3FiveTwistGroup0150.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0150_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
