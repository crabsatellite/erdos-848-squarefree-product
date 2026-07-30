import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0561
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0562

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0495 :
    Erdos848.PackedWheelPrimeChunkProperty
      495 30030 packedWheelOffsets
      0 5760 1799 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0495_chunk00 period0495_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0495_chunk02 period0495_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0495_chunk04 period0495_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0495_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0495_chunk07 period0495_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
