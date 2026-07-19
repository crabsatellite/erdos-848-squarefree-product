import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0170

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0170 :
    factorRightValid0170 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0170 := by
  unfold factorRightValid0170 factorDataChunk0170
  decide

theorem factorBlock0170 :
    factorDataChunk0170.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0170 factorRoot0170 factorLeft0170 factorRight0170

end Erdos848.GeneratedFiveMillionFactorCoverage
