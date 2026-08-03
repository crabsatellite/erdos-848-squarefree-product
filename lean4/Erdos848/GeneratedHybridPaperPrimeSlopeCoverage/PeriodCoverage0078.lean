import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0117
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0118

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0199 :
    Erdos848.PackedWheelPrimeChunkProperty
      199 30030 packedWheelOffsets
      0 5760 1921 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0199_chunk00 period0199_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0199_chunk02 period0199_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0199_chunk04 period0199_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0199_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0199_chunk07 period0199_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
