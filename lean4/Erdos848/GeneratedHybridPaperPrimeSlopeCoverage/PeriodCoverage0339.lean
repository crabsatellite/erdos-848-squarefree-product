import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0508
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0509

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0460 :
    Erdos848.PackedWheelPrimeChunkProperty
      460 30030 packedWheelOffsets
      0 5760 1829 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0460_chunk00 period0460_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0460_chunk02 period0460_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0460_chunk04 period0460_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0460_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0460_chunk07 period0460_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
