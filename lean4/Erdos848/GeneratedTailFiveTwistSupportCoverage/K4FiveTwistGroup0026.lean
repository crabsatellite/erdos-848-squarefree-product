import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0026 : List (List ℕ) :=
  [[3, 19, 181],
     [3, 19, 191],
     [3, 19, 193],
     [3, 19, 197],
     [3, 19, 199],
     [3, 19, 211],
     [3, 19, 223],
     [3, 19, 227],
     [3, 19, 229],
     [3, 19, 233],
     [3, 19, 239],
     [3, 19, 241],
     [3, 19, 251],
     [3, 19, 257],
     [3, 19, 263],
     [3, 19, 269]]

theorem k4FiveTwistGroup0026_passes :
    k4FiveTwistGroup0026.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0026_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
