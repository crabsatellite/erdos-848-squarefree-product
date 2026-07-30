import Erdos848.TailSupportDomainChecker

namespace Erdos848.GeneratedTailSupportDomainCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def domainBlock0169 : List Nat :=
  [2704, 2705, 2706, 2707, 2708, 2709, 2710, 2711, 2712, 2713, 2714, 2715, 2716, 2717, 2718, 2719]

theorem domainBlock0169_passes :
    domainBlock0169.all Erdos848.supportPrimeEntryPasses = true := by
  decide

end Erdos848.GeneratedTailSupportDomainCoverage
