import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0304
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0305

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0324 :
    Erdos848.PackedWheelPrimeChunkProperty
      324 30030 packedWheelOffsets
      0 5760 1875 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0324_chunk00 period0324_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0324_chunk02 period0324_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0324_chunk04 period0324_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0324_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0324_chunk07 period0324_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
