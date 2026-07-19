import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0017 : List (List ℕ) :=
  [[1777],
     [1783],
     [1787],
     [1789],
     [1801],
     [1811],
     [1823],
     [1831],
     [1847],
     [1861],
     [1867],
     [1871],
     [1873],
     [1877],
     [1879],
     [1889]]

theorem k2PrefixGroup0017_passes :
    k2PrefixGroup0017.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
