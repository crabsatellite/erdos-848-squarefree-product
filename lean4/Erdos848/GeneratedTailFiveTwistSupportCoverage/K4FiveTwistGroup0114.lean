import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0114 : List (List ℕ) :=
  [[11, 17, 181],
     [11, 17, 191],
     [11, 17, 193],
     [11, 17, 197],
     [11, 17, 199],
     [11, 17, 211],
     [11, 17, 223],
     [11, 17, 227],
     [11, 17, 229],
     [11, 19, 23],
     [11, 19, 29],
     [11, 19, 31],
     [11, 19, 37],
     [11, 19, 41],
     [11, 19, 43],
     [11, 19, 47]]

theorem k4FiveTwistGroup0114_passes :
    k4FiveTwistGroup0114.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0114_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
