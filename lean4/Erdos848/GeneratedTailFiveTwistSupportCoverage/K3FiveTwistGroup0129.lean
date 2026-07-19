import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0129 : List (List ℕ) :=
  [[83, 281],
     [83, 283],
     [83, 293],
     [83, 307],
     [83, 311],
     [83, 313],
     [83, 317],
     [83, 331],
     [83, 337],
     [89, 97],
     [89, 101],
     [89, 103],
     [89, 107],
     [89, 109],
     [89, 113],
     [89, 127]]

theorem k3FiveTwistGroup0129_passes :
    k3FiveTwistGroup0129.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0129_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
