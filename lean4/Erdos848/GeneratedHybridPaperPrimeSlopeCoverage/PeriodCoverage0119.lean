import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0178
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0179

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0240 :
    Erdos848.PackedWheelPrimeChunkProperty
      240 30030 packedWheelOffsets
      0 5760 1886 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0240_chunk00 period0240_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0240_chunk02 period0240_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0240_chunk04 period0240_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0240_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0240_chunk07 period0240_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
