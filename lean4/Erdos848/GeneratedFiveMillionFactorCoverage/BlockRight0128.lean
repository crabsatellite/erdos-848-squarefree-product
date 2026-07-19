import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0128

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0128 :
    factorRightValid0128 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0128 := by
  unfold factorRightValid0128 factorDataChunk0128
  decide

theorem factorBlock0128 :
    factorDataChunk0128.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0128 factorRoot0128 factorLeft0128 factorRight0128

end Erdos848.GeneratedFiveMillionFactorCoverage
