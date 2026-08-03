import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0394
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0395

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0384 :
    Erdos848.PackedWheelPrimeChunkProperty
      384 30030 packedWheelOffsets
      0 5760 1869 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0384_chunk00 period0384_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0384_chunk02 period0384_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0384_chunk04 period0384_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0384_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0384_chunk07 period0384_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
