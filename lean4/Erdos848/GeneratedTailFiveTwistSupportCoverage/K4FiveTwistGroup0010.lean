import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0010 : List (List ℕ) :=
  [[3, 11, 199],
     [3, 11, 211],
     [3, 11, 223],
     [3, 11, 227],
     [3, 11, 229],
     [3, 11, 233],
     [3, 11, 239],
     [3, 11, 241],
     [3, 11, 251],
     [3, 11, 257],
     [3, 11, 263],
     [3, 11, 269],
     [3, 11, 271],
     [3, 11, 277],
     [3, 11, 281],
     [3, 11, 283]]

theorem k4FiveTwistGroup0010_passes :
    k4FiveTwistGroup0010.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0010_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
