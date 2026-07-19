import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0011 : List (List ℕ) :=
  [[3, 1069],
     [3, 1087],
     [3, 1091],
     [3, 1093],
     [3, 1097],
     [3, 1103],
     [3, 1109],
     [3, 1117],
     [3, 1123],
     [3, 1129],
     [3, 1151],
     [3, 1153],
     [3, 1163],
     [3, 1171],
     [3, 1181],
     [3, 1187]]

theorem k3PrefixGroup0011_passes :
    k3PrefixGroup0011.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
