import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0087

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0087 :
    factorRightValid0087 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0087 := by
  unfold factorRightValid0087 factorDataChunk0087
  decide

theorem factorBlock0087 :
    factorDataChunk0087.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0087 factorRoot0087 factorLeft0087 factorRight0087

end Erdos848.GeneratedFiveMillionFactorCoverage
