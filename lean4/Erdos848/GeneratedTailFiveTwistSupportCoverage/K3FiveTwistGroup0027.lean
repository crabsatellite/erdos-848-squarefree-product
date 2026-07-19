import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0027 : List (List ℕ) :=
  [[7, 941],
     [7, 947],
     [7, 953],
     [7, 967],
     [7, 971],
     [7, 977],
     [7, 983],
     [7, 991],
     [7, 997],
     [7, 1009],
     [7, 1013],
     [7, 1019],
     [7, 1021],
     [7, 1031],
     [7, 1033],
     [7, 1039]]

theorem k3FiveTwistGroup0027_passes :
    k3FiveTwistGroup0027.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0027_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
