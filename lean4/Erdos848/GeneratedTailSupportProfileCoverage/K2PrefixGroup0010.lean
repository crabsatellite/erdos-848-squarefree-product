import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0010 : List (List ℕ) :=
  [[967],
     [971],
     [977],
     [983],
     [991],
     [997],
     [1009],
     [1013],
     [1019],
     [1021],
     [1031],
     [1033],
     [1039],
     [1049],
     [1051],
     [1061]]

theorem k2PrefixGroup0010_passes :
    k2PrefixGroup0010.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
