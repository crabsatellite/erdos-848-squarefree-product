import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0032 : List (List ℕ) :=
  [[11, 229],
     [11, 233],
     [11, 239],
     [11, 241],
     [11, 251],
     [11, 257],
     [11, 263],
     [11, 269],
     [11, 271],
     [11, 277],
     [11, 281],
     [11, 283],
     [11, 293],
     [11, 307],
     [11, 311],
     [11, 313]]

theorem k3PrefixGroup0032_passes :
    k3PrefixGroup0032.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
