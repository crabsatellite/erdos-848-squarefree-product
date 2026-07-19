import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0011 : List (List ℕ) :=
  [[3, 11, 293],
     [3, 11, 307],
     [3, 11, 311],
     [3, 11, 313],
     [3, 11, 317],
     [3, 11, 331],
     [3, 11, 337],
     [3, 11, 347],
     [3, 11, 349],
     [3, 11, 353],
     [3, 11, 359],
     [3, 11, 367],
     [3, 11, 373],
     [3, 11, 379],
     [3, 11, 383],
     [3, 11, 389]]

theorem k4FiveTwistGroup0011_passes :
    k4FiveTwistGroup0011.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0011_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
