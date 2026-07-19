import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0026 : List (List ℕ) :=
  [[7, 827],
     [7, 829],
     [7, 839],
     [7, 853],
     [7, 857],
     [7, 859],
     [7, 863],
     [7, 877],
     [7, 881],
     [7, 883],
     [7, 887],
     [7, 907],
     [7, 911],
     [7, 919],
     [7, 929],
     [7, 937]]

theorem k3FiveTwistGroup0026_passes :
    k3FiveTwistGroup0026.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0026_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
