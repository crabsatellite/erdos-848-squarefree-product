import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0280
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0281

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0308 :
    Erdos848.PackedWheelPrimeChunkProperty
      308 30030 packedWheelOffsets
      0 5760 1880 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0308_chunk00 period0308_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0308_chunk02 period0308_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0308_chunk04 period0308_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0308_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0308_chunk07 period0308_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
