import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0050 : List (List ℕ) :=
  [[17, 173],
     [17, 179],
     [17, 181],
     [17, 191],
     [17, 193],
     [17, 197],
     [17, 199],
     [17, 211],
     [17, 223],
     [17, 227],
     [17, 229],
     [17, 233],
     [17, 239],
     [17, 241],
     [17, 251],
     [17, 257]]

theorem k3PrefixGroup0050_passes :
    k3PrefixGroup0050.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
