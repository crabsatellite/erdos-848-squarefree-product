import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0185

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0185 :
    factorRightValid0185 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0185 := by
  unfold factorRightValid0185 factorDataChunk0185
  decide

theorem factorBlock0185 :
    factorDataChunk0185.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0185 factorRoot0185 factorLeft0185 factorRight0185

end Erdos848.GeneratedFiveMillionFactorCoverage
