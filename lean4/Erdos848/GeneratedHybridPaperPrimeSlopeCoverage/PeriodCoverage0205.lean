import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0307
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0308

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0326 :
    Erdos848.PackedWheelPrimeChunkProperty
      326 30030 packedWheelOffsets
      0 5760 1895 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0326_chunk00 period0326_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0326_chunk02 period0326_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0326_chunk04 period0326_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0326_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0326_chunk07 period0326_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
