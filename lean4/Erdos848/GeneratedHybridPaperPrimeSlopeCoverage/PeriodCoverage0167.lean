import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0250
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0251

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0288 :
    Erdos848.PackedWheelPrimeChunkProperty
      288 30030 packedWheelOffsets
      0 5760 1888 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0288_chunk00 period0288_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0288_chunk02 period0288_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0288_chunk04 period0288_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0288_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0288_chunk07 period0288_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
