import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0078 : List (List ℕ) :=
  [[7, 13, 163],
     [7, 13, 167],
     [7, 13, 173],
     [7, 13, 179],
     [7, 13, 181],
     [7, 13, 191],
     [7, 13, 193],
     [7, 13, 197],
     [7, 13, 199],
     [7, 13, 211],
     [7, 13, 223],
     [7, 13, 227],
     [7, 13, 229],
     [7, 13, 233],
     [7, 13, 239],
     [7, 13, 241]]

theorem k4FiveTwistGroup0078_passes :
    k4FiveTwistGroup0078.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0078_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
