import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0502
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0503

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0456 :
    Erdos848.PackedWheelPrimeChunkProperty
      456 30030 packedWheelOffsets
      0 5760 1829 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0456_chunk00 period0456_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0456_chunk02 period0456_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0456_chunk04 period0456_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0456_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0456_chunk07 period0456_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
