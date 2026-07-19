import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0075 : List (List ℕ) :=
  [[7, 11, 257],
     [7, 11, 263],
     [7, 11, 269],
     [7, 11, 271],
     [7, 11, 277],
     [7, 11, 281],
     [7, 11, 283],
     [7, 11, 293],
     [7, 11, 307],
     [7, 11, 311],
     [7, 11, 313],
     [7, 11, 317],
     [7, 11, 331],
     [7, 11, 337],
     [7, 11, 347],
     [7, 11, 349]]

theorem k4PrefixGroup0075_passes :
    k4PrefixGroup0075.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
