import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0156
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0157

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0225 :
    Erdos848.PackedWheelPrimeChunkProperty
      225 30030 packedWheelOffsets
      0 5760 1897 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0225_chunk00 period0225_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0225_chunk02 period0225_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0225_chunk04 period0225_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0225_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0225_chunk07 period0225_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
