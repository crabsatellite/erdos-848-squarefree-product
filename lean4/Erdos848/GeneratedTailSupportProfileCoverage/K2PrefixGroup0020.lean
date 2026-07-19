import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0020 : List (List ℕ) :=
  [[2141],
     [2143],
     [2153],
     [2161],
     [2179],
     [2203],
     [2207],
     [2213],
     [2221],
     [2237],
     [2239],
     [2243],
     [2251],
     [2267],
     [2269],
     [2273]]

theorem k2PrefixGroup0020_passes :
    k2PrefixGroup0020.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
