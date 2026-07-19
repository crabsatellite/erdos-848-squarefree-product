import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0090 : List (List ℕ) :=
  [[41, 257],
     [41, 263],
     [41, 269],
     [41, 271],
     [41, 277],
     [41, 281],
     [41, 283],
     [41, 293],
     [41, 307],
     [41, 311],
     [41, 313],
     [41, 317],
     [41, 331],
     [41, 337],
     [41, 347],
     [41, 349]]

theorem k3FiveTwistGroup0090_passes :
    k3FiveTwistGroup0090.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0090_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
