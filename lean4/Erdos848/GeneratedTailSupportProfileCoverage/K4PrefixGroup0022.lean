import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0022 : List (List ℕ) :=
  [[3, 17, 257],
     [3, 17, 263],
     [3, 17, 269],
     [3, 17, 271],
     [3, 17, 277],
     [3, 17, 281],
     [3, 17, 283],
     [3, 17, 293],
     [3, 17, 307],
     [3, 17, 311],
     [3, 17, 313],
     [3, 17, 317],
     [3, 17, 331],
     [3, 17, 337],
     [3, 17, 347],
     [3, 17, 349]]

theorem k4PrefixGroup0022_passes :
    k4PrefixGroup0022.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
