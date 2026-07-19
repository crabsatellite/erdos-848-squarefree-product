import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0004 : List (List ℕ) :=
  [[331],
     [337],
     [347],
     [349],
     [353],
     [359],
     [367],
     [373],
     [379],
     [383],
     [389],
     [397],
     [401],
     [409],
     [419],
     [421]]

theorem k2PrefixGroup0004_passes :
    k2PrefixGroup0004.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
