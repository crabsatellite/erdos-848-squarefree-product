import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0138

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0138 :
    factorRightValid0138 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0138 := by
  unfold factorRightValid0138 factorDataChunk0138
  decide

theorem factorBlock0138 :
    factorDataChunk0138.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0138 factorRoot0138 factorLeft0138 factorRight0138

end Erdos848.GeneratedFiveMillionFactorCoverage
