import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0164

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0164 :
    factorRightValid0164 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0164 := by
  unfold factorRightValid0164 factorDataChunk0164
  decide

theorem factorBlock0164 :
    factorDataChunk0164.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0164 factorRoot0164 factorLeft0164 factorRight0164

end Erdos848.GeneratedFiveMillionFactorCoverage
