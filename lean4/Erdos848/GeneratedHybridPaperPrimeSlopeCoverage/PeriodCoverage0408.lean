import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0612
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0613

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0529 :
    Erdos848.PackedWheelPrimeChunkProperty
      529 30030 packedWheelOffsets
      0 5760 1788 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0529_chunk00 period0529_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0529_chunk02 period0529_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0529_chunk04 period0529_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0529_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0529_chunk07 period0529_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
