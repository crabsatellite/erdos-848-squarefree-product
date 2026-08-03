import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0418
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0419

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0400 :
    Erdos848.PackedWheelPrimeChunkProperty
      400 30030 packedWheelOffsets
      0 5760 1831 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0400_chunk00 period0400_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0400_chunk02 period0400_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0400_chunk04 period0400_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0400_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0400_chunk07 period0400_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
