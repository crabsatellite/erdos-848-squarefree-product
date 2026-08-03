import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0430
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0431

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0408 :
    Erdos848.PackedWheelPrimeChunkProperty
      408 30030 packedWheelOffsets
      0 5760 1842 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0408_chunk00 period0408_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0408_chunk02 period0408_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0408_chunk04 period0408_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0408_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0408_chunk07 period0408_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
