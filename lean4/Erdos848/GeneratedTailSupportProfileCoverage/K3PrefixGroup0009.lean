import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0009 : List (List ℕ) :=
  [[3, 857],
     [3, 859],
     [3, 863],
     [3, 877],
     [3, 881],
     [3, 883],
     [3, 887],
     [3, 907],
     [3, 911],
     [3, 919],
     [3, 929],
     [3, 937],
     [3, 941],
     [3, 947],
     [3, 953],
     [3, 967]]

theorem k3PrefixGroup0009_passes :
    k3PrefixGroup0009.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
