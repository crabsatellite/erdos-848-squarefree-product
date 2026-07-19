import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0111 : List (List ℕ) :=
  [[11, 13, 181],
     [11, 13, 191],
     [11, 13, 193],
     [11, 13, 197],
     [11, 13, 199],
     [11, 13, 211],
     [11, 13, 223],
     [11, 13, 227],
     [11, 13, 229],
     [11, 13, 233],
     [11, 13, 239],
     [11, 13, 241],
     [11, 13, 251],
     [11, 13, 257],
     [11, 17, 19],
     [11, 17, 23]]

theorem k4FiveTwistGroup0111_passes :
    k4FiveTwistGroup0111.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0111_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
