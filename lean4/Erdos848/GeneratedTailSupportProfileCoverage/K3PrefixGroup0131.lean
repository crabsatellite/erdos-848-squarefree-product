import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0131 : List (List ℕ) :=
  [[89, 223],
     [89, 227],
     [89, 229],
     [89, 233],
     [89, 239],
     [89, 241],
     [89, 251],
     [89, 257],
     [89, 263],
     [89, 269],
     [89, 271],
     [89, 277],
     [89, 281],
     [89, 283],
     [89, 293],
     [89, 307]]

theorem k3PrefixGroup0131_passes :
    k3PrefixGroup0131.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
