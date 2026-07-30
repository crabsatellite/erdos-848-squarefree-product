import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0195
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0196

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0251 :
    Erdos848.PackedWheelPrimeChunkProperty
      251 30030 packedWheelOffsets
      0 5760 1901 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0251_chunk00 period0251_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0251_chunk02 period0251_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0251_chunk04 period0251_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0251_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0251_chunk07 period0251_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
