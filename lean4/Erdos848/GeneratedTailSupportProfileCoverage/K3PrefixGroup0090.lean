import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0090 : List (List ℕ) :=
  [[41, 257],
     [41, 263],
     [41, 269],
     [41, 271],
     [41, 277],
     [41, 281],
     [41, 283],
     [41, 293],
     [41, 307],
     [41, 311],
     [41, 313],
     [41, 317],
     [41, 331],
     [41, 337],
     [41, 347],
     [41, 349]]

theorem k3PrefixGroup0090_passes :
    k3PrefixGroup0090.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
