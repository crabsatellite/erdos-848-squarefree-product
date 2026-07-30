import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0432
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0433

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0409 :
    Erdos848.PackedWheelPrimeChunkProperty
      409 30030 packedWheelOffsets
      0 5760 1894 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0409_chunk00 period0409_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0409_chunk02 period0409_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0409_chunk04 period0409_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0409_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0409_chunk07 period0409_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
