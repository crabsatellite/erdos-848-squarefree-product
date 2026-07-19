import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0155 : List (List ℕ) :=
  [[157, 241],
     [163, 167],
     [163, 173],
     [163, 179],
     [163, 181],
     [163, 191],
     [163, 193],
     [163, 197],
     [163, 199],
     [163, 211],
     [163, 223],
     [163, 227],
     [163, 229],
     [163, 233],
     [163, 239],
     [163, 241]]

theorem k3PrefixGroup0155_passes :
    k3PrefixGroup0155.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
