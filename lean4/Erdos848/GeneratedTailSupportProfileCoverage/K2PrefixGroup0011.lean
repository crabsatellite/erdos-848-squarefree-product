import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0011 : List (List ℕ) :=
  [[1063],
     [1069],
     [1087],
     [1091],
     [1093],
     [1097],
     [1103],
     [1109],
     [1117],
     [1123],
     [1129],
     [1151],
     [1153],
     [1163],
     [1171],
     [1181]]

theorem k2PrefixGroup0011_passes :
    k2PrefixGroup0011.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
