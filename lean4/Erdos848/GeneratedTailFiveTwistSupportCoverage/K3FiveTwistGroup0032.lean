import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0032 : List (List ℕ) :=
  [[11, 229],
     [11, 233],
     [11, 239],
     [11, 241],
     [11, 251],
     [11, 257],
     [11, 263],
     [11, 269],
     [11, 271],
     [11, 277],
     [11, 281],
     [11, 283],
     [11, 293],
     [11, 307],
     [11, 311],
     [11, 313]]

theorem k3FiveTwistGroup0032_passes :
    k3FiveTwistGroup0032.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0032_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
