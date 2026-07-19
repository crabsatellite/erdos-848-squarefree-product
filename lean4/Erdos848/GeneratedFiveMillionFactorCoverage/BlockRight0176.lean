import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0176

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0176 :
    factorRightValid0176 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0176 := by
  unfold factorRightValid0176 factorDataChunk0176
  decide

theorem factorBlock0176 :
    factorDataChunk0176.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0176 factorRoot0176 factorLeft0176 factorRight0176

end Erdos848.GeneratedFiveMillionFactorCoverage
