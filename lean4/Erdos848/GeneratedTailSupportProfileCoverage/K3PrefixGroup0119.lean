import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0119 : List (List ℕ) :=
  [[71, 229],
     [71, 233],
     [71, 239],
     [71, 241],
     [71, 251],
     [71, 257],
     [71, 263],
     [71, 269],
     [71, 271],
     [71, 277],
     [71, 281],
     [71, 283],
     [71, 293],
     [71, 307],
     [71, 311],
     [71, 313]]

theorem k3PrefixGroup0119_passes :
    k3PrefixGroup0119.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
