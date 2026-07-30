import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0124
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0125

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0204 :
    Erdos848.PackedWheelPrimeChunkProperty
      204 30030 packedWheelOffsets
      0 5760 1923 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0204_chunk00 period0204_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0204_chunk02 period0204_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0204_chunk04 period0204_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0204_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0204_chunk07 period0204_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
