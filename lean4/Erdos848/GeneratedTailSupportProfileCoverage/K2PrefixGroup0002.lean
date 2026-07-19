import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0002 : List (List ℕ) :=
  [[149],
     [151],
     [157],
     [163],
     [167],
     [173],
     [179],
     [181],
     [191],
     [193],
     [197],
     [199],
     [211],
     [223],
     [227],
     [229]]

theorem k2PrefixGroup0002_passes :
    k2PrefixGroup0002.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
