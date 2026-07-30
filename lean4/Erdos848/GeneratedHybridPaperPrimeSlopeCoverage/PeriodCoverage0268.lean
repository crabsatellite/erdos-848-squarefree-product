import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0402
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0403

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0389 :
    Erdos848.PackedWheelPrimeChunkProperty
      389 30030 packedWheelOffsets
      0 5760 1872 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0389_chunk00 period0389_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0389_chunk02 period0389_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0389_chunk04 period0389_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0389_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0389_chunk07 period0389_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
