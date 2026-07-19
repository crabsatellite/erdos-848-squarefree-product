import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0156 : List (List ℕ) :=
  [[167, 173],
     [167, 179],
     [167, 181],
     [167, 191],
     [167, 193],
     [167, 197],
     [167, 199],
     [167, 211],
     [167, 223],
     [167, 227],
     [167, 229],
     [167, 233],
     [167, 239],
     [173, 179],
     [173, 181],
     [173, 191]]

theorem k3FiveTwistGroup0156_passes :
    k3FiveTwistGroup0156.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0156_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
