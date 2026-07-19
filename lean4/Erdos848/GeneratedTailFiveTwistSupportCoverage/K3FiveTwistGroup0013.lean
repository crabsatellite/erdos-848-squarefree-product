import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0013 : List (List ℕ) :=
  [[3, 1301],
     [3, 1303],
     [3, 1307],
     [3, 1319],
     [3, 1321],
     [3, 1327],
     [3, 1361],
     [3, 1367],
     [3, 1373],
     [3, 1381],
     [3, 1399],
     [3, 1409],
     [3, 1423],
     [3, 1427],
     [3, 1429],
     [3, 1433]]

theorem k3FiveTwistGroup0013_passes :
    k3FiveTwistGroup0013.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0013_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
