import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0041 : List (List ℕ) :=
  [[13, 167],
     [13, 173],
     [13, 179],
     [13, 181],
     [13, 191],
     [13, 193],
     [13, 197],
     [13, 199],
     [13, 211],
     [13, 223],
     [13, 227],
     [13, 229],
     [13, 233],
     [13, 239],
     [13, 241],
     [13, 251]]

theorem k3FiveTwistGroup0041_passes :
    k3FiveTwistGroup0041.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0041_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
