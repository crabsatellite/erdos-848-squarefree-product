import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0082 : List (List ℕ) :=
  [[7, 17, 191],
     [7, 17, 193],
     [7, 17, 197],
     [7, 17, 199],
     [7, 17, 211],
     [7, 17, 223],
     [7, 17, 227],
     [7, 17, 229],
     [7, 17, 233],
     [7, 17, 239],
     [7, 17, 241],
     [7, 17, 251],
     [7, 17, 257],
     [7, 17, 263],
     [7, 17, 269],
     [7, 17, 271]]

theorem k4FiveTwistGroup0082_passes :
    k4FiveTwistGroup0082.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0082_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
