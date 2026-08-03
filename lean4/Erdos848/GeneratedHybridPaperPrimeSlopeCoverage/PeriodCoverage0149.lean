import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0223
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0224

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0270 :
    Erdos848.PackedWheelPrimeChunkProperty
      270 30030 packedWheelOffsets
      0 5760 1898 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0270_chunk00 period0270_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0270_chunk02 period0270_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0270_chunk04 period0270_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0270_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0270_chunk07 period0270_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
