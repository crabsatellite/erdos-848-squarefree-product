import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0585
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0586

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0511 :
    Erdos848.PackedWheelPrimeChunkProperty
      511 30030 packedWheelOffsets
      0 5760 1802 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0511_chunk00 period0511_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0511_chunk02 period0511_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0511_chunk04 period0511_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0511_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0511_chunk07 period0511_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
