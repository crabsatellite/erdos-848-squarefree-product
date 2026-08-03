import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0204
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0205

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0257 :
    Erdos848.PackedWheelPrimeChunkProperty
      257 30030 packedWheelOffsets
      0 5760 1860 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0257_chunk00 period0257_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0257_chunk02 period0257_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0257_chunk04 period0257_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0257_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0257_chunk07 period0257_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
