import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0134 : List (List ℕ) :=
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

theorem k3PrefixGroup0134_passes :
    k3PrefixGroup0134.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
