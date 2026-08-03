import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCertificate
import Erdos848.TailPrimeWheelOffsetCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem wheelOffsetCoverage :
    Erdos848.PackedWheelOffsetCoverage
      30030 5760 packedWheelOffsets := by
  intro offset hoffset hcoprime
  exact wheelCertificate.index_of_coprime
    hoffset hcoprime

#print axioms wheelOffsetCoverage

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
