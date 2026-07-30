import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0429
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0430

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0407 :
    Erdos848.PackedWheelPrimeChunkProperty
      407 30030 packedWheelOffsets
      0 5760 1833 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0407_chunk00 period0407_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0407_chunk02 period0407_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0407_chunk04 period0407_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0407_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0407_chunk07 period0407_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
