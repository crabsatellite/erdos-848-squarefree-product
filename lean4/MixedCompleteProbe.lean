import Erdos848.TailGlobalMixedSupportBridge
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainCertificate

namespace Erdos848

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

example :
    globalMixedKernelSupportPrimes =
      GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes.take 1134 := by
  rfl

#check List.prod_erase
#check List.length_erase_of_mem
#check List.Nodup.mem_erase_iff

end Erdos848
