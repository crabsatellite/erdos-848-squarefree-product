import Erdos848.TailSupportDomainChecker

namespace Erdos848.GeneratedTailSupportDomainCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def domainBlock0108 : List Nat :=
  [1728, 1729, 1730, 1731, 1732, 1733, 1734, 1735, 1736, 1737, 1738, 1739, 1740, 1741, 1742, 1743]

theorem domainBlock0108_passes :
    domainBlock0108.all Erdos848.supportPrimeEntryPasses = true := by
  decide

end Erdos848.GeneratedTailSupportDomainCoverage
