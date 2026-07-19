import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0038 : List (List ℕ) :=
  [[11, 839],
     [11, 853],
     [11, 857],
     [11, 859],
     [11, 863],
     [11, 877],
     [11, 881],
     [11, 883],
     [11, 887],
     [11, 907],
     [11, 911],
     [11, 919],
     [11, 929],
     [11, 937],
     [11, 941],
     [11, 947]]

theorem k3PrefixGroup0038_passes :
    k3PrefixGroup0038.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
