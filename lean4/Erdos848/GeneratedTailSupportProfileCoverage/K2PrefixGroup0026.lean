import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0026 : List (List ℕ) :=
  [[2897],
     [2903],
     [2909],
     [2917],
     [2927],
     [2939],
     [2953],
     [2957],
     [2963],
     [2969],
     [2971],
     [2999],
     [3001],
     [3011],
     [3019],
     [3023]]

theorem k2PrefixGroup0026_passes :
    k2PrefixGroup0026.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
