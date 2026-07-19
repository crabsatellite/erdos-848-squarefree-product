import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0010 : List (List ℕ) :=
  [[3, 971],
     [3, 977],
     [3, 983],
     [3, 991],
     [3, 997],
     [3, 1009],
     [3, 1013],
     [3, 1019],
     [3, 1021],
     [3, 1031],
     [3, 1033],
     [3, 1039],
     [3, 1049],
     [3, 1051],
     [3, 1061],
     [3, 1063]]

theorem k3FiveTwistGroup0010_passes :
    k3FiveTwistGroup0010.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0010_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
