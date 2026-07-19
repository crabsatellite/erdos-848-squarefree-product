import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0104 : List (List ℕ) :=
  [[53, 239],
     [53, 241],
     [53, 251],
     [53, 257],
     [53, 263],
     [53, 269],
     [53, 271],
     [53, 277],
     [53, 281],
     [53, 283],
     [53, 293],
     [53, 307],
     [53, 311],
     [53, 313],
     [53, 317],
     [53, 331]]

theorem k3FiveTwistGroup0104_passes :
    k3FiveTwistGroup0104.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0104_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
