import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0571
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0572

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0502 :
    Erdos848.PackedWheelPrimeChunkProperty
      502 30030 packedWheelOffsets
      0 5760 1828 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0502_chunk00 period0502_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0502_chunk02 period0502_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0502_chunk04 period0502_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0502_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0502_chunk07 period0502_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
