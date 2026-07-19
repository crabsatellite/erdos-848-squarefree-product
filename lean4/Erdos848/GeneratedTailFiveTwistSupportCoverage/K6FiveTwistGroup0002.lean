import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6FiveTwistGroup0002 : List (List ℕ) :=
  [[3, 7, 13, 17, 31],
     [3, 7, 13, 17, 37],
     [3, 7, 13, 17, 41],
     [3, 7, 13, 17, 43],
     [3, 7, 13, 19, 23],
     [3, 7, 13, 19, 29],
     [3, 7, 13, 19, 31],
     [3, 7, 13, 19, 37],
     [3, 7, 13, 19, 41],
     [3, 7, 13, 23, 29],
     [3, 7, 13, 23, 31],
     [3, 7, 13, 23, 37],
     [3, 7, 13, 29, 31],
     [3, 7, 17, 19, 23],
     [3, 7, 17, 19, 29],
     [3, 7, 17, 19, 31]]

theorem k6FiveTwistGroup0002_passes :
    k6FiveTwistGroup0002.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 30) = true := by
  decide

#print axioms k6FiveTwistGroup0002_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
