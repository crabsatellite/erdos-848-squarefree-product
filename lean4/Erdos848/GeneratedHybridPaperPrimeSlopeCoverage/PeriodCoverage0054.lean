import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0081
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0082

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0175 :
    Erdos848.PackedWheelPrimeChunkProperty
      175 30030 packedWheelOffsets
      0 5760 1913 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0175_chunk00 period0175_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0175_chunk02 period0175_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0175_chunk04 period0175_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0175_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0175_chunk07 period0175_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
