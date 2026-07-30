import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0123
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0124

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0203 :
    Erdos848.PackedWheelPrimeChunkProperty
      203 30030 packedWheelOffsets
      0 5760 1937 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0203_chunk00 period0203_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0203_chunk02 period0203_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0203_chunk04 period0203_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0203_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0203_chunk07 period0203_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
