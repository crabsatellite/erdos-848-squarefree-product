import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0216
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0217

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0265 :
    Erdos848.PackedWheelPrimeChunkProperty
      265 30030 packedWheelOffsets
      0 5760 1916 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0265_chunk00 period0265_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0265_chunk02 period0265_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0265_chunk04 period0265_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0265_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0265_chunk07 period0265_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
