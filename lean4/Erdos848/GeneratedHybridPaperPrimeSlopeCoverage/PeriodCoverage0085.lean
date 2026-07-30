import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0127
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0128

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0206 :
    Erdos848.PackedWheelPrimeChunkProperty
      206 30030 packedWheelOffsets
      0 5760 1917 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0206_chunk00 period0206_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0206_chunk02 period0206_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0206_chunk04 period0206_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0206_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0206_chunk07 period0206_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
