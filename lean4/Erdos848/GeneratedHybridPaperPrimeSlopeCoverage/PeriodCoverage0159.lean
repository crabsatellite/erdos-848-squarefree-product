import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0238
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0239

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0280 :
    Erdos848.PackedWheelPrimeChunkProperty
      280 30030 packedWheelOffsets
      0 5760 1870 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0280_chunk00 period0280_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0280_chunk02 period0280_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0280_chunk04 period0280_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0280_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0280_chunk07 period0280_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
