import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0085 : List (List ℕ) :=
  [[37, 277],
     [37, 281],
     [37, 283],
     [37, 293],
     [37, 307],
     [37, 311],
     [37, 313],
     [37, 317],
     [37, 331],
     [37, 337],
     [37, 347],
     [37, 349],
     [37, 353],
     [37, 359],
     [37, 367],
     [37, 373]]

theorem k3FiveTwistGroup0085_passes :
    k3FiveTwistGroup0085.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0085_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
