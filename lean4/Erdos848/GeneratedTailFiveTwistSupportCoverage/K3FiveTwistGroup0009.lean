import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0009 : List (List ℕ) :=
  [[3, 857],
     [3, 859],
     [3, 863],
     [3, 877],
     [3, 881],
     [3, 883],
     [3, 887],
     [3, 907],
     [3, 911],
     [3, 919],
     [3, 929],
     [3, 937],
     [3, 941],
     [3, 947],
     [3, 953],
     [3, 967]]

theorem k3FiveTwistGroup0009_passes :
    k3FiveTwistGroup0009.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0009_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
