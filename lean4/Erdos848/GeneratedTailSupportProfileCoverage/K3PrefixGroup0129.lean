import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0129 : List (List ℕ) :=
  [[83, 281],
     [83, 283],
     [83, 293],
     [83, 307],
     [83, 311],
     [83, 313],
     [83, 317],
     [83, 331],
     [83, 337],
     [89, 97],
     [89, 101],
     [89, 103],
     [89, 107],
     [89, 109],
     [89, 113],
     [89, 127]]

theorem k3PrefixGroup0129_passes :
    k3PrefixGroup0129.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
