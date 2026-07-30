import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0199
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0200

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0254 :
    Erdos848.PackedWheelPrimeChunkProperty
      254 30030 packedWheelOffsets
      0 5760 1879 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0254_chunk00 period0254_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0254_chunk02 period0254_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0254_chunk04 period0254_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0254_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0254_chunk07 period0254_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
