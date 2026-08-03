import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0483
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0484

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0443 :
    Erdos848.PackedWheelPrimeChunkProperty
      443 30030 packedWheelOffsets
      0 5760 1830 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0443_chunk00 period0443_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0443_chunk02 period0443_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0443_chunk04 period0443_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0443_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0443_chunk07 period0443_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
