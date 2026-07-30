import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0567
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0568

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0499 :
    Erdos848.PackedWheelPrimeChunkProperty
      499 30030 packedWheelOffsets
      0 5760 1811 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0499_chunk00 period0499_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0499_chunk02 period0499_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0499_chunk04 period0499_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0499_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0499_chunk07 period0499_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
