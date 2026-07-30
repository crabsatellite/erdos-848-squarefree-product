import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0256
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0257

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0292 :
    Erdos848.PackedWheelPrimeChunkProperty
      292 30030 packedWheelOffsets
      0 5760 1870 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0292_chunk00 period0292_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0292_chunk02 period0292_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0292_chunk04 period0292_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0292_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0292_chunk07 period0292_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
