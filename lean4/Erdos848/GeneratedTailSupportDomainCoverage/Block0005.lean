import Erdos848.TailSupportDomainChecker

namespace Erdos848.GeneratedTailSupportDomainCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def domainBlock0005 : List Nat :=
  [80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95]

theorem domainBlock0005_passes :
    domainBlock0005.all Erdos848.supportPrimeEntryPasses = true := by
  decide

end Erdos848.GeneratedTailSupportDomainCoverage
