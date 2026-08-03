import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0096
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0097

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0185 :
    Erdos848.PackedWheelPrimeChunkProperty
      185 30030 packedWheelOffsets
      0 5760 1950 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0185_chunk00 period0185_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0185_chunk02 period0185_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0185_chunk04 period0185_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0185_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0185_chunk07 period0185_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
