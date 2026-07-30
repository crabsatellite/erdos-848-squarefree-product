import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0583
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0584

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0510 :
    Erdos848.PackedWheelPrimeChunkProperty
      510 30030 packedWheelOffsets
      0 5760 1805 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0510_chunk00 period0510_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0510_chunk02 period0510_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0510_chunk04 period0510_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0510_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0510_chunk07 period0510_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
