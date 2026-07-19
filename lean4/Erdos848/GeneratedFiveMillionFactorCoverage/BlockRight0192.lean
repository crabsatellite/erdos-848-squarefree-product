import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0192

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0192 :
    factorRightValid0192 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0192 := by
  unfold factorRightValid0192 factorDataChunk0192
  decide

theorem factorBlock0192 :
    factorDataChunk0192.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0192 factorRoot0192 factorLeft0192 factorRight0192

end Erdos848.GeneratedFiveMillionFactorCoverage
