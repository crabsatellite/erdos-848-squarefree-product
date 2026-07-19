import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0021 : List (List ℕ) :=
  [[3, 17, 167],
     [3, 17, 173],
     [3, 17, 179],
     [3, 17, 181],
     [3, 17, 191],
     [3, 17, 193],
     [3, 17, 197],
     [3, 17, 199],
     [3, 17, 211],
     [3, 17, 223],
     [3, 17, 227],
     [3, 17, 229],
     [3, 17, 233],
     [3, 17, 239],
     [3, 17, 241],
     [3, 17, 251]]

theorem k4FiveTwistGroup0021_passes :
    k4FiveTwistGroup0021.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0021_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
