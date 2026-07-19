import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0042 : List (List ℕ) :=
  [[3, 37, 241],
     [3, 37, 251],
     [3, 37, 257],
     [3, 37, 263],
     [3, 37, 269],
     [3, 37, 271],
     [3, 37, 277],
     [3, 37, 281],
     [3, 37, 283],
     [3, 37, 293],
     [3, 41, 43],
     [3, 41, 47],
     [3, 41, 53],
     [3, 41, 59],
     [3, 41, 61],
     [3, 41, 67]]

theorem k4FiveTwistGroup0042_passes :
    k4FiveTwistGroup0042.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0042_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
