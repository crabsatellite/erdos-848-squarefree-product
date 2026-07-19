import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0073 : List (List ℕ) :=
  [[29, 241],
     [29, 251],
     [29, 257],
     [29, 263],
     [29, 269],
     [29, 271],
     [29, 277],
     [29, 281],
     [29, 283],
     [29, 293],
     [29, 307],
     [29, 311],
     [29, 313],
     [29, 317],
     [29, 331],
     [29, 337]]

theorem k3PrefixGroup0073_passes :
    k3PrefixGroup0073.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
