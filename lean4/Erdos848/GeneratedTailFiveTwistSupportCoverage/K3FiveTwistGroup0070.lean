import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0070 : List (List ℕ) :=
  [[23, 619],
     [23, 631],
     [23, 641],
     [23, 643],
     [23, 647],
     [23, 653],
     [29, 31],
     [29, 37],
     [29, 41],
     [29, 43],
     [29, 47],
     [29, 53],
     [29, 59],
     [29, 61],
     [29, 67],
     [29, 71]]

theorem k3FiveTwistGroup0070_passes :
    k3FiveTwistGroup0070.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0070_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
