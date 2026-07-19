import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0028 : List (List ℕ) :=
  [[7, 1049],
     [7, 1051],
     [7, 1061],
     [7, 1063],
     [7, 1069],
     [7, 1087],
     [7, 1091],
     [7, 1093],
     [7, 1097],
     [7, 1103],
     [7, 1109],
     [7, 1117],
     [7, 1123],
     [7, 1129],
     [7, 1151],
     [7, 1153]]

theorem k3PrefixGroup0028_passes :
    k3PrefixGroup0028.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
