import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0020 : List (List ℕ) :=
  [[7, 223],
     [7, 227],
     [7, 229],
     [7, 233],
     [7, 239],
     [7, 241],
     [7, 251],
     [7, 257],
     [7, 263],
     [7, 269],
     [7, 271],
     [7, 277],
     [7, 281],
     [7, 283],
     [7, 293],
     [7, 307]]

theorem k3FiveTwistGroup0020_passes :
    k3FiveTwistGroup0020.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0020_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
