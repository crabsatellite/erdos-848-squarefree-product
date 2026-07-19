import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0059 : List (List ℕ) :=
  [[19, 269],
     [19, 271],
     [19, 277],
     [19, 281],
     [19, 283],
     [19, 293],
     [19, 307],
     [19, 311],
     [19, 313],
     [19, 317],
     [19, 331],
     [19, 337],
     [19, 347],
     [19, 349],
     [19, 353],
     [19, 359]]

theorem k3FiveTwistGroup0059_passes :
    k3FiveTwistGroup0059.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0059_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
