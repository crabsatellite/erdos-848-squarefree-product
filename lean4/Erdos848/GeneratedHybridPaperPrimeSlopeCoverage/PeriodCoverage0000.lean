import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0000
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0001

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0121 :
    Erdos848.PackedWheelPrimeChunkProperty
      121 30030 packedWheelOffsets
      0 5760 1939 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0121_chunk00 period0121_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0121_chunk02 period0121_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0121_chunk04 period0121_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0121_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0121_chunk07 period0121_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
