import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0193
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0194

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0250 :
    Erdos848.PackedWheelPrimeChunkProperty
      250 30030 packedWheelOffsets
      0 5760 1888 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0250_chunk00 period0250_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0250_chunk02 period0250_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0250_chunk04 period0250_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0250_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0250_chunk07 period0250_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
