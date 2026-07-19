import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0031 : List (List ℕ) :=
  [[3, 23, 233],
     [3, 23, 239],
     [3, 23, 241],
     [3, 23, 251],
     [3, 23, 257],
     [3, 23, 263],
     [3, 23, 269],
     [3, 23, 271],
     [3, 23, 277],
     [3, 23, 281],
     [3, 23, 283],
     [3, 23, 293],
     [3, 23, 307],
     [3, 23, 311],
     [3, 23, 313],
     [3, 23, 317]]

theorem k4FiveTwistGroup0031_passes :
    k4FiveTwistGroup0031.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0031_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
