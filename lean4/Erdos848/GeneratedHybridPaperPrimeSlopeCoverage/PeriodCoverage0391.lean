import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0586
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0587

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0512 :
    Erdos848.PackedWheelPrimeChunkProperty
      512 30030 packedWheelOffsets
      0 5760 1774 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0512_chunk00 period0512_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0512_chunk02 period0512_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0512_chunk04 period0512_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0512_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0512_chunk07 period0512_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
