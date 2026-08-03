import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0006
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0007

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0125 :
    Erdos848.PackedWheelPrimeChunkProperty
      125 30030 packedWheelOffsets
      0 5760 1938 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0125_chunk00 period0125_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0125_chunk02 period0125_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0125_chunk04 period0125_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0125_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0125_chunk07 period0125_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
