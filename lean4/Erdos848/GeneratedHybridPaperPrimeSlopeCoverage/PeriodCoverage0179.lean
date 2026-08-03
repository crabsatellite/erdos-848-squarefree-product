import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0268
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0269

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0300 :
    Erdos848.PackedWheelPrimeChunkProperty
      300 30030 packedWheelOffsets
      0 5760 1845 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0300_chunk00 period0300_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0300_chunk02 period0300_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0300_chunk04 period0300_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0300_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0300_chunk07 period0300_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
