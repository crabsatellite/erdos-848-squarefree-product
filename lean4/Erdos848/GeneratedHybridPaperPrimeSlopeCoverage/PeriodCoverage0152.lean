import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0228
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0229

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0273 :
    Erdos848.PackedWheelPrimeChunkProperty
      273 30030 packedWheelOffsets
      0 5760 1913 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0273_chunk00 period0273_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0273_chunk02 period0273_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0273_chunk04 period0273_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0273_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0273_chunk07 period0273_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
