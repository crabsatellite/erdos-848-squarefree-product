import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0154

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0154 :
    factorRightValid0154 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0154 := by
  unfold factorRightValid0154 factorDataChunk0154
  decide

theorem factorBlock0154 :
    factorDataChunk0154.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0154 factorRoot0154 factorLeft0154 factorRight0154

end Erdos848.GeneratedFiveMillionFactorCoverage
