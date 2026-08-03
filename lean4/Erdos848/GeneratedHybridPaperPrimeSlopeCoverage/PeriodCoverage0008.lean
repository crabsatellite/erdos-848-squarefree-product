import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0012
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0013

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0129 :
    Erdos848.PackedWheelPrimeChunkProperty
      129 30030 packedWheelOffsets
      0 5760 1983 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0129_chunk00 period0129_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0129_chunk02 period0129_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0129_chunk04 period0129_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0129_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0129_chunk07 period0129_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
