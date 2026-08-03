import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0423
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0424

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0403 :
    Erdos848.PackedWheelPrimeChunkProperty
      403 30030 packedWheelOffsets
      0 5760 1846 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0403_chunk00 period0403_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0403_chunk02 period0403_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0403_chunk04 period0403_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0403_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0403_chunk07 period0403_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
