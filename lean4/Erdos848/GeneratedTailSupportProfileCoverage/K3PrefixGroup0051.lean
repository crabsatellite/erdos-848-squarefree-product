import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0051 : List (List ℕ) :=
  [[17, 263],
     [17, 269],
     [17, 271],
     [17, 277],
     [17, 281],
     [17, 283],
     [17, 293],
     [17, 307],
     [17, 311],
     [17, 313],
     [17, 317],
     [17, 331],
     [17, 337],
     [17, 347],
     [17, 349],
     [17, 353]]

theorem k3PrefixGroup0051_passes :
    k3PrefixGroup0051.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
