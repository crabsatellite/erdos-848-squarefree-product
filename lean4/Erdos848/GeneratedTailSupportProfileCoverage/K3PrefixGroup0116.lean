import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0116 : List (List ℕ) :=
  [[67, 271],
     [67, 277],
     [67, 281],
     [67, 283],
     [67, 293],
     [67, 307],
     [67, 311],
     [67, 313],
     [67, 317],
     [67, 331],
     [67, 337],
     [67, 347],
     [67, 349],
     [67, 353],
     [67, 359],
     [67, 367]]

theorem k3PrefixGroup0116_passes :
    k3PrefixGroup0116.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
