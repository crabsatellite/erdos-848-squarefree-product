import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0066 : List (List ℕ) :=
  [[23, 229],
     [23, 233],
     [23, 239],
     [23, 241],
     [23, 251],
     [23, 257],
     [23, 263],
     [23, 269],
     [23, 271],
     [23, 277],
     [23, 281],
     [23, 283],
     [23, 293],
     [23, 307],
     [23, 311],
     [23, 313]]

theorem k3PrefixGroup0066_passes :
    k3PrefixGroup0066.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
