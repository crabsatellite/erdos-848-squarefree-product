import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0153
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0154

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0223 :
    Erdos848.PackedWheelPrimeChunkProperty
      223 30030 packedWheelOffsets
      0 5760 1946 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0223_chunk00 period0223_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0223_chunk02 period0223_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0223_chunk04 period0223_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0223_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0223_chunk07 period0223_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
