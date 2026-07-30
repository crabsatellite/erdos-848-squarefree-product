import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0300
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0301

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0321 :
    Erdos848.PackedWheelPrimeChunkProperty
      321 30030 packedWheelOffsets
      0 5760 1900 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0321_chunk00 period0321_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0321_chunk02 period0321_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0321_chunk04 period0321_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0321_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0321_chunk07 period0321_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
