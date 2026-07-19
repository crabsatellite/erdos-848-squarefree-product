import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0102

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0102 :
    factorRightValid0102 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0102 := by
  unfold factorRightValid0102 factorDataChunk0102
  decide

theorem factorBlock0102 :
    factorDataChunk0102.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0102 factorRoot0102 factorLeft0102 factorRight0102

end Erdos848.GeneratedFiveMillionFactorCoverage
