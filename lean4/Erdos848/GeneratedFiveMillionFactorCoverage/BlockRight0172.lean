import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0172

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0172 :
    factorRightValid0172 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0172 := by
  unfold factorRightValid0172 factorDataChunk0172
  decide

theorem factorBlock0172 :
    factorDataChunk0172.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0172 factorRoot0172 factorLeft0172 factorRight0172

end Erdos848.GeneratedFiveMillionFactorCoverage
