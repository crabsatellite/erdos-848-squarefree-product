import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0116 : List (List ℕ) :=
  [[67, 271],
     [67, 277],
     [67, 281],
     [67, 283],
     [67, 293],
     [67, 307],
     [67, 311],
     [67, 313],
     [67, 317],
     [67, 331],
     [67, 337],
     [67, 347],
     [67, 349],
     [67, 353],
     [67, 359],
     [67, 367]]

theorem k3FiveTwistGroup0116_passes :
    k3FiveTwistGroup0116.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0116_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
