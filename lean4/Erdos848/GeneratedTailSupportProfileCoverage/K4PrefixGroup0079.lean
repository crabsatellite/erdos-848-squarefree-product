import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0079 : List (List ℕ) :=
  [[7, 13, 251],
     [7, 13, 257],
     [7, 13, 263],
     [7, 13, 269],
     [7, 13, 271],
     [7, 13, 277],
     [7, 13, 281],
     [7, 13, 283],
     [7, 13, 293],
     [7, 13, 307],
     [7, 13, 311],
     [7, 13, 313],
     [7, 13, 317],
     [7, 17, 19],
     [7, 17, 23],
     [7, 17, 29]]

theorem k4PrefixGroup0079_passes :
    k4PrefixGroup0079.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
