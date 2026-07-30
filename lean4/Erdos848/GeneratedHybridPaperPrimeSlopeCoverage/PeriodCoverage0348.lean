import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0522
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0523

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0469 :
    Erdos848.PackedWheelPrimeChunkProperty
      469 30030 packedWheelOffsets
      0 5760 1847 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0469_chunk00 period0469_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0469_chunk02 period0469_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0469_chunk04 period0469_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0469_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0469_chunk07 period0469_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
