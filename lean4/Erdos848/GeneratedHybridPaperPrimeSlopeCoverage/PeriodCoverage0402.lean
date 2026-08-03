import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0603
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0604

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0523 :
    Erdos848.PackedWheelPrimeChunkProperty
      523 30030 packedWheelOffsets
      0 5760 1798 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0523_chunk00 period0523_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0523_chunk02 period0523_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0523_chunk04 period0523_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0523_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0523_chunk07 period0523_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
