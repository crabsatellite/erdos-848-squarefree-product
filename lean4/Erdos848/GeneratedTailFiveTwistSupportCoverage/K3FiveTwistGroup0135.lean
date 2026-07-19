import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0135 : List (List ℕ) :=
  [[101, 127],
     [101, 131],
     [101, 137],
     [101, 139],
     [101, 149],
     [101, 151],
     [101, 157],
     [101, 163],
     [101, 167],
     [101, 173],
     [101, 179],
     [101, 181],
     [101, 191],
     [101, 193],
     [101, 197],
     [101, 199]]

theorem k3FiveTwistGroup0135_passes :
    k3FiveTwistGroup0135.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0135_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
