import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0050 : List (List ℕ) :=
  [[17, 173],
     [17, 179],
     [17, 181],
     [17, 191],
     [17, 193],
     [17, 197],
     [17, 199],
     [17, 211],
     [17, 223],
     [17, 227],
     [17, 229],
     [17, 233],
     [17, 239],
     [17, 241],
     [17, 251],
     [17, 257]]

theorem k3FiveTwistGroup0050_passes :
    k3FiveTwistGroup0050.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0050_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
