import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0039 : List (List ℕ) :=
  [[3, 31, 277],
     [3, 31, 281],
     [3, 31, 283],
     [3, 31, 293],
     [3, 31, 307],
     [3, 31, 311],
     [3, 31, 313],
     [3, 31, 317],
     [3, 37, 41],
     [3, 37, 43],
     [3, 37, 47],
     [3, 37, 53],
     [3, 37, 59],
     [3, 37, 61],
     [3, 37, 67],
     [3, 37, 71]]

theorem k4PrefixGroup0039_passes :
    k4PrefixGroup0039.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
