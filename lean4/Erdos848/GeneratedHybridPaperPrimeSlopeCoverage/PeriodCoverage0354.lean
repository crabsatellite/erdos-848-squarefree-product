import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0531
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0532

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0475 :
    Erdos848.PackedWheelPrimeChunkProperty
      475 30030 packedWheelOffsets
      0 5760 1848 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0475_chunk00 period0475_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0475_chunk02 period0475_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0475_chunk04 period0475_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0475_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0475_chunk07 period0475_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
