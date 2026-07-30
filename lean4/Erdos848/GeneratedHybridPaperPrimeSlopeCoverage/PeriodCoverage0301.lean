import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0451
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0452

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0422 :
    Erdos848.PackedWheelPrimeChunkProperty
      422 30030 packedWheelOffsets
      0 5760 1850 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0422_chunk00 period0422_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0422_chunk02 period0422_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0422_chunk04 period0422_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0422_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0422_chunk07 period0422_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
