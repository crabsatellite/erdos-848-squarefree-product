import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0044

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0044 :
    factorRightValid0044 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0044 := by
  unfold factorRightValid0044 factorDataChunk0044
  decide

theorem factorBlock0044 :
    factorDataChunk0044.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0044 factorRoot0044 factorLeft0044 factorRight0044

end Erdos848.GeneratedFiveMillionFactorCoverage
