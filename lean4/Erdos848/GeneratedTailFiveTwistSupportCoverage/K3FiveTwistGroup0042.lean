import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0042 : List (List ℕ) :=
  [[13, 257],
     [13, 263],
     [13, 269],
     [13, 271],
     [13, 277],
     [13, 281],
     [13, 283],
     [13, 293],
     [13, 307],
     [13, 311],
     [13, 313],
     [13, 317],
     [13, 331],
     [13, 337],
     [13, 347],
     [13, 349]]

theorem k3FiveTwistGroup0042_passes :
    k3FiveTwistGroup0042.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0042_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
