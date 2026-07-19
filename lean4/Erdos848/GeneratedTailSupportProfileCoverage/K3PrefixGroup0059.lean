import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0059 : List (List ℕ) :=
  [[19, 269],
     [19, 271],
     [19, 277],
     [19, 281],
     [19, 283],
     [19, 293],
     [19, 307],
     [19, 311],
     [19, 313],
     [19, 317],
     [19, 331],
     [19, 337],
     [19, 347],
     [19, 349],
     [19, 353],
     [19, 359]]

theorem k3PrefixGroup0059_passes :
    k3PrefixGroup0059.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
