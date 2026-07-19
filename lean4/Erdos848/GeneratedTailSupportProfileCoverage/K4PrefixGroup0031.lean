import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0031 : List (List ℕ) :=
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

theorem k4PrefixGroup0031_passes :
    k4PrefixGroup0031.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
