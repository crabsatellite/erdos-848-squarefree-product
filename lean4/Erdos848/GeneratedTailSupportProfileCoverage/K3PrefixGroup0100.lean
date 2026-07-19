import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0100 : List (List ℕ) :=
  [[47, 281],
     [47, 283],
     [47, 293],
     [47, 307],
     [47, 311],
     [47, 313],
     [47, 317],
     [47, 331],
     [47, 337],
     [47, 347],
     [47, 349],
     [47, 353],
     [47, 359],
     [47, 367],
     [47, 373],
     [47, 379]]

theorem k3PrefixGroup0100_passes :
    k3PrefixGroup0100.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
