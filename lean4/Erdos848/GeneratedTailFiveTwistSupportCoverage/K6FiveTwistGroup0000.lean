import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6FiveTwistGroup0000 : List (List ℕ) :=
  [[3, 7, 11, 13, 17],
     [3, 7, 11, 13, 19],
     [3, 7, 11, 13, 23],
     [3, 7, 11, 13, 29],
     [3, 7, 11, 13, 31],
     [3, 7, 11, 13, 37],
     [3, 7, 11, 13, 41],
     [3, 7, 11, 13, 43],
     [3, 7, 11, 13, 47],
     [3, 7, 11, 13, 53],
     [3, 7, 11, 17, 19],
     [3, 7, 11, 17, 23],
     [3, 7, 11, 17, 29],
     [3, 7, 11, 17, 31],
     [3, 7, 11, 17, 37],
     [3, 7, 11, 17, 41]]

theorem k6FiveTwistGroup0000_passes :
    k6FiveTwistGroup0000.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 30) = true := by
  decide

#print axioms k6FiveTwistGroup0000_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
