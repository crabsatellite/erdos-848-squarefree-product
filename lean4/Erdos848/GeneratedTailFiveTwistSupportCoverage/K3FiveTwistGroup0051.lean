import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0051 : List (List ℕ) :=
  [[17, 263],
     [17, 269],
     [17, 271],
     [17, 277],
     [17, 281],
     [17, 283],
     [17, 293],
     [17, 307],
     [17, 311],
     [17, 313],
     [17, 317],
     [17, 331],
     [17, 337],
     [17, 347],
     [17, 349],
     [17, 353]]

theorem k3FiveTwistGroup0051_passes :
    k3FiveTwistGroup0051.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0051_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
