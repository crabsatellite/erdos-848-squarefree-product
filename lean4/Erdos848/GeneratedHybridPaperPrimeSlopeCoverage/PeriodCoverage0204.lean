import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0306
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0307

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0325 :
    Erdos848.PackedWheelPrimeChunkProperty
      325 30030 packedWheelOffsets
      0 5760 1836 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0325_chunk00 period0325_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0325_chunk02 period0325_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0325_chunk04 period0325_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0325_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0325_chunk07 period0325_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
