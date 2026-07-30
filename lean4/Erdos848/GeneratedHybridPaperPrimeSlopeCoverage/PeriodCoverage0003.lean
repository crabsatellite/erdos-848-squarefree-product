import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0004
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0005

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0124 :
    Erdos848.PackedWheelPrimeChunkProperty
      124 30030 packedWheelOffsets
      0 5760 2013 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0124_chunk00 period0124_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0124_chunk02 period0124_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0124_chunk04 period0124_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0124_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0124_chunk07 period0124_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
