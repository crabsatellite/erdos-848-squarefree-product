import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0273
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0274

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0303 :
    Erdos848.PackedWheelPrimeChunkProperty
      303 30030 packedWheelOffsets
      0 5760 1866 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0303_chunk00 period0303_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0303_chunk02 period0303_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0303_chunk04 period0303_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0303_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0303_chunk07 period0303_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
