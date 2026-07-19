import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0008 : List (List ℕ) :=
  [[739],
     [743],
     [751],
     [757],
     [761],
     [769],
     [773],
     [787],
     [797],
     [809],
     [811],
     [821],
     [823],
     [827],
     [829],
     [839]]

theorem k2PrefixGroup0008_passes :
    k2PrefixGroup0008.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
