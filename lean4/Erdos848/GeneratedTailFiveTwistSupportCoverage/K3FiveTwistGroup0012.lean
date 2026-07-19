import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0012 : List (List ℕ) :=
  [[3, 1193],
     [3, 1201],
     [3, 1213],
     [3, 1217],
     [3, 1223],
     [3, 1229],
     [3, 1231],
     [3, 1237],
     [3, 1249],
     [3, 1259],
     [3, 1277],
     [3, 1279],
     [3, 1283],
     [3, 1289],
     [3, 1291],
     [3, 1297]]

theorem k3FiveTwistGroup0012_passes :
    k3FiveTwistGroup0012.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0012_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
