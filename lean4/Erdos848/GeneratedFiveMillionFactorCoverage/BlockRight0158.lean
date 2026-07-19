import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0158

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0158 :
    factorRightValid0158 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0158 := by
  unfold factorRightValid0158 factorDataChunk0158
  decide

theorem factorBlock0158 :
    factorDataChunk0158.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0158 factorRoot0158 factorLeft0158 factorRight0158

end Erdos848.GeneratedFiveMillionFactorCoverage
