import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0140 : List (List ℕ) :=
  [[107, 167],
     [107, 173],
     [107, 179],
     [107, 181],
     [107, 191],
     [107, 193],
     [107, 197],
     [107, 199],
     [107, 211],
     [107, 223],
     [107, 227],
     [107, 229],
     [107, 233],
     [107, 239],
     [107, 241],
     [107, 251]]

theorem k3FiveTwistGroup0140_passes :
    k3FiveTwistGroup0140.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0140_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
