import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0148
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0149

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0220 :
    Erdos848.PackedWheelPrimeChunkProperty
      220 30030 packedWheelOffsets
      0 5760 1894 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0220_chunk00 period0220_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0220_chunk02 period0220_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0220_chunk04 period0220_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0220_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0220_chunk07 period0220_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
