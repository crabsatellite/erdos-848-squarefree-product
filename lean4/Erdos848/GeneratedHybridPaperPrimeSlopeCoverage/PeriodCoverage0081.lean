import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0121
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0122

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0202 :
    Erdos848.PackedWheelPrimeChunkProperty
      202 30030 packedWheelOffsets
      0 5760 1913 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0202_chunk00 period0202_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0202_chunk02 period0202_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0202_chunk04 period0202_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0202_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0202_chunk07 period0202_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
