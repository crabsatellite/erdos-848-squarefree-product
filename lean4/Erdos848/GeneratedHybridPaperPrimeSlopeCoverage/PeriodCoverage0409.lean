import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0613
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0614

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0530 :
    Erdos848.PackedWheelPrimeChunkProperty
      530 30030 packedWheelOffsets
      0 5760 1822 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0530_chunk00 period0530_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0530_chunk02 period0530_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0530_chunk04 period0530_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0530_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0530_chunk07 period0530_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
