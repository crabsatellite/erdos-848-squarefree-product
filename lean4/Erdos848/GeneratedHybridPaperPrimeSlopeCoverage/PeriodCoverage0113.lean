import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0169
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0170

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0234 :
    Erdos848.PackedWheelPrimeChunkProperty
      234 30030 packedWheelOffsets
      0 5760 1953 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0234_chunk00 period0234_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0234_chunk02 period0234_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0234_chunk04 period0234_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0234_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0234_chunk07 period0234_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
