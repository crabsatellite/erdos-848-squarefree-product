import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0426
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0427

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0405 :
    Erdos848.PackedWheelPrimeChunkProperty
      405 30030 packedWheelOffsets
      0 5760 1821 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0405_chunk00 period0405_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0405_chunk02 period0405_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0405_chunk04 period0405_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0405_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0405_chunk07 period0405_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
