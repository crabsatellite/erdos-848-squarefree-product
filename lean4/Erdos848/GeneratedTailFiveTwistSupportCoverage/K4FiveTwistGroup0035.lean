import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0035 : List (List ℕ) :=
  [[3, 29, 233],
     [3, 29, 239],
     [3, 29, 241],
     [3, 29, 251],
     [3, 29, 257],
     [3, 29, 263],
     [3, 29, 269],
     [3, 29, 271],
     [3, 29, 277],
     [3, 29, 281],
     [3, 29, 283],
     [3, 29, 293],
     [3, 29, 307],
     [3, 29, 311],
     [3, 29, 313],
     [3, 29, 317]]

theorem k4FiveTwistGroup0035_passes :
    k4FiveTwistGroup0035.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0035_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
