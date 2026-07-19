import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0094 : List (List ℕ) :=
  [[43, 173],
     [43, 179],
     [43, 181],
     [43, 191],
     [43, 193],
     [43, 197],
     [43, 199],
     [43, 211],
     [43, 223],
     [43, 227],
     [43, 229],
     [43, 233],
     [43, 239],
     [43, 241],
     [43, 251],
     [43, 257]]

theorem k3FiveTwistGroup0094_passes :
    k3FiveTwistGroup0094.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0094_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
