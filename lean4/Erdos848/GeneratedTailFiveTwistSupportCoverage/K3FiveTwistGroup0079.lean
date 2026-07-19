import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0079 : List (List ℕ) :=
  [[31, 251],
     [31, 257],
     [31, 263],
     [31, 269],
     [31, 271],
     [31, 277],
     [31, 281],
     [31, 283],
     [31, 293],
     [31, 307],
     [31, 311],
     [31, 313],
     [31, 317],
     [31, 331],
     [31, 337],
     [31, 347]]

theorem k3FiveTwistGroup0079_passes :
    k3FiveTwistGroup0079.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0079_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
