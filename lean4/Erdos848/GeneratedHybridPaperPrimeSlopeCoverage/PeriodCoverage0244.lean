import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0366
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0367

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0365 :
    Erdos848.PackedWheelPrimeChunkProperty
      365 30030 packedWheelOffsets
      0 5760 1835 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0365_chunk00 period0365_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0365_chunk02 period0365_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0365_chunk04 period0365_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0365_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0365_chunk07 period0365_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
