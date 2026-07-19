import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0029 : List (List ℕ) :=
  [[7, 1163],
     [7, 1171],
     [7, 1181],
     [7, 1187],
     [11, 13],
     [11, 17],
     [11, 19],
     [11, 23],
     [11, 29],
     [11, 31],
     [11, 37],
     [11, 41],
     [11, 43],
     [11, 47],
     [11, 53],
     [11, 59]]

theorem k3PrefixGroup0029_passes :
    k3PrefixGroup0029.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
