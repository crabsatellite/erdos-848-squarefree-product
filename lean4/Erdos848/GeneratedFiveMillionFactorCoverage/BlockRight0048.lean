import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0048

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0048 :
    factorRightValid0048 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0048 := by
  unfold factorRightValid0048 factorDataChunk0048
  decide

theorem factorBlock0048 :
    factorDataChunk0048.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0048 factorRoot0048 factorLeft0048 factorRight0048

end Erdos848.GeneratedFiveMillionFactorCoverage
