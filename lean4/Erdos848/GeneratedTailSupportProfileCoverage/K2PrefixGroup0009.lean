import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0009 : List (List ℕ) :=
  [[853],
     [857],
     [859],
     [863],
     [877],
     [881],
     [883],
     [887],
     [907],
     [911],
     [919],
     [929],
     [937],
     [941],
     [947],
     [953]]

theorem k2PrefixGroup0009_passes :
    k2PrefixGroup0009.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
