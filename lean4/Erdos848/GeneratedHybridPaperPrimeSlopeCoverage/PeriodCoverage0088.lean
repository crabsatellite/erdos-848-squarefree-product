import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0132
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0133

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0209 :
    Erdos848.PackedWheelPrimeChunkProperty
      209 30030 packedWheelOffsets
      0 5760 1976 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0209_chunk00 period0209_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0209_chunk02 period0209_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0209_chunk04 period0209_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0209_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0209_chunk07 period0209_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
