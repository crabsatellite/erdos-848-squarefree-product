import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0210
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0211

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0261 :
    Erdos848.PackedWheelPrimeChunkProperty
      261 30030 packedWheelOffsets
      0 5760 1916 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0261_chunk00 period0261_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0261_chunk02 period0261_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0261_chunk04 period0261_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0261_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0261_chunk07 period0261_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
