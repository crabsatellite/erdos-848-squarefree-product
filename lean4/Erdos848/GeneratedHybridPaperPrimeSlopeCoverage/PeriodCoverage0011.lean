import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0016
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0017

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0132 :
    Erdos848.PackedWheelPrimeChunkProperty
      132 30030 packedWheelOffsets
      0 5760 1960 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0132_chunk00 period0132_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0132_chunk02 period0132_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0132_chunk04 period0132_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0132_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0132_chunk07 period0132_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
