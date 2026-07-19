import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0055 : List (List ℕ) :=
  [[17, 659],
     [17, 661],
     [17, 673],
     [17, 677],
     [17, 683],
     [17, 691],
     [17, 701],
     [17, 709],
     [17, 719],
     [17, 727],
     [17, 733],
     [17, 739],
     [17, 743],
     [17, 751],
     [17, 757],
     [17, 761]]

theorem k3PrefixGroup0055_passes :
    k3PrefixGroup0055.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
