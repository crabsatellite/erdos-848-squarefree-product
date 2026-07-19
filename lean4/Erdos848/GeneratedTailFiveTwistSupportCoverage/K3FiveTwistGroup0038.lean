import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0038 : List (List ℕ) :=
  [[11, 839],
     [11, 853],
     [11, 857],
     [11, 859],
     [11, 863],
     [11, 877],
     [11, 881],
     [11, 883],
     [11, 887],
     [11, 907],
     [11, 911],
     [11, 919],
     [11, 929],
     [11, 937],
     [11, 941],
     [11, 947]]

theorem k3FiveTwistGroup0038_passes :
    k3FiveTwistGroup0038.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0038_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
