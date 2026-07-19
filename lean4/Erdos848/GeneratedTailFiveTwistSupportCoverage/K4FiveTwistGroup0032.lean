import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0032 : List (List ℕ) :=
  [[3, 23, 331],
     [3, 23, 337],
     [3, 23, 347],
     [3, 23, 349],
     [3, 23, 353],
     [3, 23, 359],
     [3, 23, 367],
     [3, 23, 373],
     [3, 29, 31],
     [3, 29, 37],
     [3, 29, 41],
     [3, 29, 43],
     [3, 29, 47],
     [3, 29, 53],
     [3, 29, 59],
     [3, 29, 61]]

theorem k4FiveTwistGroup0032_passes :
    k4FiveTwistGroup0032.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0032_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
