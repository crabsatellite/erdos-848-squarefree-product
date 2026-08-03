import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0601
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0602

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0522 :
    Erdos848.PackedWheelPrimeChunkProperty
      522 30030 packedWheelOffsets
      0 5760 1799 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0522_chunk00 period0522_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0522_chunk02 period0522_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0522_chunk04 period0522_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0522_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0522_chunk07 period0522_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
