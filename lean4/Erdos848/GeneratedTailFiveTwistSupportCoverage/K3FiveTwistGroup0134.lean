import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0134 : List (List ℕ) :=
  [[97, 251],
     [97, 257],
     [97, 263],
     [97, 269],
     [97, 271],
     [97, 277],
     [97, 281],
     [97, 283],
     [97, 293],
     [97, 307],
     [97, 311],
     [97, 313],
     [101, 103],
     [101, 107],
     [101, 109],
     [101, 113]]

theorem k3FiveTwistGroup0134_passes :
    k3FiveTwistGroup0134.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0134_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
