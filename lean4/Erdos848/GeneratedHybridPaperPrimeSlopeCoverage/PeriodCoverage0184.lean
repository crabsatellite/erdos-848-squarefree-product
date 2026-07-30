import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0276
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0277

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0305 :
    Erdos848.PackedWheelPrimeChunkProperty
      305 30030 packedWheelOffsets
      0 5760 1890 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0305_chunk00 period0305_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0305_chunk02 period0305_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0305_chunk04 period0305_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0305_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0305_chunk07 period0305_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
