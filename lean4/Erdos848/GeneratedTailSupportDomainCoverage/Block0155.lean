import Erdos848.TailSupportDomainChecker

namespace Erdos848.GeneratedTailSupportDomainCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def domainBlock0155 : List Nat :=
  [2480, 2481, 2482, 2483, 2484, 2485, 2486, 2487, 2488, 2489, 2490, 2491, 2492, 2493, 2494, 2495]

theorem domainBlock0155_passes :
    domainBlock0155.all Erdos848.supportPrimeEntryPasses = true := by
  decide

end Erdos848.GeneratedTailSupportDomainCoverage
