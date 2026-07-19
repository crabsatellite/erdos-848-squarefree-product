import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0131 : List (List ℕ) :=
  [[89, 223],
     [89, 227],
     [89, 229],
     [89, 233],
     [89, 239],
     [89, 241],
     [89, 251],
     [89, 257],
     [89, 263],
     [89, 269],
     [89, 271],
     [89, 277],
     [89, 281],
     [89, 283],
     [89, 293],
     [89, 307]]

theorem k3FiveTwistGroup0131_passes :
    k3FiveTwistGroup0131.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0131_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
