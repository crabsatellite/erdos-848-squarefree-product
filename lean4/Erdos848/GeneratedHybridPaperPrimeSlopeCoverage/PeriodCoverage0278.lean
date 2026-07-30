import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0417
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0418

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0399 :
    Erdos848.PackedWheelPrimeChunkProperty
      399 30030 packedWheelOffsets
      0 5760 1842 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0399_chunk00 period0399_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0399_chunk02 period0399_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0399_chunk04 period0399_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0399_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0399_chunk07 period0399_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
