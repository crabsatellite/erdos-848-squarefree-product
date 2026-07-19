import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0141 : List (List ℕ) :=
  [[107, 257],
     [107, 263],
     [107, 269],
     [107, 271],
     [107, 277],
     [107, 281],
     [107, 283],
     [107, 293],
     [109, 113],
     [109, 127],
     [109, 131],
     [109, 137],
     [109, 139],
     [109, 149],
     [109, 151],
     [109, 157]]

theorem k3FiveTwistGroup0141_passes :
    k3FiveTwistGroup0141.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0141_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
