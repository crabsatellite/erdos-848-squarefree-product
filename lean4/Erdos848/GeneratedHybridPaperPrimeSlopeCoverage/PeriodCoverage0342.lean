import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0513
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0514

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0463 :
    Erdos848.PackedWheelPrimeChunkProperty
      463 30030 packedWheelOffsets
      0 5760 1815 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0463_chunk00 period0463_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0463_chunk02 period0463_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0463_chunk04 period0463_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0463_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0463_chunk07 period0463_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
