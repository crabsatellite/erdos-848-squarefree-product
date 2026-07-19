import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0095 : List (List ℕ) :=
  [[43, 263],
     [43, 269],
     [43, 271],
     [43, 277],
     [43, 281],
     [43, 283],
     [43, 293],
     [43, 307],
     [43, 311],
     [43, 313],
     [43, 317],
     [43, 331],
     [43, 337],
     [43, 347],
     [43, 349],
     [43, 353]]

theorem k3FiveTwistGroup0095_passes :
    k3FiveTwistGroup0095.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0095_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
