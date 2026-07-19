import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0112 : List (List ℕ) :=
  [[61, 241],
     [61, 251],
     [61, 257],
     [61, 263],
     [61, 269],
     [61, 271],
     [61, 277],
     [61, 281],
     [61, 283],
     [61, 293],
     [61, 307],
     [61, 311],
     [61, 313],
     [61, 317],
     [61, 331],
     [61, 337]]

theorem k3FiveTwistGroup0112_passes :
    k3FiveTwistGroup0112.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0112_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
