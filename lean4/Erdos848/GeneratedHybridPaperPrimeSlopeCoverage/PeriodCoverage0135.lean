import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0202
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0203

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0256 :
    Erdos848.PackedWheelPrimeChunkProperty
      256 30030 packedWheelOffsets
      0 5760 1899 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0256_chunk00 period0256_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0256_chunk02 period0256_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0256_chunk04 period0256_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0256_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0256_chunk07 period0256_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
