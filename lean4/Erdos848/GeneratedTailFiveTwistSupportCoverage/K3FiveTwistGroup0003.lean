import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0003 : List (List ℕ) :=
  [[3, 239],
     [3, 241],
     [3, 251],
     [3, 257],
     [3, 263],
     [3, 269],
     [3, 271],
     [3, 277],
     [3, 281],
     [3, 283],
     [3, 293],
     [3, 307],
     [3, 311],
     [3, 313],
     [3, 317],
     [3, 331]]

theorem k3FiveTwistGroup0003_passes :
    k3FiveTwistGroup0003.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0003_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
