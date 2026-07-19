import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0027 : List (List ℕ) :=
  [[7, 941],
     [7, 947],
     [7, 953],
     [7, 967],
     [7, 971],
     [7, 977],
     [7, 983],
     [7, 991],
     [7, 997],
     [7, 1009],
     [7, 1013],
     [7, 1019],
     [7, 1021],
     [7, 1031],
     [7, 1033],
     [7, 1039]]

theorem k3PrefixGroup0027_passes :
    k3PrefixGroup0027.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
