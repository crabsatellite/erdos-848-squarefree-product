import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0021 : List (List ℕ) :=
  [[2281],
     [2287],
     [2293],
     [2297],
     [2309],
     [2311],
     [2333],
     [2339],
     [2341],
     [2347],
     [2351],
     [2357],
     [2371],
     [2377],
     [2381],
     [2383]]

theorem k2PrefixGroup0021_passes :
    k2PrefixGroup0021.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
