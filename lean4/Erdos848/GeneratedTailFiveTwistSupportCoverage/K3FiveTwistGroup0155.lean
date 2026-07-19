import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0155 : List (List ℕ) :=
  [[157, 241],
     [163, 167],
     [163, 173],
     [163, 179],
     [163, 181],
     [163, 191],
     [163, 193],
     [163, 197],
     [163, 199],
     [163, 211],
     [163, 223],
     [163, 227],
     [163, 229],
     [163, 233],
     [163, 239],
     [163, 241]]

theorem k3FiveTwistGroup0155_passes :
    k3FiveTwistGroup0155.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0155_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
