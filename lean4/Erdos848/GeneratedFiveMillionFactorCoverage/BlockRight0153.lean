import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0153

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0153 :
    factorRightValid0153 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0153 := by
  unfold factorRightValid0153 factorDataChunk0153
  decide

theorem factorBlock0153 :
    factorDataChunk0153.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0153 factorRoot0153 factorLeft0153 factorRight0153

end Erdos848.GeneratedFiveMillionFactorCoverage
