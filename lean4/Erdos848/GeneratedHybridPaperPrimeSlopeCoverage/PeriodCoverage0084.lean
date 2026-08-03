import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0126
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0127

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0205 :
    Erdos848.PackedWheelPrimeChunkProperty
      205 30030 packedWheelOffsets
      0 5760 1911 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0205_chunk00 period0205_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0205_chunk02 period0205_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0205_chunk04 period0205_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0205_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0205_chunk07 period0205_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
