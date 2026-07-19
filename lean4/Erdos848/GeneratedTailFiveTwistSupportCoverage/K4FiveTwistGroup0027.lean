import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0027 : List (List ℕ) :=
  [[3, 19, 271],
     [3, 19, 277],
     [3, 19, 281],
     [3, 19, 283],
     [3, 19, 293],
     [3, 19, 307],
     [3, 19, 311],
     [3, 19, 313],
     [3, 19, 317],
     [3, 19, 331],
     [3, 19, 337],
     [3, 19, 347],
     [3, 19, 349],
     [3, 19, 353],
     [3, 19, 359],
     [3, 19, 367]]

theorem k4FiveTwistGroup0027_passes :
    k4FiveTwistGroup0027.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0027_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
