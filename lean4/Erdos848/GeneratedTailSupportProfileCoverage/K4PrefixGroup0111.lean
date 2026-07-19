import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0111 : List (List ℕ) :=
  [[11, 13, 181],
     [11, 13, 191],
     [11, 13, 193],
     [11, 13, 197],
     [11, 13, 199],
     [11, 13, 211],
     [11, 13, 223],
     [11, 13, 227],
     [11, 13, 229],
     [11, 13, 233],
     [11, 13, 239],
     [11, 13, 241],
     [11, 13, 251],
     [11, 13, 257],
     [11, 17, 19],
     [11, 17, 23]]

theorem k4PrefixGroup0111_passes :
    k4PrefixGroup0111.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
