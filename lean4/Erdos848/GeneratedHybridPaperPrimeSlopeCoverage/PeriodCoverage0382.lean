import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0573
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0574

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0503 :
    Erdos848.PackedWheelPrimeChunkProperty
      503 30030 packedWheelOffsets
      0 5760 1805 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0503_chunk00 period0503_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0503_chunk02 period0503_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0503_chunk04 period0503_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0503_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0503_chunk07 period0503_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
