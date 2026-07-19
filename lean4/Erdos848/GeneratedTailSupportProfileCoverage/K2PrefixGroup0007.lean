import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0007 : List (List ℕ) :=
  [[631],
     [641],
     [643],
     [647],
     [653],
     [659],
     [661],
     [673],
     [677],
     [683],
     [691],
     [701],
     [709],
     [719],
     [727],
     [733]]

theorem k2PrefixGroup0007_passes :
    k2PrefixGroup0007.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
