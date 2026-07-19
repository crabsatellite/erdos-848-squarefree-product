import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0027 : List (List ℕ) :=
  [[3037],
     [3041],
     [3049],
     [3061],
     [3067],
     [3079],
     [3083],
     [3089],
     [3109],
     [3119],
     [3121],
     [3137]]

theorem k2PrefixGroup0027_passes :
    k2PrefixGroup0027.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
