import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0003 : List (List ℕ) :=
  [[233],
     [239],
     [241],
     [251],
     [257],
     [263],
     [269],
     [271],
     [277],
     [281],
     [283],
     [293],
     [307],
     [311],
     [313],
     [317]]

theorem k2PrefixGroup0003_passes :
    k2PrefixGroup0003.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
