import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0013
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0014

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0130 :
    Erdos848.PackedWheelPrimeChunkProperty
      130 30030 packedWheelOffsets
      0 5760 1994 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0130_chunk00 period0130_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0130_chunk02 period0130_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0130_chunk04 period0130_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0130_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0130_chunk07 period0130_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
