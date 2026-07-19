import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0037

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0037 :
    factorRightValid0037 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0037 := by
  unfold factorRightValid0037 factorDataChunk0037
  decide

theorem factorBlock0037 :
    factorDataChunk0037.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0037 factorRoot0037 factorLeft0037 factorRight0037

end Erdos848.GeneratedFiveMillionFactorCoverage
