import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0102
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0103

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0189 :
    Erdos848.PackedWheelPrimeChunkProperty
      189 30030 packedWheelOffsets
      0 5760 1954 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0189_chunk00 period0189_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0189_chunk02 period0189_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0189_chunk04 period0189_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0189_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0189_chunk07 period0189_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
