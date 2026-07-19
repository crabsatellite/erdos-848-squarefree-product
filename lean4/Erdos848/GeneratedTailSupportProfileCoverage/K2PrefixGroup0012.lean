import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0012 : List (List ℕ) :=
  [[1187],
     [1193],
     [1201],
     [1213],
     [1217],
     [1223],
     [1229],
     [1231],
     [1237],
     [1249],
     [1259],
     [1277],
     [1279],
     [1283],
     [1289],
     [1291]]

theorem k2PrefixGroup0012_passes :
    k2PrefixGroup0012.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
