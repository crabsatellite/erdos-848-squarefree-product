import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0130
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0131

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0208 :
    Erdos848.PackedWheelPrimeChunkProperty
      208 30030 packedWheelOffsets
      0 5760 1933 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0208_chunk00 period0208_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0208_chunk02 period0208_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0208_chunk04 period0208_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0208_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0208_chunk07 period0208_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
