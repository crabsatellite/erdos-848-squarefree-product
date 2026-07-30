import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0108
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0109

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0193 :
    Erdos848.PackedWheelPrimeChunkProperty
      193 30030 packedWheelOffsets
      0 5760 1928 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0193_chunk00 period0193_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0193_chunk02 period0193_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0193_chunk04 period0193_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0193_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0193_chunk07 period0193_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
