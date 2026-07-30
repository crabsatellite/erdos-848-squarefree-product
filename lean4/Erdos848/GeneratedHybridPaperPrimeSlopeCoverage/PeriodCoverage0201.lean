import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0301
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0302

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0322 :
    Erdos848.PackedWheelPrimeChunkProperty
      322 30030 packedWheelOffsets
      0 5760 1831 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0322_chunk00 period0322_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0322_chunk02 period0322_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0322_chunk04 period0322_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0322_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0322_chunk07 period0322_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
