import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0211
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0212

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0262 :
    Erdos848.PackedWheelPrimeChunkProperty
      262 30030 packedWheelOffsets
      0 5760 1917 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0262_chunk00 period0262_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0262_chunk02 period0262_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0262_chunk04 period0262_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0262_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0262_chunk07 period0262_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
