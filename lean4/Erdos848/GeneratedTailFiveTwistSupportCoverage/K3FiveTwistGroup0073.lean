import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0073 : List (List ℕ) :=
  [[29, 241],
     [29, 251],
     [29, 257],
     [29, 263],
     [29, 269],
     [29, 271],
     [29, 277],
     [29, 281],
     [29, 283],
     [29, 293],
     [29, 307],
     [29, 311],
     [29, 313],
     [29, 317],
     [29, 331],
     [29, 337]]

theorem k3FiveTwistGroup0073_passes :
    k3FiveTwistGroup0073.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0073_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
