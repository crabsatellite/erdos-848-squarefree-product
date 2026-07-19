import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0066 : List (List ℕ) :=
  [[23, 229],
     [23, 233],
     [23, 239],
     [23, 241],
     [23, 251],
     [23, 257],
     [23, 263],
     [23, 269],
     [23, 271],
     [23, 277],
     [23, 281],
     [23, 283],
     [23, 293],
     [23, 307],
     [23, 311],
     [23, 313]]

theorem k3FiveTwistGroup0066_passes :
    k3FiveTwistGroup0066.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0066_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
