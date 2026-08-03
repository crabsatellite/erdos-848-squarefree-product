import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0214
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0215

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0264 :
    Erdos848.PackedWheelPrimeChunkProperty
      264 30030 packedWheelOffsets
      0 5760 1878 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0264_chunk00 period0264_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0264_chunk02 period0264_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0264_chunk04 period0264_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0264_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0264_chunk07 period0264_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
