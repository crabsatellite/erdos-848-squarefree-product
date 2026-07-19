import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0025 : List (List ℕ) :=
  [[2767],
     [2777],
     [2789],
     [2791],
     [2797],
     [2801],
     [2803],
     [2819],
     [2833],
     [2837],
     [2843],
     [2851],
     [2857],
     [2861],
     [2879],
     [2887]]

theorem k2PrefixGroup0025_passes :
    k2PrefixGroup0025.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
