import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0514
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0515

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0464 :
    Erdos848.PackedWheelPrimeChunkProperty
      464 30030 packedWheelOffsets
      0 5760 1794 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0464_chunk00 period0464_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0464_chunk02 period0464_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0464_chunk04 period0464_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0464_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0464_chunk07 period0464_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
