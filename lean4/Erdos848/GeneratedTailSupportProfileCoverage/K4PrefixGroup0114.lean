import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0114 : List (List ℕ) :=
  [[11, 17, 181],
     [11, 17, 191],
     [11, 17, 193],
     [11, 17, 197],
     [11, 17, 199],
     [11, 17, 211],
     [11, 17, 223],
     [11, 17, 227],
     [11, 17, 229],
     [11, 19, 23],
     [11, 19, 29],
     [11, 19, 31],
     [11, 19, 37],
     [11, 19, 41],
     [11, 19, 43],
     [11, 19, 47]]

theorem k4PrefixGroup0114_passes :
    k4PrefixGroup0114.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
