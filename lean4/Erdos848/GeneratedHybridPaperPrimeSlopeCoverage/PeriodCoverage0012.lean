import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0018
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0019

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0133 :
    Erdos848.PackedWheelPrimeChunkProperty
      133 30030 packedWheelOffsets
      0 5760 1970 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0133_chunk00 period0133_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0133_chunk02 period0133_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0133_chunk04 period0133_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0133_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0133_chunk07 period0133_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
