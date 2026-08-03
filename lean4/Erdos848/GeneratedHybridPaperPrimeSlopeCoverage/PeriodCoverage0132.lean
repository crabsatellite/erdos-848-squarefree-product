import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0198
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0199

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0253 :
    Erdos848.PackedWheelPrimeChunkProperty
      253 30030 packedWheelOffsets
      0 5760 1919 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0253_chunk00 period0253_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0253_chunk02 period0253_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0253_chunk04 period0253_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0253_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0253_chunk07 period0253_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
