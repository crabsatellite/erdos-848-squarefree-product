import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0106
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0107

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0192 :
    Erdos848.PackedWheelPrimeChunkProperty
      192 30030 packedWheelOffsets
      0 5760 1897 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0192_chunk00 period0192_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0192_chunk02 period0192_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0192_chunk04 period0192_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0192_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0192_chunk07 period0192_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
