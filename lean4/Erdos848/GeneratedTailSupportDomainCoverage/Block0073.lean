import Erdos848.TailSupportDomainChecker

namespace Erdos848.GeneratedTailSupportDomainCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def domainBlock0073 : List Nat :=
  [1168, 1169, 1170, 1171, 1172, 1173, 1174, 1175, 1176, 1177, 1178, 1179, 1180, 1181, 1182, 1183]

theorem domainBlock0073_passes :
    domainBlock0073.all Erdos848.supportPrimeEntryPasses = true := by
  decide

end Erdos848.GeneratedTailSupportDomainCoverage
