import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0456
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0457

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0425 :
    Erdos848.PackedWheelPrimeChunkProperty
      425 30030 packedWheelOffsets
      0 5760 1826 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0425_chunk00 period0425_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0425_chunk02 period0425_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0425_chunk04 period0425_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0425_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0425_chunk07 period0425_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
