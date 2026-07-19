import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0108 : List (List ℕ) :=
  [[59, 229],
     [59, 233],
     [59, 239],
     [59, 241],
     [59, 251],
     [59, 257],
     [59, 263],
     [59, 269],
     [59, 271],
     [59, 277],
     [59, 281],
     [59, 283],
     [59, 293],
     [59, 307],
     [59, 311],
     [59, 313]]

theorem k3FiveTwistGroup0108_passes :
    k3FiveTwistGroup0108.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0108_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
