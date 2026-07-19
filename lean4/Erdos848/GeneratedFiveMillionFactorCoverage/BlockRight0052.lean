import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0052

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0052 :
    factorRightValid0052 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0052 := by
  unfold factorRightValid0052 factorDataChunk0052
  decide

theorem factorBlock0052 :
    factorDataChunk0052.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0052 factorRoot0052 factorLeft0052 factorRight0052

end Erdos848.GeneratedFiveMillionFactorCoverage
