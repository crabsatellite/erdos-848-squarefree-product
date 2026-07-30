import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0313
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0314

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0330 :
    Erdos848.PackedWheelPrimeChunkProperty
      330 30030 packedWheelOffsets
      0 5760 1861 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0330_chunk00 period0330_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0330_chunk02 period0330_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0330_chunk04 period0330_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0330_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0330_chunk07 period0330_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
