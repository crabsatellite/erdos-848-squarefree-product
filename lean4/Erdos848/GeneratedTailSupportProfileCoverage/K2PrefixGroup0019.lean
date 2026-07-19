import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0019 : List (List ℕ) :=
  [[2027],
     [2029],
     [2039],
     [2053],
     [2063],
     [2069],
     [2081],
     [2083],
     [2087],
     [2089],
     [2099],
     [2111],
     [2113],
     [2129],
     [2131],
     [2137]]

theorem k2PrefixGroup0019_passes :
    k2PrefixGroup0019.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
