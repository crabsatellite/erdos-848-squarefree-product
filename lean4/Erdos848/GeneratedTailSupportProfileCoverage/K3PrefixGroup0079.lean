import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0079 : List (List ℕ) :=
  [[31, 251],
     [31, 257],
     [31, 263],
     [31, 269],
     [31, 271],
     [31, 277],
     [31, 281],
     [31, 283],
     [31, 293],
     [31, 307],
     [31, 311],
     [31, 313],
     [31, 317],
     [31, 331],
     [31, 337],
     [31, 347]]

theorem k3PrefixGroup0079_passes :
    k3PrefixGroup0079.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
