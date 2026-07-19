import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0010 : List (List ℕ) :=
  [[3, 971],
     [3, 977],
     [3, 983],
     [3, 991],
     [3, 997],
     [3, 1009],
     [3, 1013],
     [3, 1019],
     [3, 1021],
     [3, 1031],
     [3, 1033],
     [3, 1039],
     [3, 1049],
     [3, 1051],
     [3, 1061],
     [3, 1063]]

theorem k3PrefixGroup0010_passes :
    k3PrefixGroup0010.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
