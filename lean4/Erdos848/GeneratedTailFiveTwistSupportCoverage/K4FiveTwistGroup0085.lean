import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0085 : List (List ℕ) :=
  [[7, 19, 163],
     [7, 19, 167],
     [7, 19, 173],
     [7, 19, 179],
     [7, 19, 181],
     [7, 19, 191],
     [7, 19, 193],
     [7, 19, 197],
     [7, 19, 199],
     [7, 19, 211],
     [7, 19, 223],
     [7, 19, 227],
     [7, 19, 229],
     [7, 19, 233],
     [7, 19, 239],
     [7, 19, 241]]

theorem k4FiveTwistGroup0085_passes :
    k4FiveTwistGroup0085.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0085_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
