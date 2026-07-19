import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0017 : List (List ℕ) :=
  [[3, 1783],
     [3, 1787],
     [3, 1789],
     [3, 1801],
     [3, 1811],
     [7, 11],
     [7, 13],
     [7, 17],
     [7, 19],
     [7, 23],
     [7, 29],
     [7, 31],
     [7, 37],
     [7, 41],
     [7, 43],
     [7, 47]]

theorem k3PrefixGroup0017_passes :
    k3PrefixGroup0017.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
