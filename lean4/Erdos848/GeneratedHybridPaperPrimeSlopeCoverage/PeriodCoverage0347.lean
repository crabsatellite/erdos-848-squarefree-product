import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0520
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0521

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0468 :
    Erdos848.PackedWheelPrimeChunkProperty
      468 30030 packedWheelOffsets
      0 5760 1836 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0468_chunk00 period0468_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0468_chunk02 period0468_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0468_chunk04 period0468_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0468_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0468_chunk07 period0468_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
