import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0111
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0112

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0195 :
    Erdos848.PackedWheelPrimeChunkProperty
      195 30030 packedWheelOffsets
      0 5760 1937 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0195_chunk00 period0195_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0195_chunk02 period0195_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0195_chunk04 period0195_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0195_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0195_chunk07 period0195_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
