import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0088
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0089

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0180 :
    Erdos848.PackedWheelPrimeChunkProperty
      180 30030 packedWheelOffsets
      0 5760 1937 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0180_chunk00 period0180_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0180_chunk02 period0180_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0180_chunk04 period0180_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0180_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0180_chunk07 period0180_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
