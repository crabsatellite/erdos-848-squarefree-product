import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0582
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.ChunkBatch0583

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem periodCoverage0509 :
    Erdos848.PackedWheelPrimeChunkProperty
      509 30030 packedWheelOffsets
      0 5760 1817 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0509_chunk00 period0509_chunk01) (Erdos848.PackedWheelPrimeChunkProperty.append period0509_chunk02 period0509_chunk03)) (Erdos848.PackedWheelPrimeChunkProperty.append (Erdos848.PackedWheelPrimeChunkProperty.append period0509_chunk04 period0509_chunk05) (Erdos848.PackedWheelPrimeChunkProperty.append period0509_chunk06 (Erdos848.PackedWheelPrimeChunkProperty.append period0509_chunk07 period0509_chunk08))))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
