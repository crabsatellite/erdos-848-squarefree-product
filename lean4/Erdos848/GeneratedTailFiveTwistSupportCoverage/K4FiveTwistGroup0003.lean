import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0003 : List (List ℕ) :=
  [[3, 7, 241],
     [3, 7, 251],
     [3, 7, 257],
     [3, 7, 263],
     [3, 7, 269],
     [3, 7, 271],
     [3, 7, 277],
     [3, 7, 281],
     [3, 7, 283],
     [3, 7, 293],
     [3, 7, 307],
     [3, 7, 311],
     [3, 7, 313],
     [3, 7, 317],
     [3, 7, 331],
     [3, 7, 337]]

theorem k4FiveTwistGroup0003_passes :
    k4FiveTwistGroup0003.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0003_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
