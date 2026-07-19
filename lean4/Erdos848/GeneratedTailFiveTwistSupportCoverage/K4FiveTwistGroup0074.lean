import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0074 : List (List ℕ) :=
  [[7, 11, 167],
     [7, 11, 173],
     [7, 11, 179],
     [7, 11, 181],
     [7, 11, 191],
     [7, 11, 193],
     [7, 11, 197],
     [7, 11, 199],
     [7, 11, 211],
     [7, 11, 223],
     [7, 11, 227],
     [7, 11, 229],
     [7, 11, 233],
     [7, 11, 239],
     [7, 11, 241],
     [7, 11, 251]]

theorem k4FiveTwistGroup0074_passes :
    k4FiveTwistGroup0074.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0074_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
