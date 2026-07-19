import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0041 : List (List ℕ) :=
  [[3, 37, 157],
     [3, 37, 163],
     [3, 37, 167],
     [3, 37, 173],
     [3, 37, 179],
     [3, 37, 181],
     [3, 37, 191],
     [3, 37, 193],
     [3, 37, 197],
     [3, 37, 199],
     [3, 37, 211],
     [3, 37, 223],
     [3, 37, 227],
     [3, 37, 229],
     [3, 37, 233],
     [3, 37, 239]]

theorem k4FiveTwistGroup0041_passes :
    k4FiveTwistGroup0041.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0041_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
