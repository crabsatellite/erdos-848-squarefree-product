import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0600
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0601

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0521 :
    Erdos848.PackedWheelPrimeChunkProperty
      521 30030 packedWheelOffsets
      0 5760 1849 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0521_chunk00 period0521_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0521_chunk02 period0521_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0521_chunk04 period0521_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0521_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0521_chunk07 period0521_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
