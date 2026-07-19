import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0108 : List (List ℕ) :=
  [[59, 229],
     [59, 233],
     [59, 239],
     [59, 241],
     [59, 251],
     [59, 257],
     [59, 263],
     [59, 269],
     [59, 271],
     [59, 277],
     [59, 281],
     [59, 283],
     [59, 293],
     [59, 307],
     [59, 311],
     [59, 313]]

theorem k3PrefixGroup0108_passes :
    k3PrefixGroup0108.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
