import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0129
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0130

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0207 :
    Erdos848.PackedWheelPrimeChunkProperty
      207 30030 packedWheelOffsets
      0 5760 1908 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0207_chunk00 period0207_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0207_chunk02 period0207_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0207_chunk04 period0207_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0207_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0207_chunk07 period0207_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
