import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0408
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0409

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0393 :
    Erdos848.PackedWheelPrimeChunkProperty
      393 30030 packedWheelOffsets
      0 5760 1840 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0393_chunk00 period0393_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0393_chunk02 period0393_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0393_chunk04 period0393_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0393_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0393_chunk07 period0393_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
