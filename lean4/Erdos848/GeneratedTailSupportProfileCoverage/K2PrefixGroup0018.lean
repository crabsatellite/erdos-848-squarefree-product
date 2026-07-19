import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0018 : List (List ℕ) :=
  [[1901],
     [1907],
     [1913],
     [1931],
     [1933],
     [1949],
     [1951],
     [1973],
     [1979],
     [1987],
     [1993],
     [1997],
     [1999],
     [2003],
     [2011],
     [2017]]

theorem k2PrefixGroup0018_passes :
    k2PrefixGroup0018.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
