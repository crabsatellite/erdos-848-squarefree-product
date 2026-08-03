import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0424
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0425

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0404 :
    Erdos848.PackedWheelPrimeChunkProperty
      404 30030 packedWheelOffsets
      0 5760 1870 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0404_chunk00 period0404_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0404_chunk02 period0404_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0404_chunk04 period0404_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0404_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0404_chunk07 period0404_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
