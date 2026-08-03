import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0412
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0413

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0396 :
    Erdos848.PackedWheelPrimeChunkProperty
      396 30030 packedWheelOffsets
      0 5760 1840 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0396_chunk00 period0396_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0396_chunk02 period0396_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0396_chunk04 period0396_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0396_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0396_chunk07 period0396_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
